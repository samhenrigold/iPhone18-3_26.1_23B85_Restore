BOOL mlir::emitOptionalError<char const(&)[49]>(void **a1, char a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v4[16] = 257;
  emitDiag(a1, 2, v4, &v5);
  if (v5)
  {
    mlir::Diagnostic::operator<<<49ul>(v6, "expected all input tensors to have the same rank");
  }

  v2 = (v6[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v5);
  return v2;
}

BOOL mlir::ODIE::Compiler::CoreML::ConcatOp::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v36[2] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase::ConcatOpGenericAdaptorBase(v32, a6, a9, a10);
  v33 = a4;
  v34 = a5;
  v16 = a4 & 0xFFFFFFFFFFFFFFF8;
  if ((a4 & 6) != 0 || !v16)
  {
    if ((a4 & 6) == 2 && v16)
    {
      v16 = *(v16 + 24);
    }
  }

  else
  {
    v16 = *v16;
  }

  if ((~*(v16 + 8) & 7) == 0)
  {
    v16 = 0;
  }

  if (!v16)
  {
    return 1;
  }

  v17 = *(v16 + 8) & 7;
  if (v17 == 6)
  {
    v18 = v16 + 24 * *(v16 + 16);
    v19 = v18 + 120;
    if (v18 == -120)
    {
      return 1;
    }
  }

  else
  {
    v19 = v16 + 16 * v17 + 16;
  }

  v20 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  v21 = (*(**(v19 + 48) + 32))(*(v19 + 48), v20);
  if (!v21)
  {
    return 1;
  }

  __src = v31;
  v30 = 0x600000000;
  if (mlir::ODIE::Compiler::CoreML::ConcatOp::inferReturnTypes(v21, a2, a3, a4, a5, a6, v22, v23, a9, a10, &__src))
  {
    v24 = a11[2];
    v36[0] = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v36[1] = v24;
    v35[0] = __src & 0xFFFFFFFFFFFFFFF9 | 2;
    v35[1] = v30;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v36, v35))
    {
      v25 = __src;
      v26 = __src + 8 * v30;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v25, v26);
      v27 = 1;
    }

    else
    {
      v27 = mlir::emitOptionalError<char const(&)[56]>(a2, a3, "inferred return types did not match actual return types");
    }
  }

  else
  {
    v27 = 0;
  }

  if (__src != v31)
  {
    free(__src);
  }

  return v27;
}

BOOL mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(void **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, char a7)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v25[0] = a3;
  v25[1] = a4;
  v12 = (a3 & 0xFFFFFFFFFFFFFFF8);
  if ((a3 & 6) != 0 || !v12)
  {
    if ((a3 & 6) == 2 && v12)
    {
      v12 = v12[3];
    }
  }

  else
  {
    v12 = *v12;
  }

  v13 = (v12[1] & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = *v13;
    v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v16 = mlir::detail::InterfaceMap::lookup(v14 + 8, v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(mlir::ValueRange::dereference_iterator(v25, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = *v17;
    v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v18 + 8, v19);
  }

  if ((a7 & 1) == 0)
  {
    a6 = (*(v16 + 8))(v16, v13);
  }

  BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v13, v17, a6);
  if (BroadcastedType)
  {
    v21 = BroadcastedType;
    v22 = *BroadcastedType;
    v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v22 + 8, v23);
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a5, v21);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[46]>(a1, a2, "Expected inputs to have broadcastable shapes.");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v16))
  {
    v12 = __src;
    v13 = __src + 8 * v16;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v17)
  {
    free(__src);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::DivideOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v16))
  {
    v12 = __src;
    v13 = __src + 8 * v16;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v17)
  {
    free(__src);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::FloorDivideOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v16))
  {
    v12 = __src;
    v13 = __src + 8 * v16;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v17)
  {
    free(__src);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::MaximumOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v16))
  {
    v12 = __src;
    v13 = __src + 8 * v16;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v17)
  {
    free(__src);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::MinimumOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v16))
  {
    v12 = __src;
    v13 = __src + 8 * v16;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v17)
  {
    free(__src);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuloOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v16))
  {
    v12 = __src;
    v13 = __src + 8 * v16;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v17)
  {
    free(__src);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::MulOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v16))
  {
    v12 = __src;
    v13 = __src + 8 * v16;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v17)
  {
    free(__src);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::PowOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v16))
  {
    v12 = __src;
    v13 = __src + 8 * v16;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v17)
  {
    free(__src);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::SubOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v16))
  {
    v12 = __src;
    v13 = __src + 8 * v16;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v17)
  {
    free(__src);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseAndOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v16))
  {
    v12 = __src;
    v13 = __src + 8 * v16;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v17)
  {
    free(__src);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseOrOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v16))
  {
    v12 = __src;
    v13 = __src + 8 * v16;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v17)
  {
    free(__src);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseXorOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v16))
  {
    v12 = __src;
    v13 = __src + 8 * v16;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v17)
  {
    free(__src);
  }

  return v11;
}

BOOL mlir::ODIE::Compiler::CoreML::LogOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::LogOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::LogOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::SiluOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SiluOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::SiluOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::SinOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SinOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::SinOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::CosOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::CosOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::CosOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::TanOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::TanOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::TanOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::SinhOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SinhOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::SinhOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::CoshOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::CoshOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::CoshOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::TanhOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::TanhOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::TanhOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::AsinOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AsinOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::AsinOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::AcosOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AcosOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::AcosOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::AtanOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AtanOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::AtanOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::AsinhOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AsinhOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::AsinhOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::AcoshOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AcoshOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::AcoshOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::AtanhOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AtanhOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::AtanhOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::RsqrtOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::RsqrtOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::RsqrtOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::SqrtOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SqrtOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::SqrtOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::ExpOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ExpOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::ExpOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::ErfOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ErfOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::ErfOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v14 = mlir::IntegerType::get(a1, 1, 0);

    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, v14, 1);
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::EqualOp::refineReturnTypes(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::GreaterOp::inferReturnTypes(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v14 = mlir::IntegerType::get(a1, 1, 0);

    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, v14, 1);
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::GreaterOp::refineReturnTypes(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::GreaterOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::NotEqualOp::inferReturnTypes(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v14 = mlir::IntegerType::get(a1, 1, 0);

    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, v14, 1);
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::NotEqualOp::refineReturnTypes(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::NotEqualOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::AndOp::inferReturnTypes(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v14 = mlir::IntegerType::get(a1, 1, 0);

    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, v14, 1);
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AndOp::refineReturnTypes(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::AndOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::OrOp::inferReturnTypes(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v14 = mlir::IntegerType::get(a1, 1, 0);

    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, v14, 1);
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::OrOp::refineReturnTypes(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::OrOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::XorOp::inferReturnTypes(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v14 = mlir::IntegerType::get(a1, 1, 0);

    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, v14, 1);
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::XorOp::refineReturnTypes(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::XorOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::inferReductionReturnTypes(void **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v46[0] = a3;
  v46[1] = a4;
  v36 = 0;
  v37 = 0;
  v9 = mlir::ValueRange::dereference_iterator(v46, 1);
  v47 = &v37;
  if ((~*(v9 + 8) & 7) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = *(v10 + 8) & 7;
  if (v11 == 6)
  {
    v12 = v10 + 24 * *(v10 + 16);
    v13 = v12 + 120;
    if (v12 == -120)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v13 = v10 + 16 * v11 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v47, v13) || ((v14 = mlir::ValueRange::dereference_iterator(v46, 2), v44[0] = &v36, (~*(v14 + 8) & 7) != 0) ? (v15 = v14) : (v15 = 0), !v15))
  {
LABEL_22:
    v20 = (a3 & 0xFFFFFFFFFFFFFFF8);
    if ((a3 & 6) != 0 || !v20)
    {
      if ((a3 & 6) == 2 && v20)
      {
        v20 = v20[3];
      }
    }

    else
    {
      v20 = *v20;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a5, v20[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(v44, v18))
  {
    goto LABEL_22;
  }

  v19 = (a3 & 0xFFFFFFFFFFFFFFF8);
  if ((a3 & 6) != 0 || !v19)
  {
    if ((a3 & 6) == 2 && v19)
    {
      v19 = v19[3];
    }
  }

  else
  {
    v19 = *v19;
  }

  v23 = (v19[1] & 0xFFFFFFFFFFFFFFF8);
  v24 = v23[1];
  v25 = v23[2];
  v44[0] = v45;
  v44[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(v44, v24, &v24[8 * v25]);
  mlir::ODIE::Compiler::extract1DIntVector<int>(v37, &v41);
  v26 = (*(*(v36 + 16) + 8))();
  v27 = (*(*(v36 + 16) + 24))();
  if (v28)
  {
    v29 = 8 * v28;
    v30 = 1;
    do
    {
      v31 = *v27++;
      v30 *= v31;
      v29 -= 8;
    }

    while (v29);
    if (v30 != 1)
    {
      goto LABEL_41;
    }
  }

  if (*(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v26[2] & 0x3FFFFFFF) == 1)
  {
    mlir::DenseElementsAttr::tryGetValues<BOOL,void>(&v36, &v47);
    if (v49 == v50)
    {
      v32 = 0;
    }

    else
    {
      v33 = v50 - 1;
      if (v48)
      {
        v33 = 0;
      }

      v32 = (*(v47 + (v33 >> 3)) >> (v33 & 7)) & 1;
    }

    mlir::ODIE::Compiler::CoreML::getReductionOutputShape(&v47, v44, v41, v42, v32);
    v34 = v23[3];
    *&v40 = v47;
    *(&v40 + 1) = v48;
    v38 = 0;
    v39 = v34;
    v35 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v34 + 32), &v40, &v39, &v38);
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a5, v35);
    if (v47 != &v49)
    {
      free(v47);
    }

    v21 = 1;
  }

  else
  {
LABEL_41:
    v21 = mlir::emitOptionalError<char const(&)[48]>(a1, a2, "keep dims argument should contain a single BOOL");
  }

  if (v41 != &v43)
  {
    free(v41);
  }

  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  return v21;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceMeanOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a5 == 3)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferReductionReturnTypes(a2, a3, a4, 3, &__src))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 3 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v16))
  {
    v12 = __src;
    v13 = __src + 8 * v16;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v17)
  {
    free(__src);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceSumOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a5 == 3)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferReductionReturnTypes(a2, a3, a4, 3, &__src))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 3 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v16))
  {
    v12 = __src;
    v13 = __src + 8 * v16;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v17)
  {
    free(__src);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceMaxOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a5 == 3)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferReductionReturnTypes(a2, a3, a4, 3, &__src))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 3 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v16))
  {
    v12 = __src;
    v13 = __src + 8 * v16;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v17)
  {
    free(__src);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceMinOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v17[6] = *MEMORY[0x277D85DE8];
  __src = v17;
  v16 = 0x600000000;
  if (a5 == 3)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferReductionReturnTypes(a2, a3, a4, 3, &__src))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 3 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v16))
  {
    v12 = __src;
    v13 = __src + 8 * v16;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v17)
  {
    free(__src);
  }

  return v11;
}

BOOL mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp::inferReturnTypes(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v65 = *MEMORY[0x277D85DE8];
  v59[0] = a4;
  v59[1] = a5;
  if (a5 == 3)
  {
    v53 = 0;
    v54 = 0;
    v15 = mlir::ValueRange::dereference_iterator(v59, 1);
    *&__src = &v54;
    if ((~*(v15 + 8) & 7) != 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = *(v16 + 8) & 7;
      if (v17 == 6)
      {
        v18 = v16 + 24 * *(v16 + 16);
        v19 = v18 + 120;
        if (v18 == -120)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v19 = v16 + 16 * v17 + 16;
      }

      if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&__src, v19))
      {
        v21 = mlir::ValueRange::dereference_iterator(v59, 2);
        v55[0] = &v53;
        v22 = (~*(v21 + 8) & 7) != 0 ? v21 : 0;
        if (v22)
        {
          v23 = *(v22 + 8) & 7;
          if (v23 == 6)
          {
            v24 = v22 + 24 * *(v22 + 16);
            v25 = v24 + 120;
            if (v24 == -120)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v25 = v22 + 16 * v23 + 16;
          }

          if (mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(v55, v25))
          {
            v26 = (a4 & 0xFFFFFFFFFFFFFFF8);
            if ((a4 & 6) != 0 || !v26)
            {
              if ((a4 & 6) == 2 && v26)
              {
                v26 = v26[3];
              }
            }

            else
            {
              v26 = *v26;
            }

            v32 = v26[1] & 0xFFFFFFFFFFFFFFF8;
            v33 = *(v32 + 8);
            v34 = *(v32 + 16);
            v57[0] = v58;
            v57[1] = 0x600000000;
            llvm::SmallVectorImpl<long long>::append<long long const*,void>(v57, v33, &v33[8 * v34]);
            v35 = (*(*(v54 + 16) + 24))();
            if (!v36)
            {
              goto LABEL_41;
            }

            v37 = 8 * v36;
            v38 = 1;
            do
            {
              v39 = *v35++;
              v38 *= v39;
              v37 -= 8;
            }

            while (v37);
            if (v38 != 1)
            {
              v29 = mlir::emitOptionalError<char const(&)[37]>(a2, a3, "axis should contain a single integer");
            }

            else
            {
LABEL_41:
              mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v54, &__src);
              *v55 = __src;
              v56[0] = v61;
              v56[1] = v62;
              v56[2] = v63;
              v56[3] = v64;
              mlir::DenseElementsAttr::IntElementIterator::operator*(&__src, &v51);
              if (v52 > 0x40)
              {
                v40 = *v51;
                MEMORY[0x25F891010]();
              }

              else if (v52)
              {
                v40 = (v51 << -v52) >> -v52;
              }

              else
              {
                LODWORD(v40) = 0;
              }

              LODWORD(__src) = v40;
              v55[0] = v56;
              v55[1] = 0xC00000000;
              llvm::SmallVectorImpl<int>::append<int const*,void>(v55, &__src, &__src + 4);
              v41 = (*(*(v53 + 16) + 8))();
              v42 = (*(*(v53 + 16) + 24))();
              if (v43)
              {
                v44 = 8 * v43;
                v45 = 1;
                do
                {
                  v46 = *v42++;
                  v45 *= v46;
                  v44 -= 8;
                }

                while (v44);
                if (v45 != 1)
                {
                  goto LABEL_54;
                }
              }

              if (*(*v41 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v41[2] & 0x3FFFFFFF) == 1)
              {
                mlir::DenseElementsAttr::tryGetValues<BOOL,void>(&v53, &__src);
                if (v61 == *(&v62 + 1))
                {
                  v47 = 0;
                }

                else
                {
                  v48 = *(&v62 + 1) - 1;
                  if (BYTE8(__src))
                  {
                    v48 = 0;
                  }

                  v47 = (*(__src + (v48 >> 3)) >> (v48 & 7)) & 1;
                }

                mlir::ODIE::Compiler::CoreML::getReductionOutputShape(&__src, v57, v55[0], v55[1], v47);
                v49 = mlir::IntegerType::get(a1, 32, 1);
                v50 = mlir::RankedTensorType::get(__src, DWORD2(__src), v49, 0);
                llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v50);
                if (__src != &v61)
                {
                  free(__src);
                }

                v29 = 1;
              }

              else
              {
LABEL_54:
                v29 = mlir::emitOptionalError<char const(&)[48]>(a2, a3, "keep dims argument should contain a single BOOL");
              }

              if (v55[0] != v56)
              {
                free(v55[0]);
              }
            }

            if (v57[0] != v58)
            {
              free(v57[0]);
            }

            return v29;
          }
        }
      }
    }

LABEL_26:
    v27 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v27)
    {
      if ((a4 & 6) == 2)
      {
        if (v27)
        {
          v27 = v27[3];
        }
      }
    }

    else
    {
      v27 = *v27;
    }

    v55[0] = (v27[1] & 0xFFFFFFFFFFFFFFF8);
    v28 = v55[0];
    v29 = 1;
    v30 = mlir::IntegerType::get(a1, 64, 1);
    __src = *(v28 + 8);
    LOBYTE(v61) = 1;
    v31 = mlir::TensorType::cloneWith(v55, &__src, v30);
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v31);
    return v29;
  }

  return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 3 operands");
}

uint64_t mlir::ODIE::Compiler::CoreML::getReductionOutputShape(void *a1, uint64_t a2, int *a3, unsigned int a4, int a5)
{
  v8 = *(a2 + 8);
  v20 = 0;
  v19 = 0u;
  v21[0] = v22;
  v21[1] = 0;
  if (a4)
  {
    v10 = 4 * a4;
    do
    {
      v18 = ((v8 & (*a3 >> 31)) + *a3);
      llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v19, &v18, v22);
      if (v22[16] == 1)
      {
        llvm::SmallVectorTemplateBase<long long,true>::push_back(v21, v18);
      }

      ++a3;
      v10 -= 4;
    }

    while (v10);
  }

  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if (v8 >= 1)
  {
    v11 = 0;
    while (1)
    {
      if (!v20)
      {
        goto LABEL_11;
      }

      v12 = (v20 - 1) & (37 * v11);
      v13 = *(v19 + 8 * v12);
      if (v11 != v13)
      {
        break;
      }

LABEL_10:
      if (v12 == v20)
      {
        goto LABEL_11;
      }

      if (!a5)
      {
        goto LABEL_13;
      }

      v14 = 1;
LABEL_12:
      llvm::SmallVectorTemplateBase<long long,true>::push_back(a1, v14);
LABEL_13:
      if (++v11 == v8)
      {
        goto LABEL_21;
      }
    }

    v15 = 1;
    while (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v12 + v15++;
      v12 = v16 & (v20 - 1);
      v13 = *(v19 + 8 * v12);
      if (v11 == v13)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    v14 = *(*a2 + 8 * v11);
    goto LABEL_12;
  }

LABEL_21:
  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  return MEMORY[0x25F891030](v19, 8);
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp::refineReturnTypes(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::ExpandDimsOp::inferReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v65 = *MEMORY[0x277D85DE8];
  v61[0] = a4;
  v61[1] = a5;
  if (a5 == 2)
  {
    v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v13)
    {
      if ((a4 & 6) == 2 && v13)
      {
        v13 = v13[3];
      }
    }

    else
    {
      v13 = *v13;
    }

    v15 = (v13[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {

      return mlir::emitOptionalError<char const(&)[30]>(a2, a3, "input must be a ranked tensor");
    }

    v16 = v15[2];
    v17 = (*(mlir::ValueRange::dereference_iterator(v61, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
    if ((*v17)[17] != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {

      return mlir::emitOptionalError<char const(&)[29]>(a2, v11, "axes must be a ranked tensor");
    }

    v18 = *v17[1] + v16;
    v19 = mlir::ValueRange::dereference_iterator(v61, 1);
    __base[0] = 0;
    __base[1] = 0;
    __p[0] = __base;
    if ((~*(v19 + 8) & 7) != 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (!v20)
    {
      goto LABEL_35;
    }

    v21 = *(v20 + 8) & 7;
    if (v21 == 6)
    {
      v22 = v20 + 24 * *(v20 + 16);
      v23 = v22 + 120;
      if (v22 == -120)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v23 = v20 + 16 * v21 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(__p, v23))
    {
LABEL_35:
      __base[0] = v63;
      __base[1] = 0x600000000;
      llvm::SmallVectorImpl<long long>::assign(__base, v18, 0x8000000000000000);
      v29 = v15[3];
      __p[0] = __base[0];
      __p[1] = LODWORD(__base[1]);
      v57.__r_.__value_.__r.__words[0] = v29;
      v56.__r_.__value_.__r.__words[0] = 0;
      v30 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v29 + 32), __p, &v57, &v56);
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v30);
      if (__base[0] != v63)
      {
        free(__base[0]);
      }

      return 1;
    }

    v58 = 0;
    v24 = mlir::ValueRange::dereference_iterator(v61, 1);
    __base[0] = &v58;
    if ((~*(v24 + 8) & 7) != 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25)
    {
      v26 = *(v25 + 8) & 7;
      if (v26 == 6)
      {
        v27 = v25 + 24 * *(v25 + 16);
        v28 = v27 + 120;
        if (v27 == -120)
        {
          return mlir::emitOptionalError<char const(&)[29]>(a2, v11, "axes must be a 1D int vector");
        }
      }

      else
      {
        v28 = v25 + 16 * v26 + 16;
      }

      if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(__base, v28))
      {
        mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v58, __base);
        *__p = *__base;
        v32 = v63[0];
        v33 = v63[1];
        v34 = v64;
        __base[0] = v63;
        __base[1] = 0x600000000;
        llvm::SmallVectorImpl<long long>::resizeImpl<false>(__base, v64 - v63[0]);
        v35 = __base[0];
        v60[0] = v32;
        v60[1] = v33;
        v36 = v34 - v32;
        if (v34 != v32)
        {
          v37 = v32 + 1;
          do
          {
            mlir::DenseElementsAttr::IntElementIterator::operator*(__p, &v57);
            if (LODWORD(v57.__r_.__value_.__r.__words[1]) > 0x40)
            {
              *v35 = *v57.__r_.__value_.__l.__data_;
              MEMORY[0x25F891010]();
            }

            else
            {
              if (LODWORD(v57.__r_.__value_.__r.__words[1]))
              {
                v38 = (v57.__r_.__value_.__r.__words[0] << -v57.__r_.__value_.__s.__data_[8]) >> -v57.__r_.__value_.__s.__data_[8];
              }

              else
              {
                v38 = 0;
              }

              *v35 = v38;
            }

            v60[0] = v37;
            ++v35;
            ++v37;
            --v36;
          }

          while (v36);
          v35 = __base[0];
        }

        v39 = LODWORD(__base[1]);
        if (LODWORD(__base[1]))
        {
          v40 = 0;
          v41 = 8 * LODWORD(__base[1]);
          do
          {
            v42 = v35[v40 / 8];
            if (v42 <= ~v18 || v42 >= v18)
            {
              std::to_string(&v56, v42);
              v51 = std::string::insert(&v56, 0, "invalid axis: ");
              v52 = v51->__r_.__value_.__r.__words[2];
              *&v57.__r_.__value_.__l.__data_ = *&v51->__r_.__value_.__l.__data_;
              v57.__r_.__value_.__r.__words[2] = v52;
              v51->__r_.__value_.__l.__size_ = 0;
              v51->__r_.__value_.__r.__words[2] = 0;
              v51->__r_.__value_.__r.__words[0] = 0;
              v53 = std::string::append(&v57, ".");
              v54 = v53->__r_.__value_.__r.__words[2];
              *__p = *&v53->__r_.__value_.__l.__data_;
              v60[0] = v54;
              v53->__r_.__value_.__l.__size_ = 0;
              v53->__r_.__value_.__r.__words[2] = 0;
              v53->__r_.__value_.__r.__words[0] = 0;
              v55 = mlir::emitOptionalError<std::string>(a2, v11, __p);
              v31 = v55;
              if (SHIBYTE(v60[0]) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v57.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v56.__r_.__value_.__l.__data_);
              }

              goto LABEL_78;
            }

            if (v42 < 0)
            {
              v35[v40 / 8] += v18;
            }

            v40 += 8;
          }

          while (v41 != v40);
          if (v39 != 1)
          {
            qsort(v35, v39, 8uLL, llvm::array_pod_sort_comparator<long long>);
          }
        }

        v44 = v15[1];
        v45 = &v44[8 * v15[2]];
        __p[0] = v60;
        __p[1] = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long const*,void>(__p, v44, v45);
        if (LODWORD(__base[1]))
        {
          v46 = __base[0];
          v47 = 8 * LODWORD(__base[1]);
          do
          {
            v49 = *v46++;
            v48 = v49;
            if (v49 >= LODWORD(__p[1]))
            {
              v48 = LODWORD(__p[1]);
            }

            v57.__r_.__value_.__r.__words[0] = 1;
            llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(__p, __p[0] + 8 * v48, &v57);
            v47 -= 8;
          }

          while (v47);
        }

        v50 = mlir::RankedTensorType::get(__p[0], LODWORD(__p[1]), v15[3], 0);
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v50);
        if (__p[0] != v60)
        {
          free(__p[0]);
        }

        v31 = 1;
LABEL_78:
        if (__base[0] != v63)
        {
          free(__base[0]);
        }

        return v31;
      }
    }

    return mlir::emitOptionalError<char const(&)[29]>(a2, v11, "axes must be a 1D int vector");
  }

  return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
}

BOOL mlir::emitOptionalError<char const(&)[29]>(void **a1, char a2, char *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v6[16] = 257;
  emitDiag(a1, 2, v6, &v7);
  if (v7)
  {
    mlir::Diagnostic::operator<<<29ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

BOOL mlir::emitOptionalError<std::string>(void **a1, char a2, const char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v7 = 257;
  emitDiag(a1, 2, v6, &v8);
  if (v8)
  {
    v7 = 260;
    v6[0] = a3;
    mlir::Diagnostic::operator<<(v9, v6);
  }

  v4 = (v9[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::ExpandDimsOp::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v11 = a3;
  v21[6] = *MEMORY[0x277D85DE8];
  v20 = 0x600000000;
  __src = v21;
  if (mlir::ODIE::Compiler::CoreML::ExpandDimsOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v20))
    {
      v13 = __src;
      v14 = __src + 8 * v20;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v13, v14);
    }

    v15 = 1;
  }

  else
  {
    v15 = mlir::emitOptionalError<char const(&)[41]>(a2, v11, "fails to infer the type of expandDims op");
  }

  if (__src != v21)
  {
    free(__src);
  }

  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::verify(void ****this)
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2[9];
  v4 = *(v3[3] + 1) & 0xFFFFFFFFFFFFFFF8;
  v58 = *(v4 + 16);
  v5 = v3[7];
  v6 = v5[1];
  v57 = **((v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v57 > v58)
  {
    v65[8] = 257;
    mlir::Operation::emitError(&v66, v2, &v63);
    if (v66)
    {
      mlir::Diagnostic::operator<<<27ul>(&v66 + 8, " number of axes to shrink ");
    }

    v7 = mlir::InFlightDiagnostic::operator<<<long long &>(&v66, &v57);
    v8 = v7;
    if (*v7)
    {
      mlir::Diagnostic::operator<<<28ul>((v7 + 1), " is larger than input rank ");
    }

    v9 = (*(mlir::InFlightDiagnostic::operator<<<long long &>(v8, &v58) + 200) & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v66);
    return v9;
  }

  if (*(v2 + 9))
  {
    v10 = v2 - 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10[1];
  v56 = 0;
  *&v66 = &v56;
  if ((~v6 & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 1;
  }

  v12 = v5[1] & 7;
  if (v12 == 6)
  {
    v13 = &v5[3 * v5[2]];
    v14 = (v13 + 15);
    if (v13 == -120)
    {
      return 1;
    }
  }

  else
  {
    v14 = &v5[2 * v12 + 2];
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v66, v14))
  {
    return 1;
  }

  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v56, &v66);
  v15 = v67;
  *v53 = v66;
  v16 = v70;
  v17 = v58;
  v63 = v65;
  v64 = 0x600000000;
  v18 = v67;
  v19 = v70 - v67;
  if ((v70 - v67) < 7)
  {
    v20 = 0;
    v21 = v65;
  }

  else
  {
    v52 = v67;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v70 - v67, 8);
    v15 = v52;
    v20 = v64;
    v21 = v63;
  }

  v66 = *v53;
  v67 = v15;
  v68 = v17;
  v69 = 1;
  if (v16 != v18)
  {
    v23 = v18 + 1;
    v24 = v19;
    v25 = &v21[v20];
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v66, &__s2);
      if (v60 > 0x40)
      {
        v26 = (v17 & (*__s2 >> 63)) + *__s2;
        MEMORY[0x25F891010]();
      }

      else if (v60)
      {
        v26 = (v17 & ((__s2 << -v60) >> -v60 >> 63)) + ((__s2 << -v60) >> -v60);
      }

      else
      {
        v26 = 0;
      }

      *v25++ = v26;
      *&v67 = v23++;
      --v24;
    }

    while (v24);
    v20 = v64;
    v21 = v63;
  }

  v28 = (v20 + v19);
  v27 = v20 + v19 == 0;
  LODWORD(v64) = v20 + v19;
  v30 = *(v4 + 8);
  v29 = *(v4 + 16);
  if (v27)
  {
LABEL_37:
    v34 = v11 & 0xFFFFFFFFFFFFFFF8;
    __s2 = v61;
    v60 = 0x600000000;
    if (v29)
    {
      v35 = 0;
      v36 = &v30[v29];
      do
      {
        if (v64)
        {
          v37 = 8 * v64;
          v38 = v63;
          while (*v38 != v35)
          {
            ++v38;
            v37 -= 8;
            if (!v37)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          v38 = v63;
        }

        if (v38 == (v63 + 8 * v64))
        {
LABEL_46:
          llvm::SmallVectorTemplateBase<long long,true>::push_back(&__s2, *v30);
        }

        ++v35;
        ++v30;
      }

      while (v30 != v36);
      v39 = v60;
    }

    else
    {
      v39 = 0;
    }

    v42 = *(v34 + 16);
    if (v42 == v39 && (v43 = __s2, !memcmp(*(v34 + 8), __s2, 8 * v42)))
    {
      v9 = 1;
    }

    else
    {
      v54 = 257;
      mlir::Operation::emitError(&v66, *this, v53);
      if (v66)
      {
        mlir::Diagnostic::operator<<<34ul>(&v66 + 8, " expected output shape mismatch: ");
        if (v66)
        {
          mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(&v66 + 8, *(v34 + 8), *(v34 + 16));
          if (v66)
          {
            mlir::Diagnostic::operator<<<5ul>(&v66 + 8, " vs ");
          }
        }
      }

      v44 = mlir::InFlightDiagnostic::operator<<<llvm::SmallVector<long long,6u> &>(&v66, &__s2);
      v45 = v44;
      if (*v44)
      {
        mlir::Diagnostic::operator<<<16ul>((v44 + 1), " Shrink dims = ");
      }

      v9 = (*(mlir::InFlightDiagnostic::operator<<<llvm::SmallVector<long long,6u> &>(v45, &v63) + 200) & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v66);
      v43 = __s2;
    }

    if (v43 != v61)
    {
      free(v43);
    }
  }

  else
  {
    v31 = 8 * v28;
    while (1)
    {
      v32 = *v21;
      v53[0] = v32;
      if (v32 >= v58)
      {
        break;
      }

      v33 = v30[v32];
      v55 = v33;
      if (v33 != 1)
      {
        if (v33 == 0x8000000000000000)
        {
          v62 = 257;
          mlir::Operation::emitError(&v66, *this, &__s2);
          if (v66)
          {
            mlir::Diagnostic::operator<<<19ul>(&v66 + 8, " shrink dimension ");
          }

          v40 = mlir::InFlightDiagnostic::operator<<<long long &>(&v66, v53);
          v41 = v40;
          if (*v40)
          {
            mlir::Diagnostic::operator<<<47ul>((v40 + 1), " has dynamic dimension length in input tensor.");
          }
        }

        else
        {
          v62 = 257;
          mlir::Operation::emitError(&v66, *this, &__s2);
          if (v66)
          {
            mlir::Diagnostic::operator<<<19ul>(&v66 + 8, " shrink dimension ");
          }

          v48 = mlir::InFlightDiagnostic::operator<<<long long &>(&v66, v53);
          v49 = v48;
          if (*v48)
          {
            mlir::Diagnostic::operator<<<32ul>((v48 + 1), " has non-unit dimension length ");
          }

          v50 = mlir::InFlightDiagnostic::operator<<<long long &>(v49, &v55);
          v41 = v50;
          if (*v50)
          {
            mlir::Diagnostic::operator<<<18ul>((v50 + 1), " in input tensor.");
          }
        }

        v51 = *(v41 + 200);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v66);
        v9 = (v51 & 1) == 0;
        goto LABEL_78;
      }

      ++v21;
      v31 -= 8;
      if (!v31)
      {
        goto LABEL_37;
      }
    }

    v62 = 257;
    mlir::Operation::emitError(&v66, *this, &__s2);
    if (v66)
    {
      mlir::Diagnostic::operator<<<23ul>(&v66 + 8, " shrink axes contains ");
    }

    v46 = mlir::InFlightDiagnostic::operator<<<long long &>(&v66, v53);
    v47 = v46;
    if (*v46)
    {
      mlir::Diagnostic::operator<<<34ul>((v46 + 1), " which is higher than input rank ");
    }

    v9 = (*(mlir::InFlightDiagnostic::operator<<<long long &>(v47, &v58) + 200) & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v66);
  }

LABEL_78:
  if (v63 != v65)
  {
    free(v63);
  }

  return v9;
}

uint64_t mlir::InFlightDiagnostic::operator<<<llvm::SmallVector<long long,6u> &>(uint64_t a1, uint64_t **a2)
{
  if (*a1)
  {
    v3 = *(a2 + 2);
    if (v3)
    {
      v4 = *a2;
      v5 = **a2;
      LODWORD(v17) = 2;
      v18 = v5;
      v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v17, 1);
      v7 = *(a1 + 24) + 24 * *(a1 + 32);
      v8 = *v6;
      *(v7 + 16) = *(v6 + 16);
      *v7 = v8;
      ++*(a1 + 32);
      if (v3 != 1)
      {
        v9 = 8 * v3;
        v10 = v4 + 1;
        v11 = v9 - 8;
        do
        {
          v17 = ", ";
          v19 = 259;
          mlir::Diagnostic::operator<<(a1 + 8, &v17);
          v12 = *v10++;
          LODWORD(v17) = 2;
          v18 = v12;
          v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v17, 1);
          v14 = *(a1 + 24) + 24 * *(a1 + 32);
          v15 = *v13;
          *(v14 + 16) = *(v13 + 16);
          *v14 = v15;
          ++*(a1 + 32);
          v11 -= 8;
        }

        while (v11);
      }
    }
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ScatterNdOp::verify(mlir::ODIE::Compiler::CoreML::ScatterNdOp *this)
{
  v46[25] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 72);
  v4 = *(v3[3] + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  v44 = v5;
  if (!v5)
  {
    v43 = 257;
    mlir::Operation::emitError(&v45, v2, v42);
    if (v45)
    {
      mlir::Diagnostic::operator<<<31ul>(v46, "input/output rank must be >= 1");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
    v2 = *this;
    v3 = *(*this + 72);
  }

  v7 = (*(v3[7] + 8) & 0xFFFFFFFFFFFFFFF8);
  v9 = v7[1];
  v8 = v7[2];
  v10 = v9[v8 - 1];
  v41 = v10;
  v11 = v5 - v10;
  if (v5 < v10)
  {
    v43 = 257;
    mlir::Operation::emitError(&v45, v2, v42);
    if (v45)
    {
      mlir::Diagnostic::operator<<<32ul>(v46, "innermost dimension of indices ");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<long long &>(&v45, &v41);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<16ul>((v12 + 1), " > output rank ");
    }

    v14 = &v44;
LABEL_11:
    v15 = *(mlir::InFlightDiagnostic::operator<<<long long &>(v13, v14) + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
    return v15 & 1;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_30;
  }

  v16 = *(v3[11] + 8);
  if (v8)
  {
    v17 = 8 * v8;
    v18 = v9;
    while (*v18 != 0x8000000000000000)
    {
      ++v18;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_30;
  }

LABEL_17:
  v19 = (v16 & 0xFFFFFFFFFFFFFFF8);
  if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_30;
  }

  v21 = v19[1];
  v20 = v19[2];
  if (v20)
  {
    v22 = 8 * v20;
    v23 = v21;
    while (*v23 != 0x8000000000000000)
    {
      ++v23;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_30;
  }

LABEL_22:
  v39 = v8 + v11 - 1;
  v40 = v20;
  if (v20 != v39)
  {
    v43 = 257;
    mlir::Operation::emitError(&v45, v2, v42);
    if (v45)
    {
      mlir::Diagnostic::operator<<<17ul>(v46, "updates rank is ");
    }

    v28 = mlir::InFlightDiagnostic::operator<<<long long &>(&v45, &v40);
    v13 = v28;
    if (*v28)
    {
      mlir::Diagnostic::operator<<<19ul>((v28 + 1), " expected rank is ");
    }

    v14 = &v39;
    goto LABEL_11;
  }

  if (v20 < 1)
  {
LABEL_30:
    v15 = 1;
    return v15 & 1;
  }

  v24 = 0;
  v25 = 0;
  v26 = v6 - 8 * v8 + 8 * v10;
  while (v8 - 2 < v25)
  {
    if (v21[v25] != *(v26 + 8 + 8 * v25))
    {
      v38 = v25;
      v43 = 257;
      mlir::Operation::emitError(&v45, v2, v42);
      if (v45)
      {
        mlir::Diagnostic::operator<<<15ul>(v46, "updates shape[");
      }

      v34 = mlir::InFlightDiagnostic::operator<<<int &>(&v45, &v38);
      v35 = v34;
      if (*v34)
      {
        mlir::Diagnostic::operator<<<6ul>((v34 + 1), "] is ");
      }

      v36 = mlir::InFlightDiagnostic::operator<<<long long const&>(v35, &v21[v38]);
      v32 = v36;
      if (*v36)
      {
        mlir::Diagnostic::operator<<<18ul>((v36 + 1), " expect it to be ");
      }

      v33 = (v26 - v24 + 8);
      goto LABEL_51;
    }

LABEL_29:
    ++v25;
    v24 -= 8;
    if (v20 == v25)
    {
      goto LABEL_30;
    }
  }

  if (v21[v25] == v9[v25])
  {
    goto LABEL_29;
  }

  v38 = v25;
  v43 = 257;
  mlir::Operation::emitError(&v45, v2, v42);
  if (v45)
  {
    mlir::Diagnostic::operator<<<15ul>(v46, "updates shape[");
  }

  v29 = mlir::InFlightDiagnostic::operator<<<int &>(&v45, &v38);
  v30 = v29;
  if (*v29)
  {
    mlir::Diagnostic::operator<<<6ul>((v29 + 1), "] is ");
  }

  v31 = mlir::InFlightDiagnostic::operator<<<long long const&>(v30, &v21[v38]);
  v32 = v31;
  if (*v31)
  {
    mlir::Diagnostic::operator<<<18ul>((v31 + 1), " expect it to be ");
  }

  v33 = &v9[v38];
LABEL_51:
  v37 = *(mlir::InFlightDiagnostic::operator<<<long long const&>(v32, v33) + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
  v15 = v37 ^ 1;
  return v15 & 1;
}

uint64_t mlir::InFlightDiagnostic::operator<<<int &>(uint64_t a1, int *a2)
{
  if (*a1)
  {
    v3 = *a2;
    v8 = 2;
    v9 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v8, 1);
    v5 = *(a1 + 24) + 24 * *(a1 + 32);
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t mlir::InFlightDiagnostic::operator<<<long long const&>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v3 = *a2;
    v8 = 2;
    v9 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v8, 1);
    v5 = *(a1 + 24) + 24 * *(a1 + 32);
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp::verify(void ****this)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2[9];
  v4 = (*(v3[3] + 1) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  v5 = (*(v3[7] + 1) & 0xFFFFFFFFFFFFFFF8);
  v37 = v4[2];
  if (!v37)
  {
    v36 = 257;
    mlir::Operation::emitError(&v38, v2, v35);
    if (v38)
    {
      mlir::Diagnostic::operator<<<34ul>(&v39, "input rank must be >= 1, but got ");
    }

    mlir::InFlightDiagnostic::operator<<<long long &>(&v38, &v37);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
  }

  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_36;
  }

  v7 = v4[1];
  v6 = v4[2];
  if (v6)
  {
    v8 = 8 * v6;
    v9 = v4[1];
    while (*v9 != 0x8000000000000000)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_36;
  }

LABEL_12:
  v11 = v5[1];
  v10 = v5[2];
  if (v10)
  {
    v12 = 8 * v10;
    v13 = v5[1];
    while (*v13 != 0x8000000000000000)
    {
      ++v13;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_36;
  }

LABEL_16:
  v14 = (*this)[9][15];
  v38 = 0;
  v39 = 0;
  v35[0] = &v38;
  if ((~v14[2] & 7) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_36;
  }

  v16 = *(v15 + 1) & 7;
  if (v16 == 6)
  {
    v17 = &v15[6 * *(v15 + 2)];
    v18 = (v17 + 30);
    if (v17 == -120)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v18 = &v15[4 * v16 + 4];
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v35, v18))
  {
    goto LABEL_36;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v14, &v38);
  if (v40[48])
  {
    v20 = *v38;
    if (v38 != v40)
    {
      free(v38);
    }

    v34 = v20;
    if (v20 < -v37 || v37 <= v20)
    {
      v36 = 257;
      mlir::Operation::emitError(&v38, *this, v35);
      if (v38)
      {
        mlir::Diagnostic::operator<<<14ul>(&v39, "Invalid axis ");
      }

      v23 = mlir::InFlightDiagnostic::operator<<<int &>(&v38, &v34);
      v24 = v23;
      if (*v23)
      {
        mlir::Diagnostic::operator<<<26ul>((v23 + 1), " when the input has rank ");
      }

      v25 = mlir::InFlightDiagnostic::operator<<<long long &>(v24, &v37);
LABEL_43:
      v22 = *(v25 + 200) ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
      return v22 & 1;
    }

    if (v37 >= 1)
    {
      v21 = 0;
      while ((v37 & (v20 >> 31)) + v20 == v21 || *(v7 + 8 * v21) == *(v11 + 8 * v21))
      {
        if (v37 == ++v21)
        {
          goto LABEL_36;
        }
      }

      v33 = v21;
      v36 = 257;
      mlir::Operation::emitError(&v38, *this, v35);
      if (v38)
      {
        mlir::Diagnostic::operator<<<13ul>(&v39, "Input shape[");
      }

      v26 = mlir::InFlightDiagnostic::operator<<<int &>(&v38, &v33);
      v27 = v26;
      if (*v26)
      {
        mlir::Diagnostic::operator<<<6ul>((v26 + 1), "] is ");
      }

      v28 = mlir::InFlightDiagnostic::operator<<<long long const&>(v27, (v7 + 8 * v33));
      v29 = v28;
      if (*v28)
      {
        mlir::Diagnostic::operator<<<22ul>((v28 + 1), ", but indices shape [");
      }

      v30 = mlir::InFlightDiagnostic::operator<<<int &>(v29, &v33);
      v31 = v30;
      if (*v30)
      {
        mlir::Diagnostic::operator<<<6ul>((v30 + 1), "] is ");
      }

      v25 = mlir::InFlightDiagnostic::operator<<<long long const&>(v31, (v11 + 8 * v33));
      goto LABEL_43;
    }

LABEL_36:
    v22 = 1;
    return v22 & 1;
  }

  v32 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::SliceOp::fold(v32);
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceOp::fold(uint64_t a1)
{
  v1 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v2 = *(*(*a1 + 72) + 24);
  v3 = (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::ODIE::Compiler::CoreML::canCompareTensorTypes(v1, v3) && v1 == v3)
  {
    return v2 | 4;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::verify(void ****this)
{
  v99 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2[9];
  v4 = (*(v3[3] + 1) & 0xFFFFFFFFFFFFFFF8);
  v84 = v4[2];
  if (!v84)
  {
    v94 = 257;
    mlir::Operation::emitError(&v95, v2, v92);
    if (v95)
    {
      mlir::Diagnostic::operator<<<31ul>(&v96, "input/output rank must be >= 1");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v95);
    v2 = *this;
    v3 = (*this)[9];
  }

  v5 = v3[7];
  v6 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v6 + 8);
    v9 = 8 * v7;
    v10 = 1;
    do
    {
      v11 = *v8++;
      v10 *= v11;
      v9 -= 8;
    }

    while (v9);
  }

  else
  {
    v10 = 1;
  }

  if (v10 != v84)
  {
    v94 = 257;
    mlir::Operation::emitError(&v95, v2, v92);
    if (v95)
    {
      mlir::Diagnostic::operator<<<15ul>(&v96, "input rank is ");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<long long &>(&v95, &v84);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<42ul>((v12 + 1), " but start/end/strides are provided with ");
    }

    v14 = *(v6 + 16);
    if (v14)
    {
      v15 = *(v6 + 8);
      v16 = 8 * v14;
      v17 = 1;
      do
      {
        v18 = *v15++;
        v17 *= v18;
        v16 -= 8;
      }

      while (v16);
    }

    else
    {
      v17 = 1;
    }

    v90[0] = v17;
    v19 = mlir::InFlightDiagnostic::operator<<<long long>(v13, v90);
    if (*v19)
    {
      mlir::Diagnostic::operator<<<10ul>((v19 + 1), " elements");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v95);
    v3 = (*this)[9];
  }

  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  v20 = *(v3[19] + 1);
  v21 = v4[2];
  if (v21)
  {
    v22 = v4[1];
    v23 = 8 * v21;
    while (*v22 != 0x8000000000000000)
    {
      ++v22;
      v23 -= 8;
      if (!v23)
      {
        goto LABEL_28;
      }
    }

    return 1;
  }

LABEL_28:
  v24 = v20 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v20 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = *(v24 + 8);
    v27 = 8 * v25;
    while (*v26 != 0x8000000000000000)
    {
      ++v26;
      v27 -= 8;
      if (!v27)
      {
        goto LABEL_33;
      }
    }

    return 1;
  }

LABEL_33:
  v28 = v3[11];
  v29 = v3[15];
  v95 = 0;
  v96 = 0;
  v92[0] = &v95;
  v30 = (~*(v5 + 8) & 7) != 0 ? v5 : 0;
  if (!v30)
  {
    return 1;
  }

  v31 = *(v30 + 8) & 7;
  if (v31 == 6)
  {
    v32 = v30 + 24 * *(v30 + 16);
    v33 = v32 + 120;
    if (v32 == -120)
    {
      return 1;
    }
  }

  else
  {
    v33 = v30 + 16 * v31 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v92, v33))
  {
    return 1;
  }

  v95 = 0;
  v96 = 0;
  v92[0] = &v95;
  v34 = (~*(v28 + 8) & 7) != 0 ? v28 : 0;
  if (!v34)
  {
    return 1;
  }

  v35 = *(v34 + 8) & 7;
  if (v35 == 6)
  {
    v36 = v34 + 24 * *(v34 + 16);
    v37 = v36 + 120;
    if (v36 == -120)
    {
      return 1;
    }
  }

  else
  {
    v37 = v34 + 16 * v35 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v92, v37))
  {
    return 1;
  }

  v95 = 0;
  v96 = 0;
  v92[0] = &v95;
  v38 = (~*(v29 + 8) & 7) != 0 ? v29 : 0;
  if (!v38)
  {
    return 1;
  }

  v39 = *(v38 + 8) & 7;
  if (v39 == 6)
  {
    v40 = v38 + 24 * *(v38 + 16);
    v41 = v40 + 120;
    if (v40 == -120)
    {
      return 1;
    }
  }

  else
  {
    v41 = v38 + 16 * v39 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v92, v41))
  {
    return 1;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v5, &v95);
  if (v98)
  {
    v92[0] = v93;
    v92[1] = 0xC00000000;
    if (!v96 || (llvm::SmallVectorImpl<int>::operator=(v92, &v95), (v98 & 1) != 0))
    {
      if (v95 != v97)
      {
        free(v95);
      }
    }

    mlir::ODIE::Compiler::extract1DIntVector<int>(v28, &v95);
    if (v98)
    {
      v90[0] = v91;
      v90[1] = 0xC00000000;
      if (!v96 || (llvm::SmallVectorImpl<int>::operator=(v90, &v95), (v98 & 1) != 0))
      {
        if (v95 != v97)
        {
          free(v95);
        }
      }

      mlir::ODIE::Compiler::extract1DIntVector<int>(v29, &v95);
      if (v98)
      {
        v88[0] = v89;
        v88[1] = 0xC00000000;
        if (!v96 || (llvm::SmallVectorImpl<int>::operator=(v88, &v95), (v98 & 1) != 0))
        {
          if (v95 != v97)
          {
            free(v95);
          }
        }

        v42 = v4[1];
        v43 = v84;
        v82[0] = 0;
        if (v84 < 1)
        {
LABEL_95:
          __s1 = v87;
          v86 = 0x600000000;
          llvm::SmallVectorImpl<long long>::assign(&__s1, v43, 0);
          if (v84 >= 1)
          {
            v54 = 0;
            v55 = v88[0];
            v56 = v92[0];
            v57 = v90[0];
            v58 = __s1;
            do
            {
              v59 = v55[v54];
              v60 = v56[v54];
              v61 = v57[v54];
              if (v59 < 1)
              {
                if (v60 > v61)
                {
                  v70 = v59;
                  v71 = v58[v54];
                  do
                  {
                    ++v71;
                    v60 += v70;
                  }

                  while (v60 > v61);
                  v58[v54] = v71;
                }
              }

              else if (v60 < v61)
              {
                v62 = v60 + v59;
                v63 = v62 < v61;
                if (v62 >= v61)
                {
                  v64 = 1;
                }

                else
                {
                  v64 = 2;
                }

                if (v62 >= v61)
                {
                  v61 = v62;
                }

                v65 = v64 + (v61 - v63 - v62) / v59;
                v66 = (v65 + 1) & 0xFFFFFFFFFFFFFFFELL;
                v53.i64[0] = v58[v54];
                v67 = vdupq_n_s64(v65 - 1);
                v68 = 2;
                do
                {
                  v69 = v53;
                  v53 = vaddq_s64(v53, vdupq_n_s64(1uLL));
                  v68 -= 2;
                }

                while (v66 + v68 != 2);
                v58[v54] = vaddvq_s64(vbslq_s8(vcgtq_u64(vorrq_s8(vdupq_n_s64(-v68), xmmword_25D0A0500), v67), v69, v53));
              }

              ++v54;
            }

            while (v54 < v84);
          }

          v72 = *(v24 + 8);
          v73 = *(v24 + 16);
          if (v73 == v86 && (v74 = __s1, !memcmp(__s1, *(v24 + 8), 8 * v73)))
          {
            v77 = 1;
          }

          else
          {
            v83 = 257;
            mlir::Operation::emitError(&v95, *this, v82);
            if (v95)
            {
              mlir::Diagnostic::operator<<<42ul>(&v96, "mismatch in slice shape. Expected shape: ");
            }

            v75 = mlir::InFlightDiagnostic::operator<<<llvm::SmallVector<long long,6u> &>(&v95, &__s1);
            v76 = v75;
            if (*v75)
            {
              mlir::Diagnostic::operator<<<17ul>((v75 + 1), " given shape is ");
              if (*v76)
              {
                mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>((v76 + 1), v72, v73);
              }
            }

            v77 = (v76[25] & 1) == 0;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v95);
            v74 = __s1;
          }

          if (v74 != v87)
          {
            free(v74);
          }
        }

        else
        {
          v44 = 0;
          v45 = v88[0];
          v46 = v92[0];
          v47 = v90[0];
          while (v45[v44])
          {
            v48 = v46[v44];
            if (v48 < 0)
            {
              do
              {
                v48 += *(v42 + 8 * v44);
              }

              while (v48 < 0);
              v46[v44] = v48;
            }

            v49 = v47[v44];
            v50 = *(v42 + 8 * v44);
            if (v49 < 0)
            {
              do
              {
                v49 += v50;
              }

              while (v49 < 0);
              v47[v44] = v49;
            }

            if (v45[v44] < 1)
            {
              LODWORD(v50) = v50 - 1;
              v52 = v46[v44];
              if (v50 < v52)
              {
                v52 = v50;
              }

              v46[v44] = v52;
              if (v50 >= v47[v44])
              {
                LODWORD(v50) = v47[v44];
              }
            }

            else
            {
              v51 = v46[v44];
              if (v51 >= v50)
              {
                v51 = v50;
              }

              v46[v44] = v51;
              if (v47[v44] < v50)
              {
                LODWORD(v50) = v47[v44];
              }
            }

            v47[v44++] = v50;
            v82[0] = v44;
            if (v44 == v43)
            {
              goto LABEL_95;
            }
          }

          v87[8] = 257;
          mlir::Operation::emitError(&v95, *this, &__s1);
          if (v95)
          {
            mlir::Diagnostic::operator<<<8ul>(&v96, "stride[");
          }

          v79 = mlir::InFlightDiagnostic::operator<<<long long &>(&v95, v82);
          v80 = v79;
          if (*v79)
          {
            mlir::Diagnostic::operator<<<7ul>((v79 + 1), "] is 0");
          }

          v77 = (v80[25] & 1) == 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v95);
        }

        if (v88[0] != v89)
        {
          free(v88[0]);
        }

        if (v90[0] != v91)
        {
          free(v90[0]);
        }

        if (v92[0] != v93)
        {
          free(v92[0]);
        }

        return v77;
      }
    }
  }

  v81 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::SliceUpdateOp::fold(v81);
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::fold(uint64_t a1)
{
  v1 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v2 = *(*(*a1 + 72) + 152);
  v3 = v1[2];
  if (v3)
  {
    v4 = v1[1];
    v5 = 8 * v3;
    while (*v4 != 0x8000000000000000)
    {
      ++v4;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  v6 = (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v7 = v6[2];
  if (v7)
  {
    v8 = v6[1];
    v9 = 8 * v7;
    while (*v8 != 0x8000000000000000)
    {
      ++v8;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

LABEL_11:
  if (v1 == v6)
  {
    return v2 | 4;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::ODIE::Compiler::CoreML::SliceUpdateOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 5)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 5 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::SliceUpdateOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

uint64_t mlir::ODIE::Compiler::CoreML::GatherNdOp::verify(mlir::ODIE::Compiler::CoreML::GatherNdOp *this)
{
  v41[25] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 72);
  v4 = *(*(v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  v39 = v5;
  if (!v5)
  {
    v38 = 257;
    mlir::Operation::emitError(&v40, v2, v37);
    if (v40)
    {
      mlir::Diagnostic::operator<<<24ul>(v41, "input rank must be >= 1");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
    v2 = *this;
    v3 = *(*this + 72);
  }

  v7 = *(*(v3 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v7 + 8);
  v8 = *(v7 + 16);
  v10 = *(v9 + 8 * v8 - 8);
  v36 = v10;
  v11 = v5 - v10;
  if (v5 < v10)
  {
    v38 = 257;
    mlir::Operation::emitError(&v40, v2, v37);
    if (v40)
    {
      mlir::Diagnostic::operator<<<32ul>(v41, "innermost dimension of indices ");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<long long &>(&v40, &v36);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<15ul>((v12 + 1), " > input rank ");
    }

    v14 = &v39;
LABEL_25:
    v21 = *(mlir::InFlightDiagnostic::operator<<<long long &>(v13, v14) + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
    return v21 & 1;
  }

  v15 = *(v2 - 8) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v15 + 8);
  v16 = *(v15 + 16);
  v34 = v8 + v11 - 1;
  v35 = v16;
  if (v16 != v34)
  {
    v38 = 257;
    mlir::Operation::emitError(&v40, v2, v37);
    if (v40)
    {
      mlir::Diagnostic::operator<<<16ul>(v41, "output rank is ");
    }

    v22 = mlir::InFlightDiagnostic::operator<<<long long &>(&v40, &v35);
    v13 = v22;
    if (*v22)
    {
      mlir::Diagnostic::operator<<<19ul>((v22 + 1), " expected rank is ");
    }

    v14 = &v34;
    goto LABEL_25;
  }

  if (v16 < 1)
  {
LABEL_19:
    v21 = 1;
    return v21 & 1;
  }

  v18 = 0;
  v19 = 0;
  v20 = v6 - 8 * v8 + 8 * v10;
  while (v8 - 2 < v19)
  {
    if (*(v17 + 8 * v19) != *(v20 + 8 + 8 * v19))
    {
      v33 = v19;
      v38 = 257;
      mlir::Operation::emitError(&v40, v2, v37);
      if (v40)
      {
        mlir::Diagnostic::operator<<<14ul>(v41, "output shape[");
      }

      v29 = mlir::InFlightDiagnostic::operator<<<int &>(&v40, &v33);
      v30 = v29;
      if (*v29)
      {
        mlir::Diagnostic::operator<<<6ul>((v29 + 1), "] is ");
      }

      v31 = mlir::InFlightDiagnostic::operator<<<long long const&>(v30, (v17 + 8 * v33));
      v27 = v31;
      if (*v31)
      {
        mlir::Diagnostic::operator<<<18ul>((v31 + 1), " expect it to be ");
      }

      v28 = (v20 - v18 + 8);
      goto LABEL_41;
    }

LABEL_18:
    ++v19;
    v18 -= 8;
    if (v16 == v19)
    {
      goto LABEL_19;
    }
  }

  if (*(v17 + 8 * v19) == *(v9 + 8 * v19))
  {
    goto LABEL_18;
  }

  v33 = v19;
  v38 = 257;
  mlir::Operation::emitError(&v40, v2, v37);
  if (v40)
  {
    mlir::Diagnostic::operator<<<14ul>(v41, "output shape[");
  }

  v24 = mlir::InFlightDiagnostic::operator<<<int &>(&v40, &v33);
  v25 = v24;
  if (*v24)
  {
    mlir::Diagnostic::operator<<<6ul>((v24 + 1), "] is ");
  }

  v26 = mlir::InFlightDiagnostic::operator<<<long long const&>(v25, (v17 + 8 * v33));
  v27 = v26;
  if (*v26)
  {
    mlir::Diagnostic::operator<<<18ul>((v26 + 1), " expect it to be ");
  }

  v28 = (v9 + 8 * v33);
LABEL_41:
  v32 = *(mlir::InFlightDiagnostic::operator<<<long long const&>(v27, v28) + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
  v21 = v32 ^ 1;
  return v21 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::GatherNdOp::inferReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v32[2] = *MEMORY[0x277D85DE8];
  v32[0] = a4;
  v32[1] = a5;
  if (a5 == 2)
  {
    v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v13)
    {
      if ((a4 & 6) == 2 && v13)
      {
        v13 = v13[3];
      }
    }

    else
    {
      v13 = *v13;
    }

    v15 = (v13[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = v15[1];
      v17 = v15[2];
      v18 = (*(mlir::ValueRange::dereference_iterator(v32, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v19 = v18[1];
        v20 = &v19[8 * v18[2]];
        v23 = *(v20 - 1);
        v21 = v20 - 8;
        v22 = v23;
        if (v23 <= v17)
        {
          v29 = v31;
          v30 = 0x600000000;
          llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v29, v19, v21);
          llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v29, (v16 + 8 * v22), (v16 + 8 * v17));
          v24 = v15[3];
          *&v28 = v29;
          *(&v28 + 1) = v30;
          v26 = 0;
          v27 = v24;
          v25 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v24 + 32), &v28, &v27, &v26);
          llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v25);
          if (v29 != v31)
          {
            free(v29);
          }

          return 1;
        }

        else
        {

          return mlir::emitOptionalError<char const(&)[45]>(a2, v11, "last dimension of indices must <= input.rank");
        }
      }

      else
      {

        return mlir::emitOptionalError<char const(&)[32]>(a2, v11, "indices must be a ranked tensor");
      }
    }

    else
    {

      return mlir::emitOptionalError<char const(&)[30]>(a2, a3, "input must be a ranked tensor");
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

BOOL mlir::emitOptionalError<char const(&)[32]>(void **a1, char a2, char *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v6[16] = 257;
  emitDiag(a1, 2, v6, &v7);
  if (v7)
  {
    mlir::Diagnostic::operator<<<32ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[45]>(void **a1, char a2, char *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v6[16] = 257;
  emitDiag(a1, 2, v6, &v7);
  if (v7)
  {
    mlir::Diagnostic::operator<<<45ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::GatherNdOp::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v11 = a3;
  v21[6] = *MEMORY[0x277D85DE8];
  v20 = 0x600000000;
  __src = v21;
  if (mlir::ODIE::Compiler::CoreML::GatherNdOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v20))
    {
      v13 = __src;
      v14 = __src + 8 * v20;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v13, v14);
    }

    v15 = 1;
  }

  else
  {
    v15 = mlir::emitOptionalError<char const(&)[40]>(a2, v11, "fails to infer the type of gather_nd op");
  }

  if (__src != v21)
  {
    free(__src);
  }

  return v15;
}

BOOL mlir::emitOptionalError<char const(&)[40]>(void **a1, char a2, char *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v6[16] = 257;
  emitDiag(a1, 2, v6, &v7);
  if (v7)
  {
    mlir::Diagnostic::operator<<<40ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

uint64_t mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp::verify(void ****this)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2[9];
  v4 = (*(v3[3] + 1) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  v5 = (*(v3[7] + 1) & 0xFFFFFFFFFFFFFFF8);
  v40 = v4[2];
  if (!v40)
  {
    v39 = 257;
    mlir::Operation::emitError(&v41, v2, v38);
    if (v41)
    {
      mlir::Diagnostic::operator<<<34ul>(&v42, "input rank must be >= 1, but got ");
    }

    mlir::InFlightDiagnostic::operator<<<long long &>(&v41, &v40);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
  }

  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  v7 = v5[1];
  v6 = v5[2];
  v37 = v6;
  if (v40 != v6)
  {
    v39 = 257;
    mlir::Operation::emitError(&v41, *this, v38);
    if (v41)
    {
      mlir::Diagnostic::operator<<<67ul>(&v42, "input must have the same rank as indices, but got input with rank ");
    }

    v20 = mlir::InFlightDiagnostic::operator<<<long long &>(&v41, &v40);
    v21 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<24ul>((v20 + 1), " and indices with rank ");
    }

    v22 = &v37;
    goto LABEL_30;
  }

  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_44;
  }

  v9 = v4[1];
  v8 = v4[2];
  if (v8)
  {
    v10 = 8 * v8;
    v11 = v4[1];
    while (*v11 != 0x8000000000000000)
    {
      ++v11;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_44;
  }

LABEL_13:
  if (v6)
  {
    v12 = 8 * v6;
    v13 = v7;
    while (*v13 != 0x8000000000000000)
    {
      ++v13;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_44;
  }

LABEL_17:
  v14 = (*this)[9][11];
  v41 = 0;
  v42 = 0;
  v38[0] = &v41;
  v15 = (~v14[2] & 7) != 0 ? v14 : 0;
  if (!v15)
  {
    goto LABEL_44;
  }

  v16 = v15[1] & 7;
  if (v16 == 6)
  {
    v17 = &v15[3 * v15[2]];
    v18 = (v17 + 120);
    if (v17 == -120)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v18 = &v15[2 * v16 + 2];
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v38, v18))
  {
    goto LABEL_44;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v14, &v41);
  if (v43[48])
  {
    v25 = *v41;
    if (v41 != v43)
    {
      free(v41);
    }

    v36 = v25;
    if (v25 >= -v40 && v40 > v25)
    {
      if (v40 >= 1)
      {
        v26 = 0;
        while ((v40 & (v25 >> 31)) + v25 == v26 || *(v9 + 8 * v26) == v7[v26])
        {
          if (v40 == ++v26)
          {
            goto LABEL_44;
          }
        }

        v35 = v26;
        v39 = 257;
        mlir::Operation::emitError(&v41, *this, v38);
        if (v41)
        {
          mlir::Diagnostic::operator<<<13ul>(&v42, "Input shape[");
        }

        v28 = mlir::InFlightDiagnostic::operator<<<int &>(&v41, &v35);
        v29 = v28;
        if (*v28)
        {
          mlir::Diagnostic::operator<<<6ul>((v28 + 1), "] is ");
        }

        v30 = mlir::InFlightDiagnostic::operator<<<long long const&>(v29, (v9 + 8 * v35));
        v31 = v30;
        if (*v30)
        {
          mlir::Diagnostic::operator<<<22ul>((v30 + 1), ", but indices shape [");
        }

        v32 = mlir::InFlightDiagnostic::operator<<<int &>(v31, &v35);
        v33 = v32;
        if (*v32)
        {
          mlir::Diagnostic::operator<<<6ul>((v32 + 1), "] is ");
        }

        v23 = mlir::InFlightDiagnostic::operator<<<long long const&>(v33, &v7[v35]);
        goto LABEL_31;
      }

LABEL_44:
      v24 = 1;
      return v24 & 1;
    }

    v39 = 257;
    mlir::Operation::emitError(&v41, *this, v38);
    if (v41)
    {
      mlir::Diagnostic::operator<<<14ul>(&v42, "Invalid axis ");
    }

    v27 = mlir::InFlightDiagnostic::operator<<<int &>(&v41, &v36);
    v21 = v27;
    if (*v27)
    {
      mlir::Diagnostic::operator<<<26ul>((v27 + 1), " when the input has rank ");
    }

    v22 = &v40;
LABEL_30:
    v23 = mlir::InFlightDiagnostic::operator<<<long long &>(v21, v22);
LABEL_31:
    v24 = *(v23 + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
    return v24 & 1;
  }

  v34 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::TransposeOp::fold(v34);
}

uint64_t mlir::ODIE::Compiler::CoreML::TransposeOp::fold(uint64_t a1)
{
  v1 = *(*(*a1 + 72) + 56);
  v16 = 0;
  *&v17 = &v16;
  if ((~*(v1 + 8) & 7) == 0)
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v3 = *(v1 + 8) & 7;
  if (v3 == 6)
  {
    v4 = v1 + 24 * *(v1 + 16);
    v5 = v4 + 120;
    if (v4 == -120)
    {
      return 0;
    }
  }

  else
  {
    v5 = v1 + 16 * v3 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v17, v5))
  {
    return 0;
  }

  v6 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v16, &v17);
  v15 = v17;
  if (*(v6 + 16) >= 1)
  {
    v7 = 0;
    v8 = v18;
    v9 = v19;
    do
    {
      v17 = v15;
      v18 = v8 + v7;
      v19 = v9;
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v17, &v13);
      if (v14 > 0x40)
      {
        v11 = *v13;
        MEMORY[0x25F891010]();
        if (v7 != v11)
        {
          return 0;
        }
      }

      else
      {
        if (v14)
        {
          v10 = (v13 << -v14) >> -v14;
        }

        else
        {
          v10 = 0;
        }

        if (v7 != v10)
        {
          return 0;
        }
      }

      ++v7;
    }

    while (*(v6 + 16) > v7);
  }

  return *(*(*a1 + 72) + 24) | 4;
}

BOOL mlir::ODIE::Compiler::CoreML::TransposeOp::verify(void ****this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v57[6] = *MEMORY[0x277D85DE8];
  v11 = (*this)[9][7];
  v51 = 0;
  v52 = 0;
  v55 = &v51;
  if ((~v11[2] & 7) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    return 1;
  }

  v14 = *(v12 + 1) & 7;
  if (v14 == 6)
  {
    v15 = &v12[6 * *(v12 + 2)];
    v16 = (v15 + 30);
    if (v15 == -120)
    {
      return 1;
    }
  }

  else
  {
    v16 = &v12[4 * v14 + 4];
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v55, v16))
  {
    return 1;
  }

  v17 = (*((*this)[9][3] + 1) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  v18 = *(*this - 1);
  v19 = v17[2];
  if (v19)
  {
    v20 = v17[1];
    v21 = 8 * v19;
    while (*v20 != 0x8000000000000000)
    {
      ++v20;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_15;
      }
    }

    return 1;
  }

LABEL_15:
  v22 = v18 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v18 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 8);
    v25 = 8 * v23;
    while (*v24 != 0x8000000000000000)
    {
      ++v24;
      v25 -= 8;
      if (!v25)
      {
        goto LABEL_20;
      }
    }

    return 1;
  }

LABEL_20:
  mlir::ODIE::Compiler::extract1DIntVector<int>(v11, &v51);
  if (v54)
  {
    v55 = v57;
    v56 = 0xC00000000;
    if (!v52 || (llvm::SmallVectorImpl<int>::operator=(&v55, &v51), (v54 & 1) != 0))
    {
      if (v51 != &v53)
      {
        free(v51);
      }
    }

    v26 = v55;
    if (v56)
    {
      v27 = 0;
      v29 = v17[1];
      v28 = v17[2];
      v30 = 4 * v56;
      v31 = *(v22 + 8);
      while (1)
      {
        v50 = v27;
        v32 = *(v55 + v27);
        if ((v32 & 0x80000000) != 0 || v28 <= v32)
        {
          break;
        }

        if (*(v29 + 8 * v32) != *(v31 + 8 * v27))
        {
          v49 = 257;
          mlir::Operation::emitError(&v51, *this, v48);
          if (v51)
          {
            mlir::Diagnostic::operator<<<55ul>(&v52, "mismatch in result shape and permutation. resultShape[");
          }

          v36 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v51, &v50);
          v37 = v36;
          if (*v36)
          {
            mlir::Diagnostic::operator<<<21ul>((v36 + 1), "] is expected to be ");
          }

          v35 = mlir::InFlightDiagnostic::operator<<<long long const&>(v37, (v29 + 8 * *(v26 + v27)));
          goto LABEL_42;
        }

        ++v27;
        v30 -= 4;
        if (!v30)
        {
          goto LABEL_31;
        }
      }

      v49 = 257;
      mlir::Operation::emitError(&v51, *this, v48);
      if (v51)
      {
        mlir::Diagnostic::operator<<<49ul>(&v52, "permutation must only hold values between 0 and ");
      }

      v47 = v28 - 1;
      v35 = mlir::InFlightDiagnostic::operator<<<long long>(&v51, &v47);
LABEL_42:
      v38 = *(v35 + 200);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
      v33 = (v38 & 1) == 0;
      v26 = v55;
    }

    else
    {
LABEL_31:
      v33 = 1;
    }

    if (v26 != v57)
    {
      free(v26);
    }

    return v33;
  }

  v39 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::TransposeOp::inferReturnTypes(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11);
}

BOOL mlir::ODIE::Compiler::CoreML::TransposeOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50 = *MEMORY[0x277D85DE8];
  v46[0] = a4;
  v46[1] = a5;
  if (a5 == 2)
  {
    v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v13)
    {
      if ((a4 & 6) == 2 && v13)
      {
        v13 = v13[3];
      }
    }

    else
    {
      v13 = *v13;
    }

    v15 = (v13[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {

      return mlir::emitOptionalError<char const(&)[30]>(a2, a3, "input must be a ranked tensor");
    }

    v16 = v15[2];
    v17 = mlir::ValueRange::dereference_iterator(v46, 1);
    v47[0] = 0;
    v47[1] = 0;
    *&v41 = v47;
    if ((~*(v17 + 8) & 7) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (!v18)
    {
LABEL_31:
      v47[0] = v48;
      v47[1] = 0x600000000;
      llvm::SmallVectorImpl<long long>::assign(v47, v16, 0x8000000000000000);
      v28 = v15[3];
      *&v41 = v47[0];
      *(&v41 + 1) = LODWORD(v47[1]);
      v44 = v28;
      *&v39 = 0;
      v29 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v28 + 32), &v41, &v44, &v39);
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v29);
      v30 = v47[0];
      if (v47[0] != v48)
      {
LABEL_32:
        free(v30);
      }

      return 1;
    }

    v19 = *(v18 + 8) & 7;
    if (v19 == 6)
    {
      v20 = v18 + 24 * *(v18 + 16);
      v21 = v20 + 120;
      if (v20 == -120)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v21 = v18 + 16 * v19 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v41, v21))
    {
      goto LABEL_31;
    }

    v22 = v15[1];
    v40 = 0;
    v23 = mlir::ValueRange::dereference_iterator(v46, 1);
    v47[0] = &v40;
    if ((~*(v23 + 8) & 7) != 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      v25 = *(v24 + 8) & 7;
      if (v25 == 6)
      {
        v26 = v24 + 24 * *(v24 + 16);
        v27 = v26 + 120;
        if (v26 == -120)
        {
          return mlir::emitOptionalError<char const(&)[36]>(a2, a3, "permutation must be a 1D int vector");
        }
      }

      else
      {
        v27 = v24 + 16 * v25 + 16;
      }

      if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v47, v27))
      {
        mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v40, v47);
        v39 = *v47;
        v31 = v48[0];
        v32 = v49;
        v33 = v49 - v48[0];
        if (v49 - v48[0] != v16)
        {
          return mlir::emitOptionalError<char const(&)[48]>(a2, a3, "length of permutation must match the input rank");
        }

        v34 = v48[1];
        v47[0] = v48;
        v47[1] = 0x600000000;
        llvm::SmallVectorImpl<long long>::resizeImpl<false>(v47, v16);
        v35 = v47[0];
        v41 = v39;
        v42 = v31;
        v43 = v34;
        if (v32 != v31)
        {
          v36 = v31 + 1;
          do
          {
            mlir::DenseElementsAttr::IntElementIterator::operator*(&v41, &v44);
            if (v45 > 0x40)
            {
              *v35 = *(v22 + 8 * *v44);
              MEMORY[0x25F891010]();
            }

            else
            {
              if (v45)
              {
                v37 = v44 << -v45 >> -v45;
              }

              else
              {
                v37 = 0;
              }

              *v35 = *(v22 + 8 * v37);
            }

            v42 = v36;
            ++v35;
            ++v36;
            --v33;
          }

          while (v33);
          v35 = v47[0];
        }

        v38 = mlir::RankedTensorType::get(v35, LODWORD(v47[1]), v15[3], 0);
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v38);
        v30 = v47[0];
        if (v47[0] != v48)
        {
          goto LABEL_32;
        }

        return 1;
      }
    }

    return mlir::emitOptionalError<char const(&)[36]>(a2, a3, "permutation must be a 1D int vector");
  }

  return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
}

BOOL mlir::ODIE::Compiler::CoreML::TransposeOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v20 = 0x600000000;
  __src = v21;
  if (mlir::ODIE::Compiler::CoreML::TransposeOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v20))
    {
      v13 = __src;
      v14 = __src + 8 * v20;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v13, v14);
    }

    v15 = 1;
  }

  else
  {
    v15 = mlir::emitOptionalError<char const(&)[40]>(a2, a3, "fails to infer the type of transpose op");
  }

  if (__src != v21)
  {
    free(__src);
  }

  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(mlir::ODIE::Compiler::CoreML::MaxPool2dOp *this)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v50 = 2;
  v3 = *(v2 + 72);
  v4 = v3[7];
  v5 = v3[15];
  v6 = v3[19];
  v7 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v8 = v7[2];
    if (!v8)
    {
LABEL_29:
      v57 = 257;
      mlir::Operation::emitError(&v58, v2, &v54);
      if (v58)
      {
        mlir::Diagnostic::operator<<<8ul>(&v59, "expect ");
      }

      v24 = mlir::InFlightDiagnostic::operator<<<int &>(&v58, &v50);
      if (!*v24)
      {
        goto LABEL_38;
      }

      v25 = " elements in strides";
LABEL_37:
      mlir::Diagnostic::operator<<<21ul>(v24 + 8, v25);
LABEL_38:
      v1 = (*(v24 + 200) & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v58);
      return v1;
    }

    v9 = 0;
    v10 = v7[1];
    while (v10[v9] != 0x8000000000000000)
    {
      if (v8 == ++v9)
      {
        if (v8 != 1 || *v10 != 2)
        {
          goto LABEL_29;
        }

        break;
      }
    }
  }

  v11 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_15;
  }

  v12 = v11[2];
  if (!v12)
  {
LABEL_33:
    v57 = 257;
    mlir::Operation::emitError(&v58, v2, &v54);
    if (v58)
    {
      mlir::Diagnostic::operator<<<8ul>(&v59, "expect ");
    }

    v24 = mlir::InFlightDiagnostic::operator<<<int &>(&v58, &v50);
    if (!*v24)
    {
      goto LABEL_38;
    }

    v25 = " elements in padding";
    goto LABEL_37;
  }

  v13 = 0;
  v14 = v11[1];
  while (v14[v13] != 0x8000000000000000)
  {
    if (v12 == ++v13)
    {
      if (v12 != 1 || *v14 != 2)
      {
        goto LABEL_33;
      }

      break;
    }
  }

LABEL_15:
  v15 = *(v6 + 8);
  v16 = v15 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v15 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_22;
  }

  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_40:
    v57 = 257;
    mlir::Operation::emitError(&v58, v2, &v54);
    if (v58)
    {
      mlir::Diagnostic::operator<<<8ul>(&v59, "expect ");
    }

    v27 = mlir::InFlightDiagnostic::operator<<<int &>(&v58, &v50);
    v24 = v27;
    if (*v27)
    {
      mlir::Diagnostic::operator<<<22ul>((v27 + 1), " elements in dilation");
    }

    goto LABEL_38;
  }

  v18 = 0;
  v19 = *(v16 + 8);
  while (v19[v18] != 0x8000000000000000)
  {
    if (v17 == ++v18)
    {
      if (v17 != 1 || *v19 != 2)
      {
        goto LABEL_40;
      }

      break;
    }
  }

LABEL_22:
  v58 = 0;
  v59 = 0;
  v54 = &v58;
  if ((~v15 & 7) != 0)
  {
    v20 = v6;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    goto LABEL_60;
  }

  v21 = *(v20 + 8) & 7;
  if (v21 == 6)
  {
    v22 = v20 + 24 * *(v20 + 16);
    v23 = v22 + 120;
    if (v22 == -120)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v23 = v20 + 16 * v21 + 16;
  }

  if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v54, v23))
  {
    mlir::ODIE::Compiler::extract1DIntVector<int>(v6, &v58);
    if ((v61 & 1) == 0)
    {
      goto LABEL_112;
    }

    v54 = v56;
    v55 = 0xC00000000;
    if (!v59 || (llvm::SmallVectorImpl<int>::operator=(&v54, &v58), (v61 & 1) != 0))
    {
      if (v58 != v60)
      {
        free(v58);
      }
    }

    v28 = v54;
    if (*v54 < 1 || *(v54 + 1) <= 0)
    {
      v53 = 257;
      mlir::Operation::emitError(&v58, v2, v51);
      if (v58)
      {
        mlir::Diagnostic::operator<<<21ul>(&v59, "dilation must be > 0");
      }

      v1 = (v62 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v58);
      v29 = 0;
      v28 = v54;
    }

    else
    {
      v29 = 1;
    }

    if (v28 != v56)
    {
      free(v28);
    }

    if (!v29)
    {
      return v1;
    }
  }

LABEL_60:
  v58 = 0;
  v59 = 0;
  v54 = &v58;
  if ((~*(v5 + 8) & 7) != 0)
  {
    v30 = v5;
  }

  else
  {
    v30 = 0;
  }

  if (!v30)
  {
    return 1;
  }

  v31 = *(v30 + 8) & 7;
  if (v31 == 6)
  {
    v32 = v30 + 24 * *(v30 + 16);
    v33 = v32 + 120;
    if (v32 == -120)
    {
      return 1;
    }
  }

  else
  {
    v33 = v30 + 16 * v31 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v54, v33))
  {
    return 1;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v5, &v58);
  if (v61)
  {
    v54 = v56;
    v55 = 0xC00000000;
    if (!v59 || (llvm::SmallVectorImpl<int>::operator=(&v54, &v58), (v61 & 1) != 0))
    {
      if (v58 != v60)
      {
        free(v58);
      }
    }

    v34 = v50;
    v35 = v54;
    do
    {
      v36 = *v35++;
      if (v36 < 0)
      {
        v53 = 257;
        mlir::Operation::emitError(&v58, v2, v51);
        if (v58)
        {
          mlir::Diagnostic::operator<<<21ul>(&v59, "padding must be >= 0");
        }

        v41 = 1;
        v1 = (v62 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v58);
        goto LABEL_108;
      }

      --v34;
    }

    while (v34);
    v58 = 0;
    v59 = 0;
    v51[0] = &v58;
    if ((~*(v4 + 8) & 7) != 0)
    {
      v37 = v4;
    }

    else
    {
      v37 = 0;
    }

    if (!v37)
    {
      goto LABEL_107;
    }

    v38 = *(v37 + 8) & 7;
    if (v38 == 6)
    {
      v39 = v37 + 24 * *(v37 + 16);
      v40 = v39 + 120;
      if (v39 == -120)
      {
LABEL_107:
        v41 = 0;
        goto LABEL_108;
      }
    }

    else
    {
      v40 = v37 + 16 * v38 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v51, v40))
    {
      goto LABEL_107;
    }

    mlir::ODIE::Compiler::extract1DIntVector<int>(v4, &v58);
    if ((v61 & 1) == 0)
    {
      goto LABEL_112;
    }

    v51[0] = v52;
    v51[1] = 0xC00000000;
    if (!v59 || (llvm::SmallVectorImpl<int>::operator=(v51, &v58), (v61 & 1) != 0))
    {
      if (v58 != v60)
      {
        free(v58);
      }
    }

    v42 = v51[0];
    if (*v54 <= *v51[0] / 2)
    {
      v44 = 1;
      while (v50 != v44)
      {
        v45 = *(v54 + v44);
        v46 = *(v51[0] + v44++);
        if (v45 > v46 / 2)
        {
          v43 = v44 - 1 < v50;
          goto LABEL_100;
        }
      }

      v43 = 0;
      v41 = 0;
    }

    else
    {
      v43 = 1;
LABEL_100:
      v49 = 257;
      mlir::Operation::emitError(&v58, v2, v48);
      if (v58)
      {
        mlir::Diagnostic::operator<<<35ul>(&v59, "padding must be <= kernel_size / 2");
      }

      v41 = 1;
      v1 = (v62 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v58);
      v42 = v51[0];
    }

    if (v42 != v52)
    {
      free(v42);
    }

    if (!v43)
    {
      goto LABEL_107;
    }

LABEL_108:
    if (v54 != v56)
    {
      free(v54);
    }

    if (v41)
    {
      return v1;
    }

    return 1;
  }

LABEL_112:
  v47 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::MaxPool3dOp::verify(v47);
}

uint64_t mlir::ODIE::Compiler::CoreML::MaxPool3dOp::verify(mlir::ODIE::Compiler::CoreML::MaxPool3dOp *this)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v50 = 3;
  v3 = *(v2 + 72);
  v4 = v3[7];
  v5 = v3[15];
  v6 = v3[19];
  v7 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v8 = v7[2];
    if (!v8)
    {
LABEL_29:
      v57 = 257;
      mlir::Operation::emitError(&v58, v2, &v54);
      if (v58)
      {
        mlir::Diagnostic::operator<<<8ul>(&v59, "expect ");
      }

      v24 = mlir::InFlightDiagnostic::operator<<<int &>(&v58, &v50);
      if (!*v24)
      {
        goto LABEL_38;
      }

      v25 = " elements in strides";
LABEL_37:
      mlir::Diagnostic::operator<<<21ul>(v24 + 8, v25);
LABEL_38:
      v1 = (*(v24 + 200) & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v58);
      return v1;
    }

    v9 = 0;
    v10 = v7[1];
    while (v10[v9] != 0x8000000000000000)
    {
      if (v8 == ++v9)
      {
        if (v8 != 1 || *v10 != 3)
        {
          goto LABEL_29;
        }

        break;
      }
    }
  }

  v11 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_15;
  }

  v12 = v11[2];
  if (!v12)
  {
LABEL_33:
    v57 = 257;
    mlir::Operation::emitError(&v58, v2, &v54);
    if (v58)
    {
      mlir::Diagnostic::operator<<<8ul>(&v59, "expect ");
    }

    v24 = mlir::InFlightDiagnostic::operator<<<int &>(&v58, &v50);
    if (!*v24)
    {
      goto LABEL_38;
    }

    v25 = " elements in padding";
    goto LABEL_37;
  }

  v13 = 0;
  v14 = v11[1];
  while (v14[v13] != 0x8000000000000000)
  {
    if (v12 == ++v13)
    {
      if (v12 != 1 || *v14 != 3)
      {
        goto LABEL_33;
      }

      break;
    }
  }

LABEL_15:
  v15 = *(v6 + 8);
  v16 = v15 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v15 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_22;
  }

  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_40:
    v57 = 257;
    mlir::Operation::emitError(&v58, v2, &v54);
    if (v58)
    {
      mlir::Diagnostic::operator<<<8ul>(&v59, "expect ");
    }

    v27 = mlir::InFlightDiagnostic::operator<<<int &>(&v58, &v50);
    v24 = v27;
    if (*v27)
    {
      mlir::Diagnostic::operator<<<22ul>((v27 + 1), " elements in dilation");
    }

    goto LABEL_38;
  }

  v18 = 0;
  v19 = *(v16 + 8);
  while (v19[v18] != 0x8000000000000000)
  {
    if (v17 == ++v18)
    {
      if (v17 != 1 || *v19 != 3)
      {
        goto LABEL_40;
      }

      break;
    }
  }

LABEL_22:
  v58 = 0;
  v59 = 0;
  v54 = &v58;
  if ((~v15 & 7) != 0)
  {
    v20 = v6;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    goto LABEL_60;
  }

  v21 = *(v20 + 8) & 7;
  if (v21 == 6)
  {
    v22 = v20 + 24 * *(v20 + 16);
    v23 = v22 + 120;
    if (v22 == -120)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v23 = v20 + 16 * v21 + 16;
  }

  if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v54, v23))
  {
    mlir::ODIE::Compiler::extract1DIntVector<int>(v6, &v58);
    if ((v61 & 1) == 0)
    {
      goto LABEL_112;
    }

    v54 = v56;
    v55 = 0xC00000000;
    if (!v59 || (llvm::SmallVectorImpl<int>::operator=(&v54, &v58), (v61 & 1) != 0))
    {
      if (v58 != v60)
      {
        free(v58);
      }
    }

    v28 = v54;
    if (*v54 < 1 || *(v54 + 1) <= 0)
    {
      v53 = 257;
      mlir::Operation::emitError(&v58, v2, v51);
      if (v58)
      {
        mlir::Diagnostic::operator<<<21ul>(&v59, "dilation must be > 0");
      }

      v1 = (v62 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v58);
      v29 = 0;
      v28 = v54;
    }

    else
    {
      v29 = 1;
    }

    if (v28 != v56)
    {
      free(v28);
    }

    if (!v29)
    {
      return v1;
    }
  }

LABEL_60:
  v58 = 0;
  v59 = 0;
  v54 = &v58;
  if ((~*(v5 + 8) & 7) != 0)
  {
    v30 = v5;
  }

  else
  {
    v30 = 0;
  }

  if (!v30)
  {
    return 1;
  }

  v31 = *(v30 + 8) & 7;
  if (v31 == 6)
  {
    v32 = v30 + 24 * *(v30 + 16);
    v33 = v32 + 120;
    if (v32 == -120)
    {
      return 1;
    }
  }

  else
  {
    v33 = v30 + 16 * v31 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v54, v33))
  {
    return 1;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v5, &v58);
  if (v61)
  {
    v54 = v56;
    v55 = 0xC00000000;
    if (!v59 || (llvm::SmallVectorImpl<int>::operator=(&v54, &v58), (v61 & 1) != 0))
    {
      if (v58 != v60)
      {
        free(v58);
      }
    }

    v34 = v50;
    v35 = v54;
    do
    {
      v36 = *v35++;
      if (v36 < 0)
      {
        v53 = 257;
        mlir::Operation::emitError(&v58, v2, v51);
        if (v58)
        {
          mlir::Diagnostic::operator<<<21ul>(&v59, "padding must be >= 0");
        }

        v41 = 1;
        v1 = (v62 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v58);
        goto LABEL_108;
      }

      --v34;
    }

    while (v34);
    v58 = 0;
    v59 = 0;
    v51[0] = &v58;
    if ((~*(v4 + 8) & 7) != 0)
    {
      v37 = v4;
    }

    else
    {
      v37 = 0;
    }

    if (!v37)
    {
      goto LABEL_107;
    }

    v38 = *(v37 + 8) & 7;
    if (v38 == 6)
    {
      v39 = v37 + 24 * *(v37 + 16);
      v40 = v39 + 120;
      if (v39 == -120)
      {
LABEL_107:
        v41 = 0;
        goto LABEL_108;
      }
    }

    else
    {
      v40 = v37 + 16 * v38 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v51, v40))
    {
      goto LABEL_107;
    }

    mlir::ODIE::Compiler::extract1DIntVector<int>(v4, &v58);
    if ((v61 & 1) == 0)
    {
      goto LABEL_112;
    }

    v51[0] = v52;
    v51[1] = 0xC00000000;
    if (!v59 || (llvm::SmallVectorImpl<int>::operator=(v51, &v58), (v61 & 1) != 0))
    {
      if (v58 != v60)
      {
        free(v58);
      }
    }

    v42 = v51[0];
    if (*v54 <= *v51[0] / 2)
    {
      v44 = 1;
      while (v50 != v44)
      {
        v45 = *(v54 + v44);
        v46 = *(v51[0] + v44++);
        if (v45 > v46 / 2)
        {
          v43 = v44 - 1 < v50;
          goto LABEL_100;
        }
      }

      v43 = 0;
      v41 = 0;
    }

    else
    {
      v43 = 1;
LABEL_100:
      v49 = 257;
      mlir::Operation::emitError(&v58, v2, v48);
      if (v58)
      {
        mlir::Diagnostic::operator<<<35ul>(&v59, "padding must be <= kernel_size / 2");
      }

      v41 = 1;
      v1 = (v62 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v58);
      v42 = v51[0];
    }

    if (v42 != v52)
    {
      free(v42);
    }

    if (!v43)
    {
      goto LABEL_107;
    }

LABEL_108:
    if (v54 != v56)
    {
      free(v54);
    }

    if (v41)
    {
      return v1;
    }

    return 1;
  }

LABEL_112:
  v47 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verify(v47);
}

uint64_t mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verify(mlir::ODIE::Compiler::CoreML::AvgPool2dOp *this)
{
  v53[6] = *MEMORY[0x277D85DE8];
  v1 = *this;
  v44 = 2;
  v2 = *(v1 + 72);
  v3 = v2[7];
  v4 = v2[15];
  v5 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v6 = v5[2];
    if (!v6)
    {
      return 0;
    }

    v7 = v5[1];
    v8 = 8 * v6;
    v9 = 8 * v6;
    v10 = v7;
    while (*v10 != 0x8000000000000000)
    {
      ++v10;
      v9 -= 8;
      if (!v9)
      {
        v11 = 1;
        do
        {
          v12 = *v7++;
          v11 *= v12;
          v8 -= 8;
        }

        while (v8);
        if (v11 != 2)
        {
          return 0;
        }

        break;
      }
    }
  }

  v13 = (*(v2[11] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v14 = v13[2];
    if (!v14)
    {
      return 0;
    }

    v15 = v13[1];
    v16 = 8 * v14;
    v17 = 8 * v14;
    v18 = v15;
    while (*v18 != 0x8000000000000000)
    {
      ++v18;
      v17 -= 8;
      if (!v17)
      {
        v19 = 1;
        do
        {
          v20 = *v15++;
          v19 *= v20;
          v16 -= 8;
        }

        while (v16);
        if (v19 != 2)
        {
          return 0;
        }

        break;
      }
    }
  }

  v21 = *(v4 + 8);
  v22 = v21 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v21 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_25;
  }

  v23 = *(v22 + 16);
  if (!v23)
  {
    return 0;
  }

  v24 = *(v22 + 8);
  v25 = 8 * v23;
  v26 = 8 * v23;
  v27 = v24;
  while (*v27 != 0x8000000000000000)
  {
    ++v27;
    v26 -= 8;
    if (!v26)
    {
      v28 = 1;
      do
      {
        v29 = *v24++;
        v28 *= v29;
        v25 -= 8;
      }

      while (v25);
      if (v28 != 2)
      {
        return 0;
      }

      break;
    }
  }

LABEL_25:
  v47 = 0;
  v48 = 0;
  v52[0] = &v47;
  if ((~v21 & 7) != 0)
  {
    v30 = v4;
  }

  else
  {
    v30 = 0;
  }

  if (!v30)
  {
    return 1;
  }

  v31 = *(v30 + 8) & 7;
  if (v31 == 6)
  {
    v32 = v30 + 24 * *(v30 + 16);
    v33 = v32 + 120;
    if (v32 == -120)
    {
      return 1;
    }
  }

  else
  {
    v33 = v30 + 16 * v31 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v52, v33))
  {
    return 1;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v4, &v47);
  if (v50)
  {
    v52[0] = v53;
    v52[1] = 0xC00000000;
    if (!v48 || (llvm::SmallVectorImpl<int>::operator=(v52, &v47), (v50 & 1) != 0))
    {
      if (v47 != v49)
      {
        free(v47);
      }
    }

    if ((*v52[0] & 0x80000000) != 0 || (*(v52[0] + 1) & 0x80000000) != 0)
    {
      v46[8] = 257;
      mlir::Operation::emitError(&v47, v1, v45);
      if (v47)
      {
        mlir::Diagnostic::operator<<<21ul>(&v48, "padding must be >= 0");
      }

      v4 = (v51 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
      v38 = 0;
      goto LABEL_69;
    }

    v47 = 0;
    v48 = 0;
    v45[0] = &v47;
    if ((~*(v3 + 8) & 7) != 0)
    {
      v34 = v3;
    }

    else
    {
      v34 = 0;
    }

    if (!v34)
    {
      goto LABEL_68;
    }

    v35 = *(v34 + 8) & 7;
    if (v35 == 6)
    {
      v36 = v34 + 24 * *(v34 + 16);
      v37 = v36 + 120;
      if (v36 == -120)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v37 = v34 + 16 * v35 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v45, v37))
    {
LABEL_68:
      v38 = 1;
      goto LABEL_69;
    }

    mlir::ODIE::Compiler::extract1DIntVector<int>(v3, &v47);
    if (v50)
    {
      v45[0] = v46;
      v45[1] = 0xC00000000;
      if (!v48 || (llvm::SmallVectorImpl<int>::operator=(v45, &v47), (v50 & 1) != 0))
      {
        if (v47 != v49)
        {
          free(v47);
        }
      }

      v39 = v45[0];
      if (*v52[0] <= *v45[0] / 2 && *(v52[0] + 1) <= *(v45[0] + 1) / 2)
      {
        v38 = 1;
      }

      else
      {
        v43 = 257;
        mlir::Operation::emitError(&v47, v1, v42);
        if (v47)
        {
          mlir::Diagnostic::operator<<<34ul>(&v48, "padding must be <= kernel_size / ");
        }

        v4 = (*(mlir::InFlightDiagnostic::operator<<<int &>(&v47, &v44) + 200) & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
        v38 = 0;
        v39 = v45[0];
      }

      if (v39 != v46)
      {
        free(v39);
      }

      if (v38)
      {
        goto LABEL_68;
      }

LABEL_69:
      if (v52[0] != v53)
      {
        free(v52[0]);
      }

      if (!v38)
      {
        return v4;
      }

      return 1;
    }
  }

  v41 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::AvgPool3dOp::verify(v41);
}

BOOL mlir::ODIE::Compiler::CoreML::AvgPool3dOp::verify(mlir::ODIE::Compiler::CoreML::AvgPool3dOp *this)
{
  v53[6] = *MEMORY[0x277D85DE8];
  v1 = *this;
  v44 = 3;
  v2 = *(v1 + 72);
  v3 = v2[7];
  v4 = v2[15];
  v5 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v6 = v5[2];
    if (!v6)
    {
      return 0;
    }

    v7 = v5[1];
    v8 = 8 * v6;
    v9 = 8 * v6;
    v10 = v7;
    while (*v10 != 0x8000000000000000)
    {
      ++v10;
      v9 -= 8;
      if (!v9)
      {
        v11 = 1;
        do
        {
          v12 = *v7++;
          v11 *= v12;
          v8 -= 8;
        }

        while (v8);
        if (v11 != 3)
        {
          return 0;
        }

        break;
      }
    }
  }

  v13 = (*(v2[11] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v14 = v13[2];
    if (!v14)
    {
      return 0;
    }

    v15 = v13[1];
    v16 = 8 * v14;
    v17 = 8 * v14;
    v18 = v15;
    while (*v18 != 0x8000000000000000)
    {
      ++v18;
      v17 -= 8;
      if (!v17)
      {
        v19 = 1;
        do
        {
          v20 = *v15++;
          v19 *= v20;
          v16 -= 8;
        }

        while (v16);
        if (v19 != 3)
        {
          return 0;
        }

        break;
      }
    }
  }

  v21 = *(v4 + 8);
  v22 = v21 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v21 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_25;
  }

  v23 = *(v22 + 16);
  if (!v23)
  {
    return 0;
  }

  v24 = *(v22 + 8);
  v25 = 8 * v23;
  v26 = 8 * v23;
  v27 = v24;
  while (*v27 != 0x8000000000000000)
  {
    ++v27;
    v26 -= 8;
    if (!v26)
    {
      v28 = 1;
      do
      {
        v29 = *v24++;
        v28 *= v29;
        v25 -= 8;
      }

      while (v25);
      if (v28 != 3)
      {
        return 0;
      }

      break;
    }
  }

LABEL_25:
  v47 = 0;
  v48 = 0;
  v52[0] = &v47;
  if ((~v21 & 7) != 0)
  {
    v30 = v4;
  }

  else
  {
    v30 = 0;
  }

  if (!v30)
  {
    return 1;
  }

  v31 = *(v30 + 8) & 7;
  if (v31 == 6)
  {
    v32 = v30 + 24 * *(v30 + 16);
    v33 = v32 + 120;
    if (v32 == -120)
    {
      return 1;
    }
  }

  else
  {
    v33 = v30 + 16 * v31 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v52, v33))
  {
    return 1;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v4, &v47);
  if (v50)
  {
    v52[0] = v53;
    v52[1] = 0xC00000000;
    if (!v48 || (llvm::SmallVectorImpl<int>::operator=(v52, &v47), (v50 & 1) != 0))
    {
      if (v47 != v49)
      {
        free(v47);
      }
    }

    if ((*v52[0] & 0x80000000) != 0 || (*(v52[0] + 1) & 0x80000000) != 0)
    {
      v46[8] = 257;
      mlir::Operation::emitError(&v47, v1, v45);
      if (v47)
      {
        mlir::Diagnostic::operator<<<21ul>(&v48, "padding must be >= 0");
      }

      v4 = (v51 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
      v38 = 0;
      goto LABEL_69;
    }

    v47 = 0;
    v48 = 0;
    v45[0] = &v47;
    if ((~*(v3 + 8) & 7) != 0)
    {
      v34 = v3;
    }

    else
    {
      v34 = 0;
    }

    if (!v34)
    {
      goto LABEL_68;
    }

    v35 = *(v34 + 8) & 7;
    if (v35 == 6)
    {
      v36 = v34 + 24 * *(v34 + 16);
      v37 = v36 + 120;
      if (v36 == -120)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v37 = v34 + 16 * v35 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v45, v37))
    {
LABEL_68:
      v38 = 1;
      goto LABEL_69;
    }

    mlir::ODIE::Compiler::extract1DIntVector<int>(v3, &v47);
    if (v50)
    {
      v45[0] = v46;
      v45[1] = 0xC00000000;
      if (!v48 || (llvm::SmallVectorImpl<int>::operator=(v45, &v47), (v50 & 1) != 0))
      {
        if (v47 != v49)
        {
          free(v47);
        }
      }

      v39 = v45[0];
      if (*v52[0] <= *v45[0] / 3 && *(v52[0] + 1) <= *(v45[0] + 1) / 3)
      {
        v38 = 1;
      }

      else
      {
        v43 = 257;
        mlir::Operation::emitError(&v47, v1, v42);
        if (v47)
        {
          mlir::Diagnostic::operator<<<34ul>(&v48, "padding must be <= kernel_size / ");
        }

        v4 = (*(mlir::InFlightDiagnostic::operator<<<int &>(&v47, &v44) + 200) & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
        v38 = 0;
        v39 = v45[0];
      }

      if (v39 != v46)
      {
        free(v39);
      }

      if (v38)
      {
        goto LABEL_68;
      }

LABEL_69:
      if (v52[0] != v53)
      {
        free(v52[0]);
      }

      if (!v38)
      {
        return v4;
      }

      return 1;
    }
  }

  v41 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::ReadHandleOp::verify(v41);
}

uint64_t mlir::ODIE::Compiler::CoreML::ReadHandleOp::verify(mlir::ODIE::Compiler::CoreML::ReadHandleOp *this)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *((*(*(*(v1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  v3 = *(v1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (v3 == v2)
  {
    return 1;
  }

  v13 = 257;
  mlir::Operation::emitError(&v16, v1, v12);
  if (v16)
  {
    mlir::Diagnostic::operator<<<28ul>(v17, "output type expected to be ");
    if (v16)
    {
      v14 = 4;
      v15 = v2;
      v5 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v14, 1);
      v6 = v18 + 24 * v19;
      v7 = *v5;
      *(v6 + 16) = *(v5 + 16);
      *v6 = v7;
      ++v19;
      if (v16)
      {
        mlir::Diagnostic::operator<<<7ul>(v17, ", got ");
        if (v16)
        {
          v14 = 4;
          v15 = v3;
          v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v14, 1);
          v9 = v18 + 24 * v19;
          v10 = *v8;
          *(v9 + 16) = *(v8 + 16);
          *v9 = v10;
          ++v19;
        }
      }
    }
  }

  v4 = (v20 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  return v4;
}

void mlir::ODIE::Compiler::CoreML::ReadHandleOp::getInputIntents(mlir::ODIE::Compiler::CoreML::ReadHandleOp *this@<X0>, uint64_t a2@<X8>)
{
  v7[6] = *MEMORY[0x277D85DE8];
  __src[0] = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 1uLL);
  __src[1] = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 1uLL);
  v5 = v7;
  v6 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::append<mlir::ODIE::Compiler::CoreML::IntentAttr const*,void>(&v5, __src, &v5);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v6)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v5);
  }

  *(a2 + 64) = 1;
  if (v5 != v7)
  {
    free(v5);
  }
}

void mlir::ODIE::Compiler::CoreML::ReadHandleOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::ReadHandleOp *this@<X0>, uint64_t a2@<X8>)
{
  v7[6] = *MEMORY[0x277D85DE8];
  __src[0] = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 0);
  __src[1] = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 1uLL);
  v5 = v7;
  v6 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::append<mlir::ODIE::Compiler::CoreML::IntentAttr const*,void>(&v5, __src, &v5);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v6)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v5);
  }

  *(a2 + 64) = 1;
  if (v5 != v7)
  {
    free(v5);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::WriteHandleOp::verify(mlir::ODIE::Compiler::CoreML::WriteHandleOp *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(v1 + 72);
  v3 = *((*(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v4 == v3)
  {
    return 1;
  }

  v14 = 257;
  mlir::Operation::emitError(&v17, v1, v13);
  if (v17)
  {
    mlir::Diagnostic::operator<<<26ul>(v18, "data type expected to be ");
    if (v17)
    {
      v15 = 4;
      v16 = v3;
      v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
      v7 = v19 + 24 * v20;
      v8 = *v6;
      *(v7 + 16) = *(v6 + 16);
      *v7 = v8;
      ++v20;
      if (v17)
      {
        mlir::Diagnostic::operator<<<7ul>(v18, ", got ");
        if (v17)
        {
          v15 = 4;
          v16 = v4;
          v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
          v10 = v19 + 24 * v20;
          v11 = *v9;
          *(v10 + 16) = *(v9 + 16);
          *v10 = v11;
          ++v20;
        }
      }
    }
  }

  v5 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v5;
}

void mlir::ODIE::Compiler::CoreML::WriteHandleOp::getInputIntents(mlir::ODIE::Compiler::CoreML::WriteHandleOp *this@<X0>, uint64_t a2@<X8>)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v4[0] = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 1uLL);
  v4[1] = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 3uLL);
  v4[2] = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 1uLL);
  v5 = v7;
  v6 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::append<mlir::ODIE::Compiler::CoreML::IntentAttr const*,void>(&v5, v4, &v5);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v6)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v5);
  }

  *(a2 + 64) = 1;
  if (v5 != v7)
  {
    free(v5);
  }
}

void mlir::ODIE::Compiler::CoreML::WriteHandleOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::WriteHandleOp *this@<X0>, uint64_t a2@<X8>)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v3 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 1uLL);
  v4 = v6;
  v5 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::append<mlir::ODIE::Compiler::CoreML::IntentAttr const*,void>(&v4, &v3, &v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v5)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v4);
  }

  *(a2 + 64) = 1;
  if (v4 != v6)
  {
    free(v4);
  }
}

void mlir::ODIE::Compiler::CoreML::CreateTokenOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::CreateTokenOp *this@<X0>, uint64_t a2@<X8>)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v3 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 0);
  v4 = v6;
  v5 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::append<mlir::ODIE::Compiler::CoreML::IntentAttr const*,void>(&v4, &v3, &v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v5)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v4);
  }

  *(a2 + 64) = 1;
  if (v4 != v6)
  {
    free(v4);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::JoinTokenOp::verify(mlir::ODIE::Compiler::CoreML::JoinTokenOp **this)
{
  v21[6] = *MEMORY[0x277D85DE8];
  __src = *(mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 0) + 24);
  v19 = v21;
  v20 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v19, &__src, v18);
  v2 = 1;
  ODSOperands = mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 1u);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v19, ODSOperands, 0, ODSOperands, v4);
  if (v20)
  {
    v5 = v19;
    v6 = 8 * v20;
    while (1)
    {
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v5);
      if (HandleForToken)
      {
        break;
      }

      ++v5;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    if (!v20)
    {
LABEL_14:
      v2 = 1;
      goto LABEL_15;
    }

    v8 = HandleForToken;
    v9 = v19;
    v10 = 8 * v20;
    while (1)
    {
      v11 = *v9;
      v12 = mlir::ODIE::Compiler::getHandleForToken(*v9);
      if (v12 && v12 != v8)
      {
        break;
      }

      ++v9;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    v15 = v12;
    v16[16] = 257;
    mlir::Operation::emitError(&__src, *this, v16);
    if (__src)
    {
      mlir::Diagnostic::operator<<<23ul>(v18, "expected input token '");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v18, v11);
        if (__src)
        {
          mlir::Diagnostic::operator<<<27ul>(v18, "' to represent state for '");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v18, v8);
            if (__src)
            {
              mlir::Diagnostic::operator<<<30ul>(v18, "', found that it represents '");
              if (__src)
              {
                mlir::Diagnostic::operator<<(v18, v15);
                if (__src)
                {
                  mlir::Diagnostic::operator<<<2ul>(v18, "'");
                }
              }
            }
          }
        }
      }
    }

    v2 = (v18[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

LABEL_15:
  if (v19 != v21)
  {
    free(v19);
  }

  return v2;
}

void mlir::ODIE::Compiler::CoreML::JoinTokenOp::getInputIntents(mlir::ODIE::Compiler::CoreML::JoinTokenOp *this@<X0>, uint64_t a2@<X8>)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v3 = *(*this + 36);
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 1uLL);
  v5 = v7;
  v6 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v5, v3, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v6)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v5);
  }

  *(a2 + 64) = 1;
  if (v5 != v7)
  {
    free(v5);
  }
}

void mlir::ODIE::Compiler::CoreML::JoinTokenOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::JoinTokenOp *this@<X0>, uint64_t a2@<X8>)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v3 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 1uLL);
  v4 = v6;
  v5 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::append<mlir::ODIE::Compiler::CoreML::IntentAttr const*,void>(&v4, &v3, &v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v5)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v4);
  }

  *(a2 + 64) = 1;
  if (v4 != v6)
  {
    free(v4);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::TileOp::fold(uint64_t a1)
{
  v1 = *(*a1 + 72);
  v2 = *(v1 + 24);
  v3 = (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v4 = v3[2];
    if (v4)
    {
      v5 = v3[1];
      v6 = 8 * v4;
      while (*v5 != 0x8000000000000000)
      {
        ++v5;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v7 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v8 = v7[2];
        if (v8)
        {
          v9 = v7[1];
          v10 = 8 * v8;
          while (*v9 != 0x8000000000000000)
          {
            ++v9;
            v10 -= 8;
            if (!v10)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          if (v3 == v7)
          {
            return v2 | 4;
          }
        }
      }
    }
  }

  v11 = *(v1 + 56);
  v24 = 0;
  *&v25 = &v24;
  if ((~*(v11 + 8) & 7) == 0)
  {
    v11 = 0;
  }

  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = v11 + 24 * *(v11 + 16);
    v14 = v13 + 120;
    if (v13 == -120)
    {
      return 0;
    }
  }

  else
  {
    v14 = v11 + 16 * v12 + 16;
  }

  if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v25, v14))
  {
    mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v24, &v25);
    v23 = v25;
    if (v3[2] >= 1)
    {
      v15 = 0;
      v16 = v26;
      v17 = v27;
      while (1)
      {
        v25 = v23;
        v26 = v16 + v15;
        v27 = v17;
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v25, &v21);
        if (v22 > 0x40)
        {
          v19 = *v21;
          MEMORY[0x25F891010]();
          if (v19 != 1)
          {
            return 0;
          }
        }

        else
        {
          if (v22)
          {
            v18 = (v21 << -v22) >> -v22 == 1;
          }

          else
          {
            v18 = 0;
          }

          if (!v18)
          {
            return 0;
          }
        }

        if (v3[2] <= ++v15)
        {
          return v2 | 4;
        }
      }
    }

    return v2 | 4;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::TileOp::verify(mlir::ODIE::Compiler::CoreML::TileOp *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *this;
  if (**((*(*(*(v1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8) + 8) == *((*(*(*(v1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    return 1;
  }

  v4[16] = 257;
  mlir::Operation::emitError(&v5, v1, v4);
  if (v5)
  {
    mlir::Diagnostic::operator<<<55ul>(v6, "number of elements in dims must be equal to input rank");
  }

  v2 = (v6[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v5);
  return v2;
}

BOOL mlir::ODIE::Compiler::CoreML::AwaitOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2 && v12)
      {
        v12 = v12[3];
      }
    }

    else
    {
      v12 = *v12;
    }

    v14 = (v12[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
    {
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v14[1]);
      return 1;
    }

    else
    {
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[27]>(a2, a3, "expected exactly 1 operand");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::Conv2dOp::verify(mlir::ODIE::Compiler::CoreML::Conv2dOp *this)
{
  v24[25] = *MEMORY[0x277D85DE8];
  v1 = *this;
  v22 = 2;
  v2 = *(v1 + 72);
  v3 = (*(v2[11] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v4 = v3[2];
    if (!v4)
    {
LABEL_23:
      v21 = 257;
      mlir::Operation::emitError(&v23, v1, v20);
      if (v23)
      {
        mlir::Diagnostic::operator<<<8ul>(v24, "expect ");
      }

      v16 = mlir::InFlightDiagnostic::operator<<<int &>(&v23, &v22);
      if (!*v16)
      {
        goto LABEL_32;
      }

      v17 = " elements in strides";
LABEL_31:
      mlir::Diagnostic::operator<<<21ul>(v16 + 8, v17);
      goto LABEL_32;
    }

    v5 = 0;
    v6 = v3[1];
    while (v6[v5] != 0x8000000000000000)
    {
      if (v4 == ++v5)
      {
        if (v4 != 1 || *v6 != 2)
        {
          goto LABEL_23;
        }

        break;
      }
    }
  }

  v7 = (*(v2[15] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_15;
  }

  v8 = v7[2];
  if (!v8)
  {
LABEL_27:
    v21 = 257;
    mlir::Operation::emitError(&v23, v1, v20);
    if (v23)
    {
      mlir::Diagnostic::operator<<<8ul>(v24, "expect ");
    }

    v16 = mlir::InFlightDiagnostic::operator<<<int &>(&v23, &v22);
    if (!*v16)
    {
      goto LABEL_32;
    }

    v17 = " elements in padding";
    goto LABEL_31;
  }

  v9 = 0;
  v10 = v7[1];
  while (v10[v9] != 0x8000000000000000)
  {
    if (v8 == ++v9)
    {
      if (v8 != 1 || *v10 != 2)
      {
        goto LABEL_27;
      }

      break;
    }
  }

LABEL_15:
  v11 = (*(v2[19] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = v11[2];
    if (v12)
    {
      v13 = 0;
      v14 = v11[1];
      while (v14[v13] != 0x8000000000000000)
      {
        if (v12 == ++v13)
        {
          if (v12 != 1 || *v14 != 2)
          {
            goto LABEL_34;
          }

          goto LABEL_22;
        }
      }

      goto LABEL_22;
    }

LABEL_34:
    v21 = 257;
    mlir::Operation::emitError(&v23, v1, v20);
    if (v23)
    {
      mlir::Diagnostic::operator<<<8ul>(v24, "expect ");
    }

    v19 = mlir::InFlightDiagnostic::operator<<<int &>(&v23, &v22);
    v16 = v19;
    if (*v19)
    {
      mlir::Diagnostic::operator<<<22ul>((v19 + 1), " elements in dilation");
    }

LABEL_32:
    v15 = *(v16 + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
    return v15 & 1;
  }

LABEL_22:
  v15 = 1;
  return v15 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::Conv3dOp::verify(mlir::ODIE::Compiler::CoreML::Conv3dOp *this)
{
  v24[25] = *MEMORY[0x277D85DE8];
  v1 = *this;
  v22 = 3;
  v2 = *(v1 + 72);
  v3 = (*(v2[11] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v4 = v3[2];
    if (!v4)
    {
LABEL_23:
      v21 = 257;
      mlir::Operation::emitError(&v23, v1, v20);
      if (v23)
      {
        mlir::Diagnostic::operator<<<8ul>(v24, "expect ");
      }

      v16 = mlir::InFlightDiagnostic::operator<<<int &>(&v23, &v22);
      if (!*v16)
      {
        goto LABEL_32;
      }

      v17 = " elements in strides";
LABEL_31:
      mlir::Diagnostic::operator<<<21ul>(v16 + 8, v17);
      goto LABEL_32;
    }

    v5 = 0;
    v6 = v3[1];
    while (v6[v5] != 0x8000000000000000)
    {
      if (v4 == ++v5)
      {
        if (v4 != 1 || *v6 != 3)
        {
          goto LABEL_23;
        }

        break;
      }
    }
  }

  v7 = (*(v2[15] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_15;
  }

  v8 = v7[2];
  if (!v8)
  {
LABEL_27:
    v21 = 257;
    mlir::Operation::emitError(&v23, v1, v20);
    if (v23)
    {
      mlir::Diagnostic::operator<<<8ul>(v24, "expect ");
    }

    v16 = mlir::InFlightDiagnostic::operator<<<int &>(&v23, &v22);
    if (!*v16)
    {
      goto LABEL_32;
    }

    v17 = " elements in padding";
    goto LABEL_31;
  }

  v9 = 0;
  v10 = v7[1];
  while (v10[v9] != 0x8000000000000000)
  {
    if (v8 == ++v9)
    {
      if (v8 != 1 || *v10 != 3)
      {
        goto LABEL_27;
      }

      break;
    }
  }

LABEL_15:
  v11 = (*(v2[19] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = v11[2];
    if (v12)
    {
      v13 = 0;
      v14 = v11[1];
      while (v14[v13] != 0x8000000000000000)
      {
        if (v12 == ++v13)
        {
          if (v12 != 1 || *v14 != 3)
          {
            goto LABEL_34;
          }

          goto LABEL_22;
        }
      }

      goto LABEL_22;
    }

LABEL_34:
    v21 = 257;
    mlir::Operation::emitError(&v23, v1, v20);
    if (v23)
    {
      mlir::Diagnostic::operator<<<8ul>(v24, "expect ");
    }

    v19 = mlir::InFlightDiagnostic::operator<<<int &>(&v23, &v22);
    v16 = v19;
    if (*v19)
    {
      mlir::Diagnostic::operator<<<22ul>((v19 + 1), " elements in dilation");
    }

LABEL_32:
    v15 = *(v16 + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
    return v15 & 1;
  }

LABEL_22:
  v15 = 1;
  return v15 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp::verify(mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp *this)
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v36 = 2;
  v2 = *(v1 + 72);
  v3 = (*(v2[11] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v4 = v3[2];
    if (!v4)
    {
LABEL_37:
      v39 = 257;
      mlir::Operation::emitError(&v41, v1, v37);
      if (v41)
      {
        mlir::Diagnostic::operator<<<8ul>(v42, "expect ");
      }

      v21 = mlir::InFlightDiagnostic::operator<<<int &>(&v41, &v36);
      if (!*v21)
      {
        goto LABEL_46;
      }

      v22 = " elements in strides";
LABEL_45:
      mlir::Diagnostic::operator<<<21ul>(v21 + 8, v22);
LABEL_46:
      v23 = *(v21 + 200);
LABEL_47:
      v20 = v23 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
      return v20 & 1;
    }

    v5 = 0;
    v6 = v3[1];
    while (v6[v5] != 0x8000000000000000)
    {
      if (v4 == ++v5)
      {
        if (v4 != 1 || *v6 != 2)
        {
          goto LABEL_37;
        }

        break;
      }
    }
  }

  v7 = (*(v2[15] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_15;
  }

  v8 = v7[2];
  if (!v8)
  {
LABEL_41:
    v39 = 257;
    mlir::Operation::emitError(&v41, v1, v37);
    if (v41)
    {
      mlir::Diagnostic::operator<<<8ul>(v42, "expect ");
    }

    v21 = mlir::InFlightDiagnostic::operator<<<int &>(&v41, &v36);
    if (!*v21)
    {
      goto LABEL_46;
    }

    v22 = " elements in padding";
    goto LABEL_45;
  }

  v9 = 0;
  v10 = v7[1];
  while (v10[v9] != 0x8000000000000000)
  {
    if (v8 == ++v9)
    {
      if (v8 != 1 || *v10 != 2)
      {
        goto LABEL_41;
      }

      break;
    }
  }

LABEL_15:
  v11 = (*(v2[19] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = v11[2];
    if (!v12)
    {
LABEL_49:
      v39 = 257;
      mlir::Operation::emitError(&v41, v1, v37);
      if (v41)
      {
        mlir::Diagnostic::operator<<<8ul>(v42, "expect ");
      }

      v25 = mlir::InFlightDiagnostic::operator<<<int &>(&v41, &v36);
      v21 = v25;
      if (*v25)
      {
        mlir::Diagnostic::operator<<<22ul>((v25 + 1), " elements in dilation");
      }

      goto LABEL_46;
    }

    v13 = 0;
    v14 = v11[1];
    while (v14[v13] != 0x8000000000000000)
    {
      if (v12 == ++v13)
      {
        if (v12 != 1 || *v14 != 2)
        {
          goto LABEL_49;
        }

        break;
      }
    }
  }

  v15 = (*(v2[23] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_29;
  }

  v16 = v15[2];
  if (!v16)
  {
LABEL_53:
    v39 = 257;
    mlir::Operation::emitError(&v41, v1, v37);
    if (v41)
    {
      mlir::Diagnostic::operator<<<8ul>(v42, "expect ");
    }

    v34[0] = v36 + 2;
    v26 = mlir::InFlightDiagnostic::operator<<<int>(&v41, v34);
    v21 = v26;
    if (*v26)
    {
      mlir::Diagnostic::operator<<<26ul>((v26 + 1), " elements in output_shape");
    }

    goto LABEL_46;
  }

  v17 = 0;
  v18 = v15[1];
  while (v18[v17] != 0x8000000000000000)
  {
    if (v16 == ++v17)
    {
      if (v16 != 1 || *v18 != 4)
      {
        goto LABEL_53;
      }

      break;
    }
  }

LABEL_29:
  v19 = *(*((*(v2[3] + 8) & 0xFFFFFFFFFFFFFFF8) + 8) + 8);
  if (v19 == 0x8000000000000000 || (mlir::ODIE::Compiler::extract1DIntVector<int>(v2[27], v37), v40 != 1))
  {
LABEL_59:
    if (*(v1 + 36))
    {
      v27 = v1 - 16;
    }

    else
    {
      v27 = 0;
    }

    v28 = (*(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
    if ((*v28)[17] != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || ((v29 = **((*(*(*(v1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8), v30 = *v28[1], v30 == 0x8000000000000000) ? (v31 = 0) : (v31 = v30), v29 != 0x8000000000000000 ? (v32 = v30 == 0x8000000000000000) : (v29 = 0, v32 = 1), !v32 ? (v33 = v29 == v31) : (v33 = 1), v33))
    {
      v20 = 1;
      return v20 & 1;
    }

    v39 = 257;
    mlir::Operation::emitError(&v41, v1, v37);
    if (v41)
    {
      mlir::Diagnostic::operator<<<61ul>(v42, "First dimension should match for input and output in the op.");
    }

    v23 = v43;
    goto LABEL_47;
  }

  if (!(v19 % *v37[0]))
  {
    if (v37[0] != v38)
    {
      free(v37[0]);
    }

    goto LABEL_59;
  }

  v35 = 257;
  mlir::Operation::emitError(&v41, v1, v34);
  if (v41)
  {
    mlir::Diagnostic::operator<<<77ul>(v42, "Number of input channels should be divisible by groupSize in conv_transpose.");
  }

  v20 = v43 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
  if ((v40 & 1) != 0 && v37[0] != v38)
  {
    free(v37[0]);
  }

  return v20 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConvTranspose3dOp::verify(mlir::ODIE::Compiler::CoreML::ConvTranspose3dOp *this)
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v36 = 3;
  v2 = *(v1 + 72);
  v3 = (*(v2[11] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v4 = v3[2];
    if (!v4)
    {
LABEL_37:
      v39 = 257;
      mlir::Operation::emitError(&v41, v1, v37);
      if (v41)
      {
        mlir::Diagnostic::operator<<<8ul>(v42, "expect ");
      }

      v21 = mlir::InFlightDiagnostic::operator<<<int &>(&v41, &v36);
      if (!*v21)
      {
        goto LABEL_46;
      }

      v22 = " elements in strides";
LABEL_45:
      mlir::Diagnostic::operator<<<21ul>(v21 + 8, v22);
LABEL_46:
      v23 = *(v21 + 200);
LABEL_47:
      v20 = v23 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
      return v20 & 1;
    }

    v5 = 0;
    v6 = v3[1];
    while (v6[v5] != 0x8000000000000000)
    {
      if (v4 == ++v5)
      {
        if (v4 != 1 || *v6 != 3)
        {
          goto LABEL_37;
        }

        break;
      }
    }
  }

  v7 = (*(v2[15] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_15;
  }

  v8 = v7[2];
  if (!v8)
  {
LABEL_41:
    v39 = 257;
    mlir::Operation::emitError(&v41, v1, v37);
    if (v41)
    {
      mlir::Diagnostic::operator<<<8ul>(v42, "expect ");
    }

    v21 = mlir::InFlightDiagnostic::operator<<<int &>(&v41, &v36);
    if (!*v21)
    {
      goto LABEL_46;
    }

    v22 = " elements in padding";
    goto LABEL_45;
  }

  v9 = 0;
  v10 = v7[1];
  while (v10[v9] != 0x8000000000000000)
  {
    if (v8 == ++v9)
    {
      if (v8 != 1 || *v10 != 3)
      {
        goto LABEL_41;
      }

      break;
    }
  }

LABEL_15:
  v11 = (*(v2[19] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = v11[2];
    if (!v12)
    {
LABEL_49:
      v39 = 257;
      mlir::Operation::emitError(&v41, v1, v37);
      if (v41)
      {
        mlir::Diagnostic::operator<<<8ul>(v42, "expect ");
      }

      v25 = mlir::InFlightDiagnostic::operator<<<int &>(&v41, &v36);
      v21 = v25;
      if (*v25)
      {
        mlir::Diagnostic::operator<<<22ul>((v25 + 1), " elements in dilation");
      }

      goto LABEL_46;
    }

    v13 = 0;
    v14 = v11[1];
    while (v14[v13] != 0x8000000000000000)
    {
      if (v12 == ++v13)
      {
        if (v12 != 1 || *v14 != 3)
        {
          goto LABEL_49;
        }

        break;
      }
    }
  }

  v15 = (*(v2[23] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_29;
  }

  v16 = v15[2];
  if (!v16)
  {
LABEL_53:
    v39 = 257;
    mlir::Operation::emitError(&v41, v1, v37);
    if (v41)
    {
      mlir::Diagnostic::operator<<<8ul>(v42, "expect ");
    }

    v34[0] = v36 + 2;
    v26 = mlir::InFlightDiagnostic::operator<<<int>(&v41, v34);
    v21 = v26;
    if (*v26)
    {
      mlir::Diagnostic::operator<<<26ul>((v26 + 1), " elements in output_shape");
    }

    goto LABEL_46;
  }

  v17 = 0;
  v18 = v15[1];
  while (v18[v17] != 0x8000000000000000)
  {
    if (v16 == ++v17)
    {
      if (v16 != 1 || *v18 != 5)
      {
        goto LABEL_53;
      }

      break;
    }
  }

LABEL_29:
  v19 = *(*((*(v2[3] + 8) & 0xFFFFFFFFFFFFFFF8) + 8) + 8);
  if (v19 == 0x8000000000000000 || (mlir::ODIE::Compiler::extract1DIntVector<int>(v2[27], v37), v40 != 1))
  {
LABEL_59:
    if (*(v1 + 36))
    {
      v27 = v1 - 16;
    }

    else
    {
      v27 = 0;
    }

    v28 = (*(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
    if ((*v28)[17] != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || ((v29 = **((*(*(*(v1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8), v30 = *v28[1], v30 == 0x8000000000000000) ? (v31 = 0) : (v31 = v30), v29 != 0x8000000000000000 ? (v32 = v30 == 0x8000000000000000) : (v29 = 0, v32 = 1), !v32 ? (v33 = v29 == v31) : (v33 = 1), v33))
    {
      v20 = 1;
      return v20 & 1;
    }

    v39 = 257;
    mlir::Operation::emitError(&v41, v1, v37);
    if (v41)
    {
      mlir::Diagnostic::operator<<<61ul>(v42, "First dimension should match for input and output in the op.");
    }

    v23 = v43;
    goto LABEL_47;
  }

  if (!(v19 % *v37[0]))
  {
    if (v37[0] != v38)
    {
      free(v37[0]);
    }

    goto LABEL_59;
  }

  v35 = 257;
  mlir::Operation::emitError(&v41, v1, v34);
  if (v41)
  {
    mlir::Diagnostic::operator<<<77ul>(v42, "Number of input channels should be divisible by groupSize in conv_transpose.");
  }

  v20 = v43 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
  if ((v40 & 1) != 0 && v37[0] != v38)
  {
    free(v37[0]);
  }

  return v20 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::inferInnerType(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *a1;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *((*(v6 + 8))(v6, a1) + 8);
  v8 = *v6;
  v11[0] = 0;
  v11[16] = 0;
  v9 = v8(v6, a1, v11, v7);
  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a2, v9);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::CreateComplexOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v11)
  {
    if ((a4 & 6) == 2 && v11)
    {
      v11 = v11[3];
    }
  }

  else
  {
    v11 = *v11;
  }

  v12 = (v11[1] & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = *v12;
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14);
  }

  else
  {
    v15 = 0;
  }

  v20[0] = (*(v15 + 8))(v15, v12);
  v16 = mlir::detail::TypeUniquer::get<mlir::ComplexType,mlir::Type &>(*(**v20[0] + 32), v20);
  v17 = *v15;
  LOBYTE(v20[0]) = 0;
  v21 = 0;
  v18 = v17(v15, v12, v20, v16);
  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v18);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOp::decomposeComplexOperation(mlir::ODIE::Compiler::CoreML::AddOp *this, mlir::OpBuilder *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v33 = xmmword_25D0A0500;
  if (mlir::ODIE::Compiler::CoreML::hasComplexInputs(v4, &v33, 2))
  {
    PartsOfComplex = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 24), *(*this + 24));
    v32 = v6;
    v7 = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 56), *(*this + 24));
    v31 = v8;
    v9 = *(*this + 24);
    v10 = *(PartsOfComplex - 1);
    v11 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a2, *(**v9 + 32));
    *&v33 = v9;
    *(&v33 + 1) = v11;
    v34 = v36;
    v35 = 0x400000000;
    v37 = v39;
    v38 = 0x400000000;
    v40 = v42;
    v41 = 0x400000000;
    v43 = 4;
    v44 = &v46;
    v45 = 0x100000000;
    v47 = &v49;
    v48 = 0x100000000;
    v50 = 0;
    v51 = 0;
    v52 = &mlir::detail::TypeIDResolver<void,void>::id;
    v53 = 0;
    v54 = 0;
    mlir::ODIE::Compiler::CoreML::AddOp::build(v11, &v33, v10 & 0xFFFFFFFFFFFFFFF8, PartsOfComplex - 16, v7 - 16);
    v12 = mlir::Operation::create(&v33);
    mlir::OpBuilder::insert(a2, v12);
    v13 = *(*(v12 + 6) + 16);
    mlir::OperationState::~OperationState(&v33);
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v30 = v14;
    v15 = *(*this + 24);
    v16 = *(PartsOfComplex - 1);
    v17 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a2, *(**v15 + 32));
    *&v33 = v15;
    *(&v33 + 1) = v17;
    v34 = v36;
    v35 = 0x400000000;
    v37 = v39;
    v38 = 0x400000000;
    v40 = v42;
    v41 = 0x400000000;
    v43 = 4;
    v44 = &v46;
    v45 = 0x100000000;
    v47 = &v49;
    v48 = 0x100000000;
    v50 = 0;
    v51 = 0;
    v52 = &mlir::detail::TypeIDResolver<void,void>::id;
    v53 = 0;
    v54 = 0;
    mlir::ODIE::Compiler::CoreML::AddOp::build(v17, &v33, v16 & 0xFFFFFFFFFFFFFFF8, v32 - 16, v31 - 16);
    v18 = mlir::Operation::create(&v33);
    mlir::OpBuilder::insert(a2, v18);
    v19 = *(*(v18 + 6) + 16);
    mlir::OperationState::~OperationState(&v33);
    if (v19 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
    {
      v18 = 0;
    }

    v20 = *(*this + 24);
    v21 = *(*this - 8);
    Complex = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateComplexOp>(a2, *(**v20 + 32));
    *&v33 = v20;
    *(&v33 + 1) = Complex;
    v34 = v36;
    v35 = 0x400000000;
    v37 = v39;
    v38 = 0x400000000;
    v40 = v42;
    v41 = 0x400000000;
    v43 = 4;
    v44 = &v46;
    v45 = 0x100000000;
    v47 = &v49;
    v48 = 0x100000000;
    v50 = 0;
    v51 = 0;
    v52 = &mlir::detail::TypeIDResolver<void,void>::id;
    v53 = 0;
    v54 = 0;
    mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(Complex, &v33, v21 & 0xFFFFFFFFFFFFFFF8, (v30 - 16), (v18 - 16));
    v23 = mlir::Operation::create(&v33);
    mlir::OpBuilder::insert(a2, v23);
    v24 = *(*(v23 + 6) + 16);
    mlir::OperationState::~OperationState(&v33);
    if (v24 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v26 = (*this - 16);
    v27 = *(v25 + 9);
    v28 = v25 - 16;
    if (!v27)
    {
      v28 = 0;
    }

    *&v33 = v28;
    mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v26, &v33);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::MulOp::decomposeComplexOperation(mlir::ODIE::Compiler::CoreML::MulOp *this, mlir::OpBuilder *a2)
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v59 = xmmword_25D0A0500;
  if (mlir::ODIE::Compiler::CoreML::hasComplexInputs(v4, &v59, 2))
  {
    PartsOfComplex = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 24), *(*this + 24));
    v53 = v5;
    v6 = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 56), *(*this + 24));
    v51 = v7;
    v8 = *(*this + 24);
    v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a2, *(**v8 + 32));
    *&v59 = v8;
    *(&v59 + 1) = v9;
    v60 = v62;
    v61 = 0x400000000;
    v63 = v65;
    v64 = 0x400000000;
    v66 = v68;
    v67 = 0x400000000;
    v69 = 4;
    v70 = &v72;
    v71 = 0x100000000;
    v73 = &v75;
    v74 = 0x100000000;
    v76 = 0;
    v77 = 0;
    v78 = &mlir::detail::TypeIDResolver<void,void>::id;
    v79 = 0;
    v80 = 0;
    mlir::ODIE::Compiler::CoreML::MulOp::build(v9, &v59, PartsOfComplex - 16, v6 - 16);
    v10 = mlir::Operation::create(&v59);
    mlir::OpBuilder::insert(a2, v10);
    v11 = *(*(v10 + 6) + 16);
    mlir::OperationState::~OperationState(&v59);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v57 = v12;
    v13 = *(*this + 24);
    v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a2, *(**v13 + 32));
    *&v59 = v13;
    *(&v59 + 1) = v14;
    v60 = v62;
    v61 = 0x400000000;
    v63 = v65;
    v64 = 0x400000000;
    v66 = v68;
    v67 = 0x400000000;
    v69 = 4;
    v70 = &v72;
    v71 = 0x100000000;
    v73 = &v75;
    v74 = 0x100000000;
    v76 = 0;
    v77 = 0;
    v78 = &mlir::detail::TypeIDResolver<void,void>::id;
    v79 = 0;
    v50 = v53 - 16;
    v15 = v51 - 16;
    v80 = 0;
    mlir::ODIE::Compiler::CoreML::MulOp::build(v14, &v59, v53 - 16, v51 - 16);
    v16 = mlir::Operation::create(&v59);
    mlir::OpBuilder::insert(a2, v16);
    v17 = *(*(v16 + 6) + 16);
    mlir::OperationState::~OperationState(&v59);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    v52 = v18;
    v19 = *(*this + 24);
    v20 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a2, *(**v19 + 32));
    *&v59 = v19;
    *(&v59 + 1) = v20;
    v60 = v62;
    v61 = 0x400000000;
    v63 = v65;
    v64 = 0x400000000;
    v66 = v68;
    v67 = 0x400000000;
    v69 = 4;
    v70 = &v72;
    v71 = 0x100000000;
    v73 = &v75;
    v74 = 0x100000000;
    v76 = 0;
    v77 = 0;
    v78 = &mlir::detail::TypeIDResolver<void,void>::id;
    v79 = 0;
    v80 = 0;
    mlir::ODIE::Compiler::CoreML::MulOp::build(v20, &v59, PartsOfComplex - 16, v15);
    v21 = mlir::Operation::create(&v59);
    mlir::OpBuilder::insert(a2, v21);
    v22 = *(*(v21 + 6) + 16);
    mlir::OperationState::~OperationState(&v59);
    if (v22 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    v54 = v23;
    v24 = *(*this + 24);
    v25 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a2, *(**v24 + 32));
    *&v59 = v24;
    *(&v59 + 1) = v25;
    v60 = v62;
    v61 = 0x400000000;
    v63 = v65;
    v64 = 0x400000000;
    v66 = v68;
    v67 = 0x400000000;
    v69 = 4;
    v70 = &v72;
    v71 = 0x100000000;
    v73 = &v75;
    v74 = 0x100000000;
    v76 = 0;
    v77 = 0;
    v78 = &mlir::detail::TypeIDResolver<void,void>::id;
    v79 = 0;
    v80 = 0;
    mlir::ODIE::Compiler::CoreML::MulOp::build(v25, &v59, v50, v6 - 16);
    v26 = mlir::Operation::create(&v59);
    mlir::OpBuilder::insert(a2, v26);
    v27 = *(*(v26 + 6) + 16);
    mlir::OperationState::~OperationState(&v59);
    if (v27 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    v55 = v28;
    v29 = *(*this + 24);
    v30 = *(PartsOfComplex - 1);
    v31 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SubOp>(a2, *(**v29 + 32));
    *&v59 = v29;
    *(&v59 + 1) = v31;
    v60 = v62;
    v61 = 0x400000000;
    v63 = v65;
    v64 = 0x400000000;
    v66 = v68;
    v67 = 0x400000000;
    v69 = 4;
    v70 = &v72;
    v71 = 0x100000000;
    v73 = &v75;
    v74 = 0x100000000;
    v76 = 0;
    v77 = 0;
    v78 = &mlir::detail::TypeIDResolver<void,void>::id;
    v79 = 0;
    v80 = 0;
    mlir::ODIE::Compiler::CoreML::SubOp::build(v31, &v59, v30 & 0xFFFFFFFFFFFFFFF8, (v57 - 16), (v52 - 16));
    v32 = mlir::Operation::create(&v59);
    mlir::OpBuilder::insert(a2, v32);
    v33 = *(*(v32 + 6) + 16);
    mlir::OperationState::~OperationState(&v59);
    if (v33 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0;
    }

    v58 = v34;
    v35 = *(*this + 24);
    v36 = *(PartsOfComplex - 1);
    v37 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a2, *(**v35 + 32));
    *&v59 = v35;
    *(&v59 + 1) = v37;
    v60 = v62;
    v61 = 0x400000000;
    v63 = v65;
    v64 = 0x400000000;
    v66 = v68;
    v67 = 0x400000000;
    v69 = 4;
    v70 = &v72;
    v71 = 0x100000000;
    v73 = &v75;
    v74 = 0x100000000;
    v76 = 0;
    v77 = 0;
    v78 = &mlir::detail::TypeIDResolver<void,void>::id;
    v79 = 0;
    v80 = 0;
    mlir::ODIE::Compiler::CoreML::AddOp::build(v37, &v59, v36 & 0xFFFFFFFFFFFFFFF8, (v54 - 16), (v55 - 16));
    v38 = mlir::Operation::create(&v59);
    mlir::OpBuilder::insert(a2, v38);
    v39 = *(*(v38 + 6) + 16);
    mlir::OperationState::~OperationState(&v59);
    if (v39 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
    {
      v38 = 0;
    }

    v40 = *(*this + 24);
    v41 = *(*this - 8);
    Complex = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateComplexOp>(a2, *(**v40 + 32));
    *&v59 = v40;
    *(&v59 + 1) = Complex;
    v60 = v62;
    v61 = 0x400000000;
    v63 = v65;
    v64 = 0x400000000;
    v66 = v68;
    v67 = 0x400000000;
    v69 = 4;
    v70 = &v72;
    v71 = 0x100000000;
    v73 = &v75;
    v74 = 0x100000000;
    v76 = 0;
    v77 = 0;
    v78 = &mlir::detail::TypeIDResolver<void,void>::id;
    v79 = 0;
    v80 = 0;
    mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(Complex, &v59, v41 & 0xFFFFFFFFFFFFFFF8, (v58 - 16), (v38 - 16));
    v43 = mlir::Operation::create(&v59);
    mlir::OpBuilder::insert(a2, v43);
    v44 = *(*(v43 + 6) + 16);
    mlir::OperationState::~OperationState(&v59);
    if (v44 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id)
    {
      v45 = v43;
    }

    else
    {
      v45 = 0;
    }

    v46 = (*this - 16);
    v47 = *(v45 + 9);
    v48 = v45 - 16;
    if (!v47)
    {
      v48 = 0;
    }

    *&v59 = v48;
    mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v46, &v59);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::BatchMatmulOp::decomposeComplexOperation(mlir::ODIE::Compiler::CoreML::BatchMatmulOp *this, mlir::OpBuilder *a2)
{
  v90 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v68 = xmmword_25D0A0500;
  if (mlir::ODIE::Compiler::CoreML::hasComplexInputs(v4, &v68, 2))
  {
    PartsOfComplex = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 24), *(*this + 24));
    v60 = v5;
    v6 = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 56), *(*this + 24));
    v58 = v7;
    v8 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v8)
    {
      v9 = *v8;
      v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = *((*(v11 + 8))(v11, v8) + 8);
    v13 = *v11;
    LOBYTE(v68) = 0;
    LOBYTE(v69) = 0;
    v14 = v13(v11, v8, &v68, v12);
    v15 = *(*this + 24);
    v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>(a2, *(**v15 + 32));
    *&v68 = v15;
    *(&v68 + 1) = v16;
    v69 = v71;
    v70 = 0x400000000;
    v72 = v74;
    v73 = 0x400000000;
    v75 = v77;
    v76 = 0x400000000;
    v78 = 4;
    v79 = &v81;
    v80 = 0x100000000;
    v82 = &v84;
    v83 = 0x100000000;
    v85 = 0;
    v86 = 0;
    v87 = &mlir::detail::TypeIDResolver<void,void>::id;
    v88 = 0;
    v57 = PartsOfComplex - 16;
    v62 = v6 - 16;
    v89 = 0;
    mlir::ODIE::Compiler::CoreML::BatchMatmulOp::build(v16, &v68, v14, PartsOfComplex - 16, v6 - 16);
    v17 = mlir::Operation::create(&v68);
    mlir::OpBuilder::insert(a2, v17);
    v67 = v8;
    v18 = *(*(v17 + 6) + 16);
    mlir::OperationState::~OperationState(&v68);
    if (v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    v64 = v19;
    v20 = *(*this + 24);
    v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>(a2, *(**v20 + 32));
    *&v68 = v20;
    *(&v68 + 1) = v21;
    v69 = v71;
    v70 = 0x400000000;
    v72 = v74;
    v73 = 0x400000000;
    v75 = v77;
    v76 = 0x400000000;
    v78 = 4;
    v79 = &v81;
    v80 = 0x100000000;
    v82 = &v84;
    v83 = 0x100000000;
    v85 = 0;
    v86 = 0;
    v87 = &mlir::detail::TypeIDResolver<void,void>::id;
    v88 = 0;
    v56 = v60 - 16;
    v22 = v58 - 16;
    v89 = 0;
    v23 = v14;
    v55 = v14;
    mlir::ODIE::Compiler::CoreML::BatchMatmulOp::build(v21, &v68, v14, v60 - 16, v58 - 16);
    v24 = mlir::Operation::create(&v68);
    mlir::OpBuilder::insert(a2, v24);
    v25 = *(*(v24 + 6) + 16);
    mlir::OperationState::~OperationState(&v68);
    if (v25 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    v59 = v26;
    v27 = *(*this + 24);
    v28 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>(a2, *(**v27 + 32));
    *&v68 = v27;
    *(&v68 + 1) = v28;
    v69 = v71;
    v70 = 0x400000000;
    v72 = v74;
    v73 = 0x400000000;
    v75 = v77;
    v76 = 0x400000000;
    v78 = 4;
    v79 = &v81;
    v80 = 0x100000000;
    v82 = &v84;
    v83 = 0x100000000;
    v85 = 0;
    v86 = 0;
    v87 = &mlir::detail::TypeIDResolver<void,void>::id;
    v88 = 0;
    v89 = 0;
    mlir::ODIE::Compiler::CoreML::BatchMatmulOp::build(v28, &v68, v23, v57, v22);
    v29 = mlir::Operation::create(&v68);
    mlir::OpBuilder::insert(a2, v29);
    v30 = *(*(v29 + 6) + 16);
    mlir::OperationState::~OperationState(&v68);
    if (v30 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    v61 = v31;
    v32 = *(*this + 24);
    v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>(a2, *(**v32 + 32));
    *&v68 = v32;
    *(&v68 + 1) = v33;
    v69 = v71;
    v70 = 0x400000000;
    v72 = v74;
    v73 = 0x400000000;
    v75 = v77;
    v76 = 0x400000000;
    v78 = 4;
    v79 = &v81;
    v80 = 0x100000000;
    v82 = &v84;
    v83 = 0x100000000;
    v85 = 0;
    v86 = 0;
    v87 = &mlir::detail::TypeIDResolver<void,void>::id;
    v88 = 0;
    v89 = 0;
    mlir::ODIE::Compiler::CoreML::BatchMatmulOp::build(v33, &v68, v55, v56, v62);
    v34 = mlir::Operation::create(&v68);
    mlir::OpBuilder::insert(a2, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v68);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v63 = v36;
    v37 = *(*this + 24);
    v38 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SubOp>(a2, *(**v37 + 32));
    *&v68 = v37;
    *(&v68 + 1) = v38;
    v69 = v71;
    v70 = 0x400000000;
    v72 = v74;
    v73 = 0x400000000;
    v75 = v77;
    v76 = 0x400000000;
    v78 = 4;
    v79 = &v81;
    v80 = 0x100000000;
    v82 = &v84;
    v83 = 0x100000000;
    v85 = 0;
    v86 = 0;
    v87 = &mlir::detail::TypeIDResolver<void,void>::id;
    v88 = 0;
    v89 = 0;
    mlir::ODIE::Compiler::CoreML::SubOp::build(v38, &v68, v55, (v64 - 16), (v59 - 16));
    v39 = mlir::Operation::create(&v68);
    mlir::OpBuilder::insert(a2, v39);
    v40 = *(*(v39 + 6) + 16);
    mlir::OperationState::~OperationState(&v68);
    if (v40 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0;
    }

    v65 = v41;
    v42 = *(*this + 24);
    v43 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a2, *(**v42 + 32));
    *&v68 = v42;
    *(&v68 + 1) = v43;
    v69 = v71;
    v70 = 0x400000000;
    v72 = v74;
    v73 = 0x400000000;
    v75 = v77;
    v76 = 0x400000000;
    v78 = 4;
    v79 = &v81;
    v80 = 0x100000000;
    v82 = &v84;
    v83 = 0x100000000;
    v85 = 0;
    v86 = 0;
    v87 = &mlir::detail::TypeIDResolver<void,void>::id;
    v88 = 0;
    v89 = 0;
    mlir::ODIE::Compiler::CoreML::AddOp::build(v43, &v68, v55, (v61 - 16), (v63 - 16));
    v44 = mlir::Operation::create(&v68);
    mlir::OpBuilder::insert(a2, v44);
    v45 = *(*(v44 + 6) + 16);
    mlir::OperationState::~OperationState(&v68);
    if (v45 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
    {
      v44 = 0;
    }

    v46 = *(*this + 24);
    Complex = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateComplexOp>(a2, *(**v46 + 32));
    *&v68 = v46;
    *(&v68 + 1) = Complex;
    v69 = v71;
    v70 = 0x400000000;
    v72 = v74;
    v73 = 0x400000000;
    v75 = v77;
    v76 = 0x400000000;
    v78 = 4;
    v79 = &v81;
    v80 = 0x100000000;
    v82 = &v84;
    v83 = 0x100000000;
    v85 = 0;
    v86 = 0;
    v87 = &mlir::detail::TypeIDResolver<void,void>::id;
    v88 = 0;
    v89 = 0;
    mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(Complex, &v68, v67, (v65 - 16), (v44 - 16));
    v48 = mlir::Operation::create(&v68);
    mlir::OpBuilder::insert(a2, v48);
    v49 = *(*(v48 + 6) + 16);
    mlir::OperationState::~OperationState(&v68);
    if (v49 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0;
    }

    v51 = (*this - 16);
    v52 = *(v50 + 9);
    v53 = v50 - 16;
    if (!v52)
    {
      v53 = 0;
    }

    *&v68 = v53;
    mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v51, &v68);
  }

  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::BatchMatmulOp::inferReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v47[2] = *MEMORY[0x277D85DE8];
  v47[0] = a4;
  v47[1] = a5;
  if (a5 == 2)
  {
    v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v13)
    {
      if ((a4 & 6) == 2 && v13)
      {
        v13 = v13[3];
      }
    }

    else
    {
      v13 = *v13;
    }

    v15 = mlir::ValueRange::dereference_iterator(v47, 1);
    v16 = (v13[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v17 = "x must be a ranked tensor";
LABEL_15:

      return mlir::emitOptionalError<char const(&)[26]>(a2, v11, v17);
    }

    v18 = (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v17 = "y must be a ranked tensor";
      goto LABEL_15;
    }

    v19 = v16[2];
    if (v19 != v18[2])
    {
      v20 = "x, y must have the same rank";
      goto LABEL_22;
    }

    if (v19 <= 1)
    {
      v20 = "x, y must be at least rank 2";
LABEL_22:

      return mlir::emitOptionalError<char const(&)[29]>(a2, v11, v20);
    }

    v21 = v16[1];
    v44 = v46;
    v45 = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v44, v21, &v21[8 * v19]);
    v22 = v18[1];
    v23 = &v22[8 * v18[2]];
    v41 = v43;
    v42 = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v41, v22, v23);
    v38 = v40;
    v39 = 0x600000000;
    v24 = v19 - 2;
    if (v24)
    {
      v25 = 0;
      while (1)
      {
        v26 = *(v44 + v25);
        if (v26 != 0x8000000000000000)
        {
          v27 = *(v41 + v25);
          if (v27 != 0x8000000000000000 && v26 != v27)
          {
            break;
          }
        }

        llvm::SmallVectorTemplateBase<long long,true>::push_back(&v38, v26);
        if (v24 == ++v25)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
LABEL_34:
      v29 = *(v44 + v45 - 1);
      if (v29 == 0x8000000000000000 || ((v30 = *(v41 + v24), v30 != 0x8000000000000000) ? (v31 = v29 == v30) : (v31 = 1), v31))
      {
        llvm::SmallVectorTemplateBase<long long,true>::push_back(&v38, *(v44 + v24));
        llvm::SmallVectorTemplateBase<long long,true>::push_back(&v38, *(v41 + v42 - 1));
        v32 = v16[3];
        *&v37 = v38;
        *(&v37 + 1) = v39;
        v35 = 0;
        v36 = v32;
        v33 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v32 + 32), &v37, &v36, &v35);
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v33);
        v34 = 1;
LABEL_42:
        if (v38 != v40)
        {
          free(v38);
        }

        if (v41 != v43)
        {
          free(v41);
        }

        if (v44 != v46)
        {
          free(v44);
        }

        return v34;
      }
    }

    v34 = mlir::emitOptionalError<char const(&)[28]>(a2, v11, "x, y has incompatible shape");
    goto LABEL_42;
  }

  return mlir::emitOptionalError<char const(&)[48]>(a2, a3, "expected exactly 2 operands for batch_matmul op");
}

BOOL mlir::emitOptionalError<char const(&)[26]>(void **a1, char a2, char *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v6[16] = 257;
  emitDiag(a1, 2, v6, &v7);
  if (v7)
  {
    mlir::Diagnostic::operator<<<26ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::BatchMatmulOp::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v11 = a3;
  v21[6] = *MEMORY[0x277D85DE8];
  v20 = 0x600000000;
  __src = v21;
  if (mlir::ODIE::Compiler::CoreML::BatchMatmulOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v20))
    {
      v13 = __src;
      v14 = __src + 8 * v20;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v13, v14);
    }

    v15 = 1;
  }

  else
  {
    v15 = mlir::emitOptionalError<char const(&)[43]>(a2, v11, "fails to infer the type of batch_matmul op");
  }

  if (__src != v21)
  {
    free(__src);
  }

  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreML::NonZeroOp::verify(mlir::ODIE::Compiler::CoreML::NonZeroOp *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *this;
  if (*(v1 + 36))
  {
    v2 = v1 - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  v6 = *((*(*(*(v1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v16 = v6;
  if (v4 != 2)
  {
    v15 = 257;
    mlir::Operation::emitError(&v17, v1, v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<44ul>(v18, "expect output of rank 2 for coreml.non_zero");
    }

    v10 = v18[192];
    goto LABEL_15;
  }

  v8 = *(v5 + 8);
  v7 = (v5 + 8);
  if (v6 != v8)
  {
    v15 = 257;
    mlir::Operation::emitError(&v17, v1, v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<36ul>(v18, "coreml.non_zero output.shape[1] is ");
    }

    v11 = mlir::InFlightDiagnostic::operator<<<long long const&>(&v17, v7);
    v12 = v11;
    if (*v11)
    {
      mlir::Diagnostic::operator<<<35ul>((v11 + 1), " which is not equal to input rank ");
    }

    v10 = *(mlir::InFlightDiagnostic::operator<<<long long &>(v12, &v16) + 200);
LABEL_15:
    v9 = v10 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
    return v9 & 1;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v58[5] = *MEMORY[0x277D85DE8];
  v48[0] = a4;
  v48[1] = a5;
  if (a5 != 3)
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 3 operands");
  }

  v12 = mlir::ValueRange::dereference_iterator(v48, 1);
  v52 = 0uLL;
  v44 = &v52;
  if ((~*(v12 + 8) & 7) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    return 0;
  }

  v14 = v12;
  v15 = *(v13 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v13 + 24 * *(v13 + 16);
    v17 = v16 + 120;
    if (v16 == -120)
    {
      return 0;
    }
  }

  else
  {
    v17 = v13 + 16 * v15 + 16;
  }

  result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v44, v17);
  if (!result)
  {
    return result;
  }

  v19 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v19)
  {
    if ((a4 & 6) == 2 && v19)
    {
      v19 = v19[3];
    }
  }

  else
  {
    v19 = *v19;
  }

  v20 = v19[1] & 0xFFFFFFFFFFFFFFF8;
  if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = (*(v14 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v22 = 0;
  }

  if (v21)
  {
    v23 = v22 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    return 0;
  }

  v24 = v21[1];
  v25 = v21[2];
  v26 = v22[3];
  LOBYTE(v44) = 0;
  v47 = 0;
  if (*(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v26[2] == 1073741840)
  {
    mlir::ODIE::Compiler::extract1DIntVector<short>(&v52, v14);
    if (v55)
    {
      v27 = v58;
      v56 = v58;
      v57 = xmmword_25D0A07A0;
      if (!*(&v52 + 1) || (llvm::SmallVectorImpl<short>::operator=(&v56, &v52), (v55 & 1) != 0))
      {
        if (v52 != &v54)
        {
          free(v52);
        }
      }

      if (v57 == 2 * v25)
      {
        v49 = v51;
        v50 = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v49, v24, &v24[8 * v25]);
        v28 = v50;
        if (v50)
        {
          v29 = v49;
          v30 = (v56 + 2);
          do
          {
            if ((*v29 & 0x8000000000000000) == 0)
            {
              *v29 += *(v30 - 1) + *v30;
            }

            v30 += 2;
            ++v29;
            --v28;
          }

          while (v28);
LABEL_54:
          *&v52 = &v53;
          *(&v52 + 1) = 0x600000000;
          llvm::SmallVectorImpl<long long>::operator=(&v52, &v49);
          goto LABEL_57;
        }

        goto LABEL_56;
      }

      goto LABEL_55;
    }

LABEL_71:
    v36 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::ODIE::Compiler::CoreML::PadOp::refineReturnTypes(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11);
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v14, &v52);
  if ((v55 & 1) == 0)
  {
    goto LABEL_71;
  }

  v27 = &v57 + 8;
  v56 = &v57 + 8;
  *&v57 = 0xC00000000;
  if (!DWORD2(v52) || (llvm::SmallVectorImpl<int>::operator=(&v56, &v52), (v55 & 1) != 0))
  {
    if (v52 != &v53)
    {
      free(v52);
    }
  }

  if (v57 == 2 * v25)
  {
    v49 = v51;
    v50 = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v49, v24, &v24[8 * v25]);
    v31 = v50;
    if (v50)
    {
      v32 = v49;
      v33 = (v56 + 4);
      do
      {
        if ((*v32 & 0x8000000000000000) == 0)
        {
          *v32 += *v33 + *(v33 - 1);
        }

        v33 += 2;
        ++v32;
        --v31;
      }

      while (v31);
      goto LABEL_54;
    }

LABEL_56:
    *&v52 = &v53;
    *(&v52 + 1) = 0x600000000;
LABEL_57:
    v55 = 1;
    if (v49 != v51)
    {
      free(v49);
    }

    goto LABEL_59;
  }

LABEL_55:
  LOBYTE(v52) = 0;
  v55 = 0;
LABEL_59:
  if (v56 != v27)
  {
    free(v56);
  }

  std::__optional_storage_base<llvm::SmallVector<long long,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<long long,6u>,false>>(&v44, &v52);
  if (v55 == 1 && v52 != &v53)
  {
    free(v52);
  }

  if (v47 != 1)
  {
    return 0;
  }

  v34 = v21[3];
  *&v52 = v44;
  *(&v52 + 1) = v45;
  v56 = v34;
  v49 = 0;
  v35 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v34 + 32), &v52, &v56, &v49);
  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v35);
  if ((v47 & 1) != 0 && v44 != &v46)
  {
    free(v44);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::PadOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::PadOp::verify(void ****this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v84 = *MEMORY[0x277D85DE8];
  v12 = *this;
  v13 = v12[9];
  v14 = v13[3];
  v15 = v13[7];
  v16 = *(v12[10] + 2);
  if (v16 != 1)
  {
    v17 = v13[11];
    v75 = 0;
    v76 = 0;
    v81 = &v75;
    if ((~v17[2] & 7) == 0)
    {
      v17 = 0;
    }

    if (!v17)
    {
      goto LABEL_48;
    }

    v18 = *(v17 + 1) & 7;
    if (v18 == 6)
    {
      v19 = &v17[6 * *(v17 + 2)];
      v20 = (v19 + 30);
      if (v19 == -120)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v20 = &v17[4 * v18 + 4];
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v81, v20))
    {
      v12 = *this;
LABEL_48:
      v83[4] = 257;
      mlir::Operation::emitError(&v75, v12, &v81);
      if (v75)
      {
        mlir::Diagnostic::operator<<<64ul>(&v76, " non-constant padding mode must have padding value as constant.");
      }

      v37 = v80 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v75);
      return v37 & 1;
    }
  }

  v21 = *(v15 + 8);
  v22 = *((v21 & 0xFFFFFFFFFFFFFFF8) + 24);
  v23 = v14[1] & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v23 + 8);
  v24 = *(v23 + 16);
  if (*(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v26 = *this;
LABEL_21:
    v75 = 0;
    v76 = 0;
    v81 = &v75;
    if ((~v21 & 7) != 0)
    {
      v32 = v15;
    }

    else
    {
      v32 = 0;
    }

    if (!v32)
    {
      goto LABEL_91;
    }

    v33 = *(v32 + 8) & 7;
    if (v33 == 6)
    {
      v34 = v32 + 24 * *(v32 + 16);
      v35 = v34 + 120;
      if (v34 == -120)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v35 = v32 + 16 * v33 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v81, v35))
    {
      mlir::ODIE::Compiler::extract1DIntVector<int>(v15, &v75);
      if (v79)
      {
        v36 = &v82 + 1;
        v81 = &v82 + 1;
        *&v82 = 0xC00000000;
        if (!v76 || (llvm::SmallVectorImpl<int>::operator=(&v81, &v75), (v79 & 1) != 0))
        {
          if (v75 != &v77)
          {
            free(v75);
          }
        }

        if (2 * v24 == v82)
        {
          v37 = 1;
          if (v16 <= 4 && ((1 << v16) & 0x15) != 0)
          {
            if (v24)
            {
              v38 = 0;
              if (v16 == 2)
              {
                v39 = -1;
              }

              else
              {
                v39 = 0;
              }

              v40 = v81 + 1;
              while (1)
              {
                v41 = *(v25 + 8 * v38) + v39;
                v71 = v41;
                if (v41 < *(v40 - 1) || v41 < *v40)
                {
                  break;
                }

                ++v38;
                v40 += 2;
                if (v24 == v38)
                {
                  goto LABEL_46;
                }
              }

              v72 = v38;
              v70 = 257;
              mlir::Operation::emitError(&v75, v26, v69);
              if (v75)
              {
                mlir::Diagnostic::operator<<<26ul>(&v76, " padding lengths for dim ");
              }

              v46 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v75, &v72);
              v47 = v46;
              if (*v46)
              {
                mlir::Diagnostic::operator<<<5ul>((v46 + 1), " is ");
              }

              v48 = mlir::InFlightDiagnostic::operator<<<int &>(v47, &v81[v72]);
              v49 = v48;
              if (*v48)
              {
                mlir::Diagnostic::operator<<<6ul>((v48 + 1), " and ");
              }

              v50 = mlir::InFlightDiagnostic::operator<<<int &>(v49, &v81[v72] + 1);
              if (!*v50)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            }

            goto LABEL_46;
          }

          goto LABEL_59;
        }

        v74 = 257;
        mlir::Operation::emitError(&v75, v26, v73);
        if (v75)
        {
          mlir::Diagnostic::operator<<<22ul>(&v76, " padding lengths has ");
        }

        v69[0] = v82;
        v42 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v75, v69);
        v43 = v42;
        if (*v42)
        {
          mlir::Diagnostic::operator<<<19ul>((v42 + 1), " elements, expect ");
        }

        v72 = 2 * v24;
        goto LABEL_56;
      }

      goto LABEL_106;
    }

    goto LABEL_91;
  }

  v27 = v22[2];
  v26 = *this;
  if (v27 >> 30 != 1 || (v27 & 0x3FFFFFFF) != 0x10)
  {
    goto LABEL_21;
  }

  v75 = 0;
  v76 = 0;
  v81 = &v75;
  if ((~v21 & 7) != 0)
  {
    v28 = v15;
  }

  else
  {
    v28 = 0;
  }

  if (!v28)
  {
    goto LABEL_91;
  }

  v29 = *(v28 + 8) & 7;
  if (v29 == 6)
  {
    v30 = v28 + 24 * *(v28 + 16);
    v31 = v30 + 120;
    if (v30 == -120)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v31 = v28 + 16 * v29 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v81, v31))
  {
LABEL_91:
    v37 = 1;
    return v37 & 1;
  }

  mlir::ODIE::Compiler::extract1DIntVector<short>(&v75, v15);
  if (v79)
  {
    v36 = v83;
    v81 = v83;
    v82 = xmmword_25D0A07A0;
    if (!v76 || (llvm::SmallVectorImpl<short>::operator=(&v81, &v75), (v79 & 1) != 0))
    {
      if (v75 != &v78)
      {
        free(v75);
      }
    }

    if (v82 == 2 * v24)
    {
      v37 = 1;
      if (v16 <= 4 && ((1 << v16) & 0x15) != 0)
      {
        if (v24)
        {
          v54 = 0;
          if (v16 == 2)
          {
            v55 = -1;
          }

          else
          {
            v55 = 0;
          }

          v56 = v81 + 1;
          while (1)
          {
            v57 = *(v25 + 8 * v54) + v55;
            v71 = v57;
            if (v57 < *(v56 - 1) || v57 < *v56)
            {
              break;
            }

            ++v54;
            v56 += 2;
            if (v24 == v54)
            {
              goto LABEL_46;
            }
          }

          v72 = v54;
          v70 = 257;
          mlir::Operation::emitError(&v75, v26, v69);
          if (v75)
          {
            mlir::Diagnostic::operator<<<26ul>(&v76, " padding lengths for dim ");
          }

          v60 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v75, &v72);
          v50 = v60;
          if (*v60)
          {
            mlir::Diagnostic::operator<<<5ul>((v60 + 1), " is ");
          }

          mlir::InFlightDiagnostic::operator<<<short &>(v50, *(v81 + 2 * v72));
          if (*v50)
          {
            mlir::Diagnostic::operator<<<6ul>((v50 + 1), " and ");
          }

          mlir::InFlightDiagnostic::operator<<<short &>(v50, *(v81 + 2 * v72 + 1));
          if (!*v50)
          {
            goto LABEL_69;
          }

LABEL_68:
          mlir::Diagnostic::operator<<<33ul>((v50 + 1), " which is higher than max value ");
LABEL_69:
          v51 = mlir::InFlightDiagnostic::operator<<<long long &>(v50, &v71);
          v45 = v51;
          if (*v51)
          {
            mlir::Diagnostic::operator<<<11ul>((v51 + 1), " for mode ");
            if (*v45)
            {
              v52 = qword_25D09F6B8[v16];
              v53 = off_2799BDB60[v16];
              v74 = 261;
              v73[0] = v53;
              v73[1] = v52;
              mlir::Diagnostic::operator<<((v45 + 1), v73);
            }
          }

LABEL_58:
          v37 = *(v45 + 200) ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v75);
          goto LABEL_59;
        }

LABEL_46:
        v37 = 1;
      }

LABEL_59:
      if (v81 != v36)
      {
        free(v81);
      }

      return v37 & 1;
    }

    v74 = 257;
    mlir::Operation::emitError(&v75, v26, v73);
    if (v75)
    {
      mlir::Diagnostic::operator<<<22ul>(&v76, " padding lengths has ");
    }

    v69[0] = v82;
    v59 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v75, v69);
    v43 = v59;
    if (*v59)
    {
      mlir::Diagnostic::operator<<<19ul>((v59 + 1), " elements, expect ");
    }

    v72 = 2 * v24;
LABEL_56:
    v44 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v43, &v72);
    v45 = v44;
    if (*v44)
    {
      mlir::Diagnostic::operator<<<10ul>((v44 + 1), " elements");
    }

    goto LABEL_58;
  }

LABEL_106:
  v61 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::ReverseOp::inferReturnTypes(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11);
}