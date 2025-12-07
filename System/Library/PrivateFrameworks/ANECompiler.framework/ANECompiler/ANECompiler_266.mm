uint64_t *mlir::getValues<long long>(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v13, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v15);
  for (result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v11, a1, NumElements); v14 != v12; ++v14)
  {
    result = mlir::DenseElementsAttr::IntElementIterator::operator*(v13, &v9);
    v6 = v10;
    if (v10 > 0x40)
    {
      v7 = *v9;
    }

    else if (v10)
    {
      v7 = (v9 << -v10) >> -v10;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a2 + 8);
    if (v8 >= *(a2 + 12))
    {
      result = llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a2, v7);
      if (v10 >= 0x41)
      {
LABEL_12:
        result = v9;
        if (v9)
        {
          result = MEMORY[0x1AC55A040](v9, 0x1000C8000313F17);
        }
      }
    }

    else
    {
      *(*a2 + 8 * v8) = v7;
      *(a2 + 8) = v8 + 1;
      if (v6 >= 0x41)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

BOOL mlir::anec::Softmax::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Softmax::getZinIrUnitInfo();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

BOOL mlir::anec::spaceTransformInferReturnTypesCommon(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7, uint64_t a8)
{
  v54[5] = *MEMORY[0x1E69E9840];
  v49[0] = a3;
  v49[1] = a4;
  if (a3)
  {
    Shape = mlir::ShapedType::getShape(v49);
    mlir::ShapedType::getShape(v49);
    v12 = v11;
    v52 = v54;
    v53 = 0x500000000;
    IndexFromDim = mlir::anec::getIndexFromDim(0, v11);
    v14 = mlir::anec::getIndexFromDim(1, v12);
    v15 = mlir::anec::getIndexFromDim(3, v12);
    v16 = mlir::anec::getIndexFromDim(4, v12);
    v17 = *(Shape + 8 * IndexFromDim);
    v18 = *(Shape + 8 * v14);
    v19 = *(Shape + 8 * v15);
    v20 = *(Shape + 8 * v16);
    v50[0] = v51;
    v50[1] = 0x300000000;
    mlir::getValues<unsigned long>(a5, v50);
    v21 = *v50[0];
    v22 = *(v50[0] + 1);
    if (*v50[0] <= 1)
    {
      v21 = 1;
    }

    if (v22 <= 1)
    {
      v22 = 1;
    }

    if (*(v50[0] + 2) <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = *(v50[0] + 2);
    }

    v24 = v22 * v21 * v23;
    if (a7)
    {
      v25 = v19 / v22;
      v26 = v24 * v18;
      v27 = v24 * v17;
      if (a6)
      {
        v28 = v26;
      }

      else
      {
        v17 = v27;
        v28 = v18;
      }

      v29 = v20 / v21;
    }

    else
    {
      v25 = v22 * v19;
      v29 = v21 * v20;
      if (a6)
      {
        v28 = v18 / v24;
      }

      else
      {
        v17 /= v24;
        v28 = v18;
      }
    }

    v31 = v53;
    if (v53 >= HIDWORD(v53))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v53 + 1, 8);
      v31 = v53;
    }

    *(v52 + v31) = v17;
    v32 = v53 + 1;
    LODWORD(v53) = v53 + 1;
    if (v12 == 5)
    {
      v33 = mlir::anec::getIndexFromDim(2, 5uLL);
      if ((v34 & 1) == 0)
      {
        v37 = 0;
LABEL_40:
        if (v50[0] != v51)
        {
          free(v50[0]);
        }

        if (v52 != v54)
        {
          free(v52);
        }

        return v37;
      }

      v35 = *(Shape + 8 * v33);
      if (a7)
      {
        v36 = v35 / v23;
      }

      else
      {
        v36 = v35 * v23;
      }

      v38 = v53;
      if (v53 >= HIDWORD(v53))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v53 + 1, 8);
        v38 = v53;
      }

      *(v52 + v38) = v36;
      v32 = v53 + 1;
      LODWORD(v53) = v53 + 1;
    }

    if (v32 >= HIDWORD(v53))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v32 + 1, 8);
      v32 = v53;
    }

    *(v52 + v32) = v28;
    v39 = (v53 + 1);
    LODWORD(v53) = v39;
    if (v39 >= HIDWORD(v53))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v39 + 1, 8);
      LODWORD(v39) = v53;
    }

    *(v52 + v39) = v25;
    v40 = (v53 + 1);
    LODWORD(v53) = v40;
    if (v40 >= HIDWORD(v53))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v40 + 1, 8);
      LODWORD(v40) = v53;
    }

    *(v52 + v40) = v29;
    LODWORD(v53) = v53 + 1;
    v41 = v53;
    v42 = v52;
    isSplat = mlir::ElementsAttr::isSplat(v49);
    v44 = mlir::MemRefType::get(v42, v41, isSplat, 0, 0, 0);
    v45 = *(a8 + 8);
    if (v45 >= *(a8 + 12))
    {
      v46 = v44;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a8, (a8 + 16), v45 + 1, 8);
      v44 = v46;
      LODWORD(v45) = *(a8 + 8);
    }

    *(*a8 + 8 * v45) = v44;
    ++*(a8 + 8);
    v37 = 1;
    goto LABEL_40;
  }

  return mlir::emitOptionalError<char const(&)[41]>(a1, a2, "Expected a ShapedType for my input!");
}

BOOL mlir::anec::ChannelToSpace::inferPromotedReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = *MEMORY[0x1E69E9840];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.channel_to_space", 21, Context);
    v32 = 1;
  }

  v35 = a4;
  v36 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25 = a2;
  }

  else
  {
    v25 = v24;
  }

  if (!mlir::anec::ChannelToSpaceAdaptor::verify(&v30, v25))
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v30);
  v27 = mlir::DictionaryAttr::end(&v30);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v27, **(v31 + 96));
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, a3, v21, v22, v28, 1, 0, a11);
}

BOOL mlir::anec::ChannelToSpaceAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v33); i != mlir::DictionaryAttr::end(&v33); i += 2)
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v31[0] = v14;
        v31[1] = v15;
        Type = mlir::ElementsAttr::getType(v31);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v35[0] = v17;
        v35[1] = Type;
        Shape = mlir::ShapedType::getShape(v35);
        v34 = 3;
        if (v19 == 1 && *Shape == v34)
        {
          v28 = v14;
          v29[0] = mlir::ArrayAttr::getValue(&v28);
          v29[1] = v20;
          isSplat = mlir::ElementsAttr::isSplat(v29);
          if (mlir::Type::isUnsignedInteger(&isSplat, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.channel_to_space' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (v38)
        {
          v24 = v39;
          v11 = v38;
          if (v39 != v38)
          {
            do
            {
              v26 = *--v24;
              v25 = v26;
              *v24 = 0;
              if (v26)
              {
                MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
              }
            }

            while (v24 != v9);
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        goto LABEL_47;
      }

      return v5;
    }
  }

  v31[0] = "'anec.channel_to_space' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (v38)
    {
      v10 = v39;
      v11 = v38;
      if (v39 != v38)
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
LABEL_45:
        v11 = v38;
      }

LABEL_46:
      v39 = v9;
      operator delete(v11);
    }

LABEL_47:
    if (v36 != &v37)
    {
      free(v36);
    }
  }

  return v5;
}

BOOL mlir::anec::ChannelToSpace::addOpToNetwork(mlir::Operation **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrChannelToSpaceUnitInfo,mlir::anec::ChannelToSpace>();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

BOOL mlir::anec::PixelShuffle::inferPromotedReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = *MEMORY[0x1E69E9840];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.pixel_shuffle", 18, Context);
    v32 = 1;
  }

  v35 = a4;
  v36 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25 = a2;
  }

  else
  {
    v25 = v24;
  }

  if (!mlir::anec::PixelShuffleAdaptor::verify(&v30, v25))
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v30);
  v27 = mlir::DictionaryAttr::end(&v30);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v27, **(v31 + 96));
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, a3, v21, v22, v28, 1, 0, a11);
}

BOOL mlir::anec::PixelShuffleAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v33); i != mlir::DictionaryAttr::end(&v33); i += 2)
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v31[0] = v14;
        v31[1] = v15;
        Type = mlir::ElementsAttr::getType(v31);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v35[0] = v17;
        v35[1] = Type;
        Shape = mlir::ShapedType::getShape(v35);
        v34 = 3;
        if (v19 == 1 && *Shape == v34)
        {
          v28 = v14;
          v29[0] = mlir::ArrayAttr::getValue(&v28);
          v29[1] = v20;
          isSplat = mlir::ElementsAttr::isSplat(v29);
          if (mlir::Type::isUnsignedInteger(&isSplat, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.pixel_shuffle' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (v38)
        {
          v24 = v39;
          v11 = v38;
          if (v39 != v38)
          {
            do
            {
              v26 = *--v24;
              v25 = v26;
              *v24 = 0;
              if (v26)
              {
                MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
              }
            }

            while (v24 != v9);
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        goto LABEL_47;
      }

      return v5;
    }
  }

  v31[0] = "'anec.pixel_shuffle' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (v38)
    {
      v10 = v39;
      v11 = v38;
      if (v39 != v38)
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
LABEL_45:
        v11 = v38;
      }

LABEL_46:
      v39 = v9;
      operator delete(v11);
    }

LABEL_47:
    if (v36 != &v37)
    {
      free(v36);
    }
  }

  return v5;
}

BOOL mlir::anec::PixelShuffle::addOpToNetwork(mlir::Operation **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrPixelShuffleUnitInfo,mlir::anec::PixelShuffle>();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

BOOL mlir::anec::PixelUnshuffle::inferPromotedReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = *MEMORY[0x1E69E9840];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.pixel_unshuffle", 20, Context);
    v32 = 1;
  }

  v35 = a4;
  v36 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25 = a2;
  }

  else
  {
    v25 = v24;
  }

  if (!mlir::anec::PixelUnshuffleAdaptor::verify(&v30, v25))
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v30);
  v27 = mlir::DictionaryAttr::end(&v30);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v27, **(v31 + 96));
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, a3, v21, v22, v28, 1, 1, a11);
}

BOOL mlir::anec::PixelUnshuffleAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v33); i != mlir::DictionaryAttr::end(&v33); i += 2)
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v31[0] = v14;
        v31[1] = v15;
        Type = mlir::ElementsAttr::getType(v31);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v35[0] = v17;
        v35[1] = Type;
        Shape = mlir::ShapedType::getShape(v35);
        v34 = 3;
        if (v19 == 1 && *Shape == v34)
        {
          v28 = v14;
          v29[0] = mlir::ArrayAttr::getValue(&v28);
          v29[1] = v20;
          isSplat = mlir::ElementsAttr::isSplat(v29);
          if (mlir::Type::isUnsignedInteger(&isSplat, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.pixel_unshuffle' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (v38)
        {
          v24 = v39;
          v11 = v38;
          if (v39 != v38)
          {
            do
            {
              v26 = *--v24;
              v25 = v26;
              *v24 = 0;
              if (v26)
              {
                MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
              }
            }

            while (v24 != v9);
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        goto LABEL_47;
      }

      return v5;
    }
  }

  v31[0] = "'anec.pixel_unshuffle' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (v38)
    {
      v10 = v39;
      v11 = v38;
      if (v39 != v38)
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
LABEL_45:
        v11 = v38;
      }

LABEL_46:
      v39 = v9;
      operator delete(v11);
    }

LABEL_47:
    if (v36 != &v37)
    {
      free(v36);
    }
  }

  return v5;
}

BOOL mlir::anec::PixelUnshuffle::addOpToNetwork(mlir::Operation **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrPixelUnshuffleUnitInfo,mlir::anec::PixelUnshuffle>();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

BOOL mlir::anec::SpaceToChannel::inferPromotedReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = *MEMORY[0x1E69E9840];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.space_to_channel", 21, Context);
    v32 = 1;
  }

  v35 = a4;
  v36 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25 = a2;
  }

  else
  {
    v25 = v24;
  }

  if (!mlir::anec::SpaceToChannelAdaptor::verify(&v30, v25))
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v30);
  v27 = mlir::DictionaryAttr::end(&v30);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v27, **(v31 + 96));
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, a3, v21, v22, v28, 1, 1, a11);
}

BOOL mlir::anec::SpaceToChannelAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v33); i != mlir::DictionaryAttr::end(&v33); i += 2)
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v31[0] = v14;
        v31[1] = v15;
        Type = mlir::ElementsAttr::getType(v31);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v35[0] = v17;
        v35[1] = Type;
        Shape = mlir::ShapedType::getShape(v35);
        v34 = 3;
        if (v19 == 1 && *Shape == v34)
        {
          v28 = v14;
          v29[0] = mlir::ArrayAttr::getValue(&v28);
          v29[1] = v20;
          isSplat = mlir::ElementsAttr::isSplat(v29);
          if (mlir::Type::isUnsignedInteger(&isSplat, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.space_to_channel' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (v38)
        {
          v24 = v39;
          v11 = v38;
          if (v39 != v38)
          {
            do
            {
              v26 = *--v24;
              v25 = v26;
              *v24 = 0;
              if (v26)
              {
                MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
              }
            }

            while (v24 != v9);
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        goto LABEL_47;
      }

      return v5;
    }
  }

  v31[0] = "'anec.space_to_channel' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (v38)
    {
      v10 = v39;
      v11 = v38;
      if (v39 != v38)
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
LABEL_45:
        v11 = v38;
      }

LABEL_46:
      v39 = v9;
      operator delete(v11);
    }

LABEL_47:
    if (v36 != &v37)
    {
      free(v36);
    }
  }

  return v5;
}

BOOL mlir::anec::SpaceToChannel::addOpToNetwork(mlir::Operation **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrSpaceToChannelUnitInfo,mlir::anec::SpaceToChannel>();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

BOOL mlir::anec::BatchToSpace::inferPromotedReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = *MEMORY[0x1E69E9840];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.batch_to_space", 19, Context);
    v32 = 1;
  }

  v35 = a4;
  v36 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25 = a2;
  }

  else
  {
    v25 = v24;
  }

  if (!mlir::anec::BatchToSpaceAdaptor::verify(&v30, v25))
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v30);
  v27 = mlir::DictionaryAttr::end(&v30);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v27, **(v31 + 96));
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, a3, v21, v22, v28, 0, 0, a11);
}

BOOL mlir::anec::BatchToSpaceAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v33); i != mlir::DictionaryAttr::end(&v33); i += 2)
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v31[0] = v14;
        v31[1] = v15;
        Type = mlir::ElementsAttr::getType(v31);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v35[0] = v17;
        v35[1] = Type;
        Shape = mlir::ShapedType::getShape(v35);
        v34 = 3;
        if (v19 == 1 && *Shape == v34)
        {
          v28 = v14;
          v29[0] = mlir::ArrayAttr::getValue(&v28);
          v29[1] = v20;
          isSplat = mlir::ElementsAttr::isSplat(v29);
          if (mlir::Type::isUnsignedInteger(&isSplat, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.batch_to_space' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (v38)
        {
          v24 = v39;
          v11 = v38;
          if (v39 != v38)
          {
            do
            {
              v26 = *--v24;
              v25 = v26;
              *v24 = 0;
              if (v26)
              {
                MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
              }
            }

            while (v24 != v9);
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        goto LABEL_47;
      }

      return v5;
    }
  }

  v31[0] = "'anec.batch_to_space' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (v38)
    {
      v10 = v39;
      v11 = v38;
      if (v39 != v38)
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
LABEL_45:
        v11 = v38;
      }

LABEL_46:
      v39 = v9;
      operator delete(v11);
    }

LABEL_47:
    if (v36 != &v37)
    {
      free(v36);
    }
  }

  return v5;
}

BOOL mlir::anec::BatchToSpace::addOpToNetwork(mlir::Operation **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrBatchToSpaceUnitInfo,mlir::anec::BatchToSpace>();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

BOOL mlir::anec::SpaceToBatch::inferPromotedReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = *MEMORY[0x1E69E9840];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.space_to_batch", 19, Context);
    v32 = 1;
  }

  v35 = a4;
  v36 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25 = a2;
  }

  else
  {
    v25 = v24;
  }

  if (!mlir::anec::SpaceToBatchAdaptor::verify(&v30, v25))
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v30);
  v27 = mlir::DictionaryAttr::end(&v30);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v27, **(v31 + 96));
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, a3, v21, v22, v28, 0, 1, a11);
}

BOOL mlir::anec::SpaceToBatchAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v33); i != mlir::DictionaryAttr::end(&v33); i += 2)
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v31[0] = v14;
        v31[1] = v15;
        Type = mlir::ElementsAttr::getType(v31);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v35[0] = v17;
        v35[1] = Type;
        Shape = mlir::ShapedType::getShape(v35);
        v34 = 3;
        if (v19 == 1 && *Shape == v34)
        {
          v28 = v14;
          v29[0] = mlir::ArrayAttr::getValue(&v28);
          v29[1] = v20;
          isSplat = mlir::ElementsAttr::isSplat(v29);
          if (mlir::Type::isUnsignedInteger(&isSplat, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.space_to_batch' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (v38)
        {
          v24 = v39;
          v11 = v38;
          if (v39 != v38)
          {
            do
            {
              v26 = *--v24;
              v25 = v26;
              *v24 = 0;
              if (v26)
              {
                MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
              }
            }

            while (v24 != v9);
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        goto LABEL_47;
      }

      return v5;
    }
  }

  v31[0] = "'anec.space_to_batch' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (v38)
    {
      v10 = v39;
      v11 = v38;
      if (v39 != v38)
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
LABEL_45:
        v11 = v38;
      }

LABEL_46:
      v39 = v9;
      operator delete(v11);
    }

LABEL_47:
    if (v36 != &v37)
    {
      free(v36);
    }
  }

  return v5;
}

BOOL mlir::anec::SpaceToBatch::addOpToNetwork(mlir::Operation **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrSpaceToBatchUnitInfo,mlir::anec::SpaceToBatch>();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

BOOL mlir::anec::Resize::inferPromotedReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v107 = *MEMORY[0x1E69E9840];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v85[0] = v21;
  v85[1] = v19;
  v90 = a6;
  LOBYTE(v91) = 0;
  v92 = 0;
  v93 = a7;
  v94 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v90);
    if (v92 == 1)
    {
      v92 = 0;
    }

    mlir::OperationName::OperationName(&v91, "anec.resize", 11, Context);
    v92 = 1;
  }

  v95 = a4;
  v96 = a5;
  v23 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v24 = a2;
  }

  else
  {
    v24 = v23;
  }

  if (!mlir::anec::ResizeAdaptor::verify(&v90, v24))
  {
    return 0;
  }

  mlir::ShapedType::getShape(v85);
  v26 = v25;
  Shape = mlir::ShapedType::getShape(v85);
  v87 = v89;
  v88 = 0x500000000;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v26);
  v29 = mlir::anec::getIndexFromDim(1, v26);
  v30 = mlir::anec::getIndexFromDim(3, v26);
  v31 = mlir::anec::getIndexFromDim(4, v26);
  v83 = *(Shape + 8 * IndexFromDim);
  v84 = *(Shape + 8 * v29);
  v82 = *(Shape + 8 * v30);
  v32 = *(Shape + 8 * v31);
  Value = mlir::AffineMapAttr::getValue(&v90);
  v34 = mlir::DictionaryAttr::end(&v90);
  v35 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v34 - 16), *(*(v91 + 96) + 24));
  if (v35)
  {
    if (*(*v35 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  v86 = v36;
  mlir::FloatAttr::getValue(&v97, &v86);
  v41 = llvm::APFloat::convertToFloat(&v97, v38, v39, v40);
  v42 = v98[0];
  v44 = llvm::APFloatBase::PPCDoubleDouble(v43);
  if (v44 == v42)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v98);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v98);
  }

  v45 = mlir::AffineMapAttr::getValue(&v90);
  v46 = mlir::DictionaryAttr::end(&v90);
  v47 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v45 + 48), (v46 - 16), *(*(v91 + 96) + 32));
  if (v47)
  {
    if (*(*v47 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }
  }

  else
  {
    v48 = 0;
  }

  v86 = v48;
  mlir::FloatAttr::getValue(&v97, &v86);
  v52 = llvm::APFloat::convertToFloat(&v97, v49, v50, v51);
  if (v44 == v98[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v98);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v98);
  }

  if (v41 == -1.0 && v52 == -1.0)
  {
    v53 = mlir::AffineMapAttr::getValue(&v90);
    v54 = mlir::DictionaryAttr::end(&v90);
    v86 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v53, (v54 - 48), **(v91 + 96));
    mlir::IntegerAttr::getValue(&v86, &v97);
    if (LODWORD(v98[0]) > 0x40)
    {
      v55 = *v97;
      MEMORY[0x1AC55A040]();
    }

    else
    {
      v55 = v97;
    }

    v57 = mlir::AffineMapAttr::getValue(&v90);
    v58 = mlir::DictionaryAttr::end(&v90);
    v86 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v57 + 48), v58, *(*(v91 + 96) + 40));
    mlir::IntegerAttr::getValue(&v86, &v97);
    if (LODWORD(v98[0]) > 0x40)
    {
      v56 = *v97;
      MEMORY[0x1AC55A040]();
    }

    else
    {
      v56 = v97;
    }
  }

  else
  {
    if (v41 == -1.0 || v41 <= 0.0 || v52 == -1.0 || v52 <= 0.0)
    {
      if (a3)
      {
        mlir::emitError(a2, &v97);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v97, "scale_factor_x and scale_factor_y must be >= 0.0f");
        v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v72);
        if (v97)
        {
          mlir::InFlightDiagnostic::report(&v97);
        }

        if (v106 == 1)
        {
          if (v105 != &v106)
          {
            free(v105);
          }

          v73 = __p;
          if (__p)
          {
            v74 = v104;
            v75 = __p;
            if (v104 != __p)
            {
              do
              {
                v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
              }

              while (v74 != v73);
              v75 = __p;
            }

            v104 = v73;
            operator delete(v75);
          }

          v76 = v101;
          if (v101)
          {
            v77 = v102;
            v78 = v101;
            if (v102 != v101)
            {
              do
              {
                v80 = *--v77;
                v79 = v80;
                *v77 = 0;
                if (v80)
                {
                  MEMORY[0x1AC55A040](v79, 0x1000C8077774924);
                }
              }

              while (v77 != v76);
              v78 = v101;
            }

            v102 = v76;
            operator delete(v78);
          }

          if (v99 != &v100)
          {
            free(v99);
          }
        }
      }

      else
      {
        v37 = 0;
      }

      goto LABEL_56;
    }

    v56 = vcvtms_s32_f32(v41 * v32);
    v55 = vcvtms_s32_f32(v52 * v82);
  }

  v59 = v88;
  if (v88 >= HIDWORD(v88))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v88 + 1, 8);
    v59 = v88;
  }

  *(v87 + v59) = v83;
  LODWORD(v88) = v88 + 1;
  v60 = mlir::anec::getIndexFromDim(2, v26);
  v61 = v88;
  if (v62)
  {
    v63 = *(Shape + 8 * v60);
    if (v88 >= HIDWORD(v88))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v88 + 1, 8);
      v61 = v88;
    }

    *(v87 + v61) = v63;
    v61 = v88 + 1;
    LODWORD(v88) = v88 + 1;
  }

  if (v61 >= HIDWORD(v88))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v61 + 1, 8);
    v61 = v88;
  }

  *(v87 + v61) = v84;
  v64 = (v88 + 1);
  LODWORD(v88) = v64;
  if (v64 >= HIDWORD(v88))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v64 + 1, 8);
    LODWORD(v64) = v88;
  }

  *(v87 + v64) = v55;
  v65 = (v88 + 1);
  LODWORD(v88) = v65;
  if (v65 >= HIDWORD(v88))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v65 + 1, 8);
    LODWORD(v65) = v88;
  }

  *(v87 + v65) = v56;
  LODWORD(v88) = v88 + 1;
  v66 = v88;
  v67 = v87;
  isSplat = mlir::ElementsAttr::isSplat(v85);
  v69 = mlir::MemRefType::get(v67, v66, isSplat, 0, 0, 0);
  v70 = *(a11 + 8);
  if (v70 >= *(a11 + 12))
  {
    v81 = v69;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v70 + 1, 8);
    v69 = v81;
    LODWORD(v70) = *(a11 + 8);
  }

  *(*a11 + 8 * v70) = v69;
  ++*(a11 + 8);
  v37 = 1;
LABEL_56:
  if (v87 != v89)
  {
    free(v87);
  }

  return v37;
}

BOOL mlir::anec::ResizeAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v54 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v54); i != mlir::DictionaryAttr::end(&v54); i = (i + 16))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v54))
      {
        if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 8))
        {
          v21 = *(i + 1);
          while (1)
          {
            if (i == mlir::DictionaryAttr::end(&v54))
            {
              v51 = "'anec.resize' op requires attribute 'sampling_modes'";
              v53 = 259;
              mlir::emitError(a2, &v51, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v65 != 1)
              {
                return v5;
              }

              if (v64 != &v65)
              {
                free(v64);
              }

              v22 = __p;
              if (__p)
              {
                v23 = v63;
                v24 = __p;
                if (v63 != __p)
                {
                  do
                  {
                    v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
                  }

                  while (v23 != v22);
                  v24 = __p;
                }

                v63 = v22;
                operator delete(v24);
              }

              v9 = v60;
              if (!v60)
              {
                goto LABEL_87;
              }

              v25 = v61;
              v11 = v60;
              if (v61 == v60)
              {
                goto LABEL_86;
              }

              do
              {
                v27 = *--v25;
                v26 = v27;
                *v25 = 0;
                if (v27)
                {
                  MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
                }
              }

              while (v25 != v9);
              goto LABEL_85;
            }

            if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 16))
            {
              break;
            }

            i = (i + 16);
          }

          v28 = *(i + 1);
          if (i != mlir::DictionaryAttr::end(&v54))
          {
            v29 = 0;
            v30 = 0;
            while (ZinCompressedFootprintInfo::GetCompressedBytes(i) != *(*(a1[1] + 96) + 40))
            {
              if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 24))
              {
                v29 = *(i + 1);
              }

              else if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 32))
              {
                v30 = *(i + 1);
              }

              i = (i + 16);
              if (i == mlir::DictionaryAttr::end(&v54))
              {
                goto LABEL_69;
              }
            }

            v38 = *(i + 1);
            if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v51 = v14, Value = mlir::AffineMapAttr::getValue(&v51), mlir::Type::isUnsignedInteger(&Value, 64)))
            {
              if (!v38 || *(*v38 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v51 = v38, Value = mlir::AffineMapAttr::getValue(&v51), mlir::Type::isUnsignedInteger(&Value, 64)))
              {
                if (!v29 || *(*v29 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && (v51 = v29, Value = mlir::AffineMapAttr::getValue(&v51), mlir::Type::isF32(&Value)))
                {
                  if (!v30 || *(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && (v51 = v30, Value = mlir::AffineMapAttr::getValue(&v51), mlir::Type::isF32(&Value)))
                  {
                    if (!v21)
                    {
                      goto LABEL_127;
                    }

                    v39 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                    v51 = v21;
                    v52 = v39;
                    Type = mlir::ElementsAttr::getType(&v51);
                    v41 = Type;
                    if (Type)
                    {
                      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
                    }

                    Value = v41;
                    v57 = Type;
                    Shape = mlir::ShapedType::getShape(&Value);
                    v55 = 2;
                    if (v43 == 1 && *Shape == v55 && (v50 = v21, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v50) & 1) != 0))
                    {
LABEL_127:
                      if (!v28)
                      {
                        return 1;
                      }

                      v44 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
                      v51 = v28;
                      v52 = v44;
                      v45 = mlir::ElementsAttr::getType(&v51);
                      v46 = v45;
                      if (v45)
                      {
                        v45 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v45 + 8);
                      }

                      Value = v46;
                      v57 = v45;
                      v47 = mlir::ShapedType::getShape(&Value);
                      v55 = 2;
                      if (v48 == 1 && *v47 == v55)
                      {
                        v50 = v28;
                        if (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_2>(&v50))
                        {
                          return 1;
                        }
                      }

                      v49 = "'anec.resize' op attribute 'sampling_modes' failed to satisfy constraint: SamplingGridMode elements attribute of shape {2}";
                    }

                    else
                    {
                      v49 = "'anec.resize' op attribute 'sampling_methods' failed to satisfy constraint: SamplingGridMethod elements attribute of shape {2}";
                    }
                  }

                  else
                  {
                    v49 = "'anec.resize' op attribute 'scale_factor_y' failed to satisfy constraint: 32-bit float attribute";
                  }
                }

                else
                {
                  v49 = "'anec.resize' op attribute 'scale_factor_x' failed to satisfy constraint: 32-bit float attribute";
                }
              }

              else
              {
                v49 = "'anec.resize' op attribute 'width' failed to satisfy constraint: 64-bit unsigned integer attribute";
              }

              v51 = v49;
              v53 = 259;
              mlir::emitError(a2, &v51, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
            }

            else
            {
              v51 = "'anec.resize' op attribute 'height' failed to satisfy constraint: 64-bit unsigned integer attribute";
              v53 = 259;
              mlir::emitError(a2, &v51, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v65 == 1)
              {
                mlir::Diagnostic::~Diagnostic(&v57);
              }
            }

            return v5;
          }

LABEL_69:
          v51 = "'anec.resize' op requires attribute 'width'";
          v53 = 259;
          mlir::emitError(a2, &v51, &Value);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
          if (Value)
          {
            mlir::InFlightDiagnostic::report(&Value);
          }

          if (v65 != 1)
          {
            return v5;
          }

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

          v9 = v60;
          if (!v60)
          {
            goto LABEL_87;
          }

          v34 = v61;
          v11 = v60;
          if (v61 == v60)
          {
            goto LABEL_86;
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

          while (v34 != v9);
          goto LABEL_85;
        }

        i = (i + 16);
      }

      v51 = "'anec.resize' op requires attribute 'sampling_methods'";
      v53 = 259;
      mlir::emitError(a2, &v51, &Value);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v65 != 1)
      {
        return v5;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v63;
        v17 = __p;
        if (v63 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v63 = v15;
        operator delete(v17);
      }

      v9 = v60;
      if (!v60)
      {
        goto LABEL_87;
      }

      v18 = v61;
      v11 = v60;
      if (v61 == v60)
      {
        goto LABEL_86;
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

      while (v18 != v9);
LABEL_85:
      v11 = v60;
      goto LABEL_86;
    }
  }

  v51 = "'anec.resize' op requires attribute 'height'";
  v53 = 259;
  mlir::emitError(a2, &v51, &Value);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v63;
      v8 = __p;
      if (v63 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v63 = v6;
      operator delete(v8);
    }

    v9 = v60;
    if (v60)
    {
      v10 = v61;
      v11 = v60;
      if (v61 != v60)
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
        goto LABEL_85;
      }

LABEL_86:
      v61 = v9;
      operator delete(v11);
    }

LABEL_87:
    if (v58 != &v59)
    {
      free(v58);
    }
  }

  return v5;
}

uint64_t *mlir::anec::Resize::getHeight(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 48), **(*(*this + 6) + 96));
  mlir::IntegerAttr::getValue(&v9, &AttrDictionary);
  if (v8 <= 0x40)
  {
    return AttrDictionary;
  }

  v5 = *AttrDictionary;
  MEMORY[0x1AC55A040]();
  return v5;
}

uint64_t *mlir::anec::Resize::getWidth(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 40));
  mlir::IntegerAttr::getValue(&v9, &AttrDictionary);
  if (v8 <= 0x40)
  {
    return AttrDictionary;
  }

  v5 = *AttrDictionary;
  MEMORY[0x1AC55A040]();
  return v5;
}

void std::vector<ZinIrSamplingMethodInfo>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

BOOL mlir::anec::Resize::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Resize::getZinIrUnitInfo();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

BOOL mlir::anec::InputView::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v74 = *MEMORY[0x1E69E9840];
  v67 = a6;
  LOBYTE(v68) = 0;
  v69 = 0;
  v70 = a7;
  v71 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v67);
    if (v69 == 1)
    {
      v69 = 0;
    }

    mlir::OperationName::OperationName(&v68, "anec.input_view", 15, Context);
    v69 = 1;
    a1 = v15;
  }

  v72 = a4;
  v73 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::InputViewAdaptor::verify(&v67, v18))
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v50[0] = v20;
  v50[1] = v19;
  Shape = mlir::ShapedType::getShape(v50);
  v23 = v22;
  Value = mlir::AffineMapAttr::getValue(&v67);
  v25 = mlir::DictionaryAttr::end(&v67);
  v51 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v25 - 48), **(v68 + 96));
  mlir::IntegerAttr::getValue(&v51, &v52);
  if (v53 > 0x40)
  {
    v26 = *v52;
    MEMORY[0x1AC55A040]();
  }

  else
  {
    v26 = v52;
  }

  v49 = v26;
  if (v26 >= v23)
  {
    v52 = "'anec.input_view' op attribute 'dimension = {0}' is not consistent with input rank size = {1}";
    v53 = 93;
    v54 = &v61;
    v55 = 2;
    v56 = 1;
    v57 = &unk_1F1A2EBB0;
    v58 = &v49;
    v59 = &unk_1F1A2EBE0;
    v60 = v23;
    v61 = &v57;
    v62 = &v59;
    return mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<unsigned long long &>>>>(a2, a3, &v52);
  }

  v28 = mlir::AffineMapAttr::getValue(&v67);
  v29 = mlir::DictionaryAttr::end(&v67);
  v51 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v28 + 16), (v29 - 32), *(*(v68 + 96) + 8));
  mlir::IntegerAttr::getValue(&v51, &v52);
  if (v53 > 0x40)
  {
    v30 = *v52;
    MEMORY[0x1AC55A040]();
  }

  else
  {
    v30 = v52;
  }

  v48 = v30;
  v31 = mlir::AffineMapAttr::getValue(&v67);
  v32 = mlir::DictionaryAttr::end(&v67);
  v51 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v31 + 32), (v32 - 16), *(*(v68 + 96) + 16));
  mlir::IntegerAttr::getValue(&v51, &v52);
  if (v53 > 0x40)
  {
    v33 = *v52;
    MEMORY[0x1AC55A040]();
  }

  else
  {
    v33 = v52;
  }

  v51 = v33;
  Step = mlir::anec::detail::InputViewGenericAdaptorBase::getStep(&v67);
  v47 = Step;
  v35 = *(Shape + 8 * v49);
  v46 = v35;
  if (Step < 1)
  {
    if (v33 != v35)
    {
      v52 = "'anec.input_view' with negative stride must have size {0} that equals the size of tensor {1} at dimension {2}";
      v53 = 109;
      v54 = &v63;
      v55 = 3;
      v56 = 1;
      v57 = &unk_1F1A2EBB0;
      v58 = &v51;
      v59 = &unk_1F1A177C0;
      v60 = &v46;
      v61 = &unk_1F1A2EBB0;
      v62 = &v49;
      v63 = &v57;
      v64 = &v59;
      v65[0] = &v61;
      return mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<unsigned long long &>>>>(a2, a3, &v52);
    }
  }

  else if (v30 + (v33 - 1) * Step + 1 > v35)
  {
    v52 = "'anec.input_view' with offset {0}, size {1} and stride {2} is out of bounds for dimension {3} of size {4}";
    v53 = 105;
    v54 = v66;
    v55 = 5;
    v56 = 1;
    v57 = &unk_1F1A2EBB0;
    v58 = &v48;
    v59 = &unk_1F1A2EBB0;
    v60 = &v51;
    v61 = &unk_1F1A177C0;
    v62 = &v47;
    v63 = &unk_1F1A2EBB0;
    v64 = &v49;
    v65[0] = &unk_1F1A177C0;
    v65[1] = &v46;
    v66[0] = &v57;
    v66[1] = &v59;
    v66[2] = &v61;
    v66[3] = &v63;
    v66[4] = v65;
    return mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<unsigned long long &>>>>(a2, a3, &v52);
  }

  LODWORD(v36) = 0;
  v37 = 0;
  v52 = &v54;
  v53 = 0x500000000;
  v38 = 8 * v23;
  do
  {
    if (v37 == v49)
    {
      v39 = &v51;
    }

    else
    {
      v39 = Shape;
    }

    v40 = *v39;
    if (v36 >= HIDWORD(v53))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, &v54, v36 + 1, 8);
      LODWORD(v36) = v53;
    }

    *(v52 + v36) = v40;
    v36 = (v53 + 1);
    LODWORD(v53) = v53 + 1;
    ++v37;
    Shape += 8;
    v38 -= 8;
  }

  while (v38);
  v41 = v52;
  isSplat = mlir::ElementsAttr::isSplat(v50);
  v43 = mlir::MemRefType::get(v41, v36, isSplat, 0, 0, 0);
  v44 = *(a11 + 8);
  if (v44 >= *(a11 + 12))
  {
    v45 = v43;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v44 + 1, 8);
    v43 = v45;
    LODWORD(v44) = *(a11 + 8);
  }

  *(*a11 + 8 * v44) = v43;
  ++*(a11 + 8);
  if (v52 != &v54)
  {
    free(v52);
  }

  return 1;
}

BOOL mlir::anec::InputViewAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v40 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v40); i != mlir::DictionaryAttr::end(&v40); i = (i + 16))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v40))
      {
        if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 8))
        {
          v21 = *(i + 1);
          while (i != mlir::DictionaryAttr::end(&v40))
          {
            if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 16))
            {
              v28 = *(i + 1);
              while (i != mlir::DictionaryAttr::end(&v40))
              {
                if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 24))
                {
                  v36 = *(i + 1);
                  if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v38[0] = v14, Value = mlir::AffineMapAttr::getValue(v38), mlir::Type::isUnsignedInteger(&Value, 64)))
                  {
                    if (!v21 || *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v38[0] = v21, Value = mlir::AffineMapAttr::getValue(v38), mlir::Type::isUnsignedInteger(&Value, 64)))
                    {
                      if (!v28 || *(*v28 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v38[0] = v28, Value = mlir::AffineMapAttr::getValue(v38), mlir::Type::isUnsignedInteger(&Value, 64)))
                      {
                        if (!v36)
                        {
                          return 1;
                        }

                        if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
                        {
                          v38[0] = v36;
                          Value = mlir::AffineMapAttr::getValue(v38);
                          if (mlir::Type::isSignedInteger(&Value, 64))
                          {
                            return 1;
                          }
                        }

                        v37 = "'anec.input_view' op attribute 'step' failed to satisfy constraint: 64-bit signed integer attribute";
                      }

                      else
                      {
                        v37 = "'anec.input_view' op attribute 'size' failed to satisfy constraint: 64-bit unsigned integer attribute";
                      }
                    }

                    else
                    {
                      v37 = "'anec.input_view' op attribute 'offset' failed to satisfy constraint: 64-bit unsigned integer attribute";
                    }

                    v38[0] = v37;
                    v39 = 259;
                    mlir::emitError(a2, v38, &Value);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
                    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
                  }

                  else
                  {
                    v38[0] = "'anec.input_view' op attribute 'dimension' failed to satisfy constraint: 64-bit unsigned integer attribute";
                    v39 = 259;
                    mlir::emitError(a2, v38, &Value);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
                    if (Value)
                    {
                      mlir::InFlightDiagnostic::report(&Value);
                    }

                    if (v50 == 1)
                    {
                      mlir::Diagnostic::~Diagnostic(&v42);
                    }
                  }

                  return v5;
                }

                i = (i + 16);
              }

              v38[0] = "'anec.input_view' op requires attribute 'step'";
              v39 = 259;
              mlir::emitError(a2, v38, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v50 != 1)
              {
                return v5;
              }

              if (v49 != &v50)
              {
                free(v49);
              }

              v29 = __p;
              if (__p)
              {
                v30 = v48;
                v31 = __p;
                if (v48 != __p)
                {
                  do
                  {
                    v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
                  }

                  while (v30 != v29);
                  v31 = __p;
                }

                v48 = v29;
                operator delete(v31);
              }

              v9 = v45;
              if (!v45)
              {
                goto LABEL_83;
              }

              v32 = v46;
              v11 = v45;
              if (v46 == v45)
              {
                goto LABEL_82;
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

              while (v32 != v9);
              goto LABEL_81;
            }

            i = (i + 16);
          }

          v38[0] = "'anec.input_view' op requires attribute 'size'";
          v39 = 259;
          mlir::emitError(a2, v38, &Value);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
          if (Value)
          {
            mlir::InFlightDiagnostic::report(&Value);
          }

          if (v50 != 1)
          {
            return v5;
          }

          if (v49 != &v50)
          {
            free(v49);
          }

          v22 = __p;
          if (__p)
          {
            v23 = v48;
            v24 = __p;
            if (v48 != __p)
            {
              do
              {
                v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v48 = v22;
            operator delete(v24);
          }

          v9 = v45;
          if (!v45)
          {
            goto LABEL_83;
          }

          v25 = v46;
          v11 = v45;
          if (v46 == v45)
          {
            goto LABEL_82;
          }

          do
          {
            v27 = *--v25;
            v26 = v27;
            *v25 = 0;
            if (v27)
            {
              MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
            }
          }

          while (v25 != v9);
          goto LABEL_81;
        }

        i = (i + 16);
      }

      v38[0] = "'anec.input_view' op requires attribute 'offset'";
      v39 = 259;
      mlir::emitError(a2, v38, &Value);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v50 != 1)
      {
        return v5;
      }

      if (v49 != &v50)
      {
        free(v49);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v48;
        v17 = __p;
        if (v48 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v48 = v15;
        operator delete(v17);
      }

      v9 = v45;
      if (!v45)
      {
        goto LABEL_83;
      }

      v18 = v46;
      v11 = v45;
      if (v46 == v45)
      {
        goto LABEL_82;
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

      while (v18 != v9);
LABEL_81:
      v11 = v45;
      goto LABEL_82;
    }
  }

  v38[0] = "'anec.input_view' op requires attribute 'dimension'";
  v39 = 259;
  mlir::emitError(a2, v38, &Value);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v50 == 1)
  {
    if (v49 != &v50)
    {
      free(v49);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v48;
      v8 = __p;
      if (v48 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v48 = v6;
      operator delete(v8);
    }

    v9 = v45;
    if (v45)
    {
      v10 = v46;
      v11 = v45;
      if (v46 != v45)
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
        goto LABEL_81;
      }

LABEL_82:
      v46 = v9;
      operator delete(v11);
    }

LABEL_83:
    if (v43 != &v44)
    {
      free(v43);
    }
  }

  return v5;
}

uint64_t mlir::anec::detail::InputViewGenericAdaptorBase::getStep(mlir::anec::detail::InputViewGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v8 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), v3, *(*(*(this + 1) + 96) + 24));
  mlir::IntegerAttr::getValue(&v8, &v6);
  if (v7 > 0x40)
  {
    v4 = *v6;
    MEMORY[0x1AC55A040]();
  }

  else if (v7)
  {
    return (v6 << -v7) >> -v7;
  }

  else
  {
    return 0;
  }

  return v4;
}

BOOL mlir::anec::InputView::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::InputView::getZinIrUnitInfo();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

uint64_t *mlir::anec::InputView::getOffset(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 8));
  mlir::IntegerAttr::getValue(&v9, &AttrDictionary);
  if (v8 <= 0x40)
  {
    return AttrDictionary;
  }

  v5 = *AttrDictionary;
  MEMORY[0x1AC55A040]();
  return v5;
}

uint64_t *mlir::anec::InputView::getSize(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 16));
  mlir::IntegerAttr::getValue(&v9, &AttrDictionary);
  if (v8 <= 0x40)
  {
    return AttrDictionary;
  }

  v5 = *AttrDictionary;
  MEMORY[0x1AC55A040]();
  return v5;
}

uint64_t mlir::anec::InputView::getStep(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  mlir::IntegerAttr::getValue(&v9, &AttrDictionary);
  if (v8 > 0x40)
  {
    v5 = *AttrDictionary;
    MEMORY[0x1AC55A040]();
  }

  else if (v8)
  {
    return (AttrDictionary << -v8) >> -v8;
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t mlir::anec::Transpose::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54 = *MEMORY[0x1E69E9840];
  v47 = a6;
  LOBYTE(v48) = 0;
  v49 = 0;
  v50 = a7;
  v51 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v47);
    if (v49 == 1)
    {
      v49 = 0;
    }

    mlir::OperationName::OperationName(&v48, "anec.transpose", 14, Context);
    v49 = 1;
    a1 = v15;
  }

  v52 = a4;
  v53 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::TransposeAdaptor::verify(&v47, v18))
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v40[0] = v20;
  v40[1] = v19;
  Shape = mlir::ShapedType::getShape(v40);
  v23 = v22;
  Value = mlir::AffineMapAttr::getValue(&v47);
  v25 = mlir::DictionaryAttr::end(&v47);
  v39 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v25, **(v48 + 96));
  v44 = v46;
  v45 = 0x500000000;
  v26 = (8 * v23) >> 3;
  if (v26 < 6)
  {
    v27 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v26, 8);
    v27 = v45;
  }

  if (v23)
  {
    memcpy(v44 + 8 * v27, Shape, 8 * v23);
    v27 = v45;
  }

  LODWORD(v45) = v27 + v23;
  v41 = v43;
  v42 = 0x500000000;
  mlir::getListOfPairs<long long>(&v39, &v41);
  v29 = v44;
  if (v42)
  {
    v30 = v41;
    v31 = v41 + 16 * v42;
    do
    {
      v32 = *v30;
      v33 = *(v30 + 1);
      v30 += 16;
      *(v29 + v33) = *(Shape + v32);
    }

    while (v30 != v31);
  }

  v34 = v45;
  isSplat = mlir::ElementsAttr::isSplat(v40);
  v36 = mlir::MemRefType::get(v29, v34, isSplat, 0, 0, 0);
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v38 = v36;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v37 + 1, 8);
    v36 = v38;
    LODWORD(v37) = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = v36;
  ++*(a11 + 8);
  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  return 1;
}

BOOL mlir::anec::TransposeAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v36 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v36); i != mlir::DictionaryAttr::end(&v36); i += 2)
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v15;
        Type = mlir::ElementsAttr::getType(v34);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v37[0] = v17;
        v37[1] = Type;
        mlir::ShapedType::getShape(v37);
        if (v18 == 2)
        {
          v32 = v14;
          Value = mlir::ArrayAttr::getValue(&v32);
          v20 = Value;
          if (Value)
          {
            Value = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Value + 8);
          }

          v33[0] = v20;
          v33[1] = Value;
          if (*(mlir::ShapedType::getShape(v33) + 8) == 2)
          {
            v29 = v14;
            v30[0] = mlir::ArrayAttr::getValue(&v29);
            v30[1] = v21;
            isSplat = mlir::ElementsAttr::isSplat(v30);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v34[0] = "'anec.transpose' op attribute 'transpose_list' failed to satisfy constraint: list of 64-bits unsigned integer pairs";
      v35 = 259;
      mlir::emitError(a2, v34, v37);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
      if (v37[0])
      {
        mlir::InFlightDiagnostic::report(v37);
      }

      if (v45 == 1)
      {
        if (v44 != &v45)
        {
          free(v44);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v43;
          v24 = __p;
          if (v43 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v43 = v22;
          operator delete(v24);
        }

        v9 = v40;
        if (v40)
        {
          v25 = v41;
          v11 = v40;
          if (v41 != v40)
          {
            do
            {
              v27 = *--v25;
              v26 = v27;
              *v25 = 0;
              if (v27)
              {
                MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
              }
            }

            while (v25 != v9);
            goto LABEL_47;
          }

          goto LABEL_48;
        }

        goto LABEL_49;
      }

      return v5;
    }
  }

  v34[0] = "'anec.transpose' op requires attribute 'transpose_list'";
  v35 = 259;
  mlir::emitError(a2, v34, v37);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
  if (v37[0])
  {
    mlir::InFlightDiagnostic::report(v37);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v43;
      v8 = __p;
      if (v43 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v43 = v6;
      operator delete(v8);
    }

    v9 = v40;
    if (v40)
    {
      v10 = v41;
      v11 = v40;
      if (v41 != v40)
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
LABEL_47:
        v11 = v40;
      }

LABEL_48:
      v41 = v9;
      operator delete(v11);
    }

LABEL_49:
    if (v38 != &v39)
    {
      free(v38);
    }
  }

  return v5;
}

void *mlir::getListOfPairs<long long>(uint64_t *a1, uint64_t a2)
{
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v21, *a1, 0);
  v4 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v19, v4, NumElements);
  for (i = v22; v22 != v20; i = v22)
  {
    v19 = v21;
    v20 = v22;
    *&v22 = i + 1;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v19, &v17);
    if (v18 > 0x40)
    {
      v10 = *v17;
    }

    else if (v18)
    {
      v10 = (v17 << -v18) >> -v18;
    }

    else
    {
      v10 = 0;
    }

    v14[0] = v21;
    v14[1] = v22;
    *&v22 = v22 + 1;
    mlir::DenseElementsAttr::IntElementIterator::operator*(v14, &v15);
    if (v16 > 0x40)
    {
      v11 = *v15;
    }

    else if (v16)
    {
      v11 = (v15 << -v16) >> -v16;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(a2 + 8);
    if (v12 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v12 + 1, 16);
      v12 = *(a2 + 8);
    }

    v13 = (*a2 + 16 * v12);
    *v13 = v10;
    v13[1] = v11;
    ++*(a2 + 8);
    if (v16 >= 0x41 && v15)
    {
      MEMORY[0x1AC55A040](v15, 0x1000C8000313F17);
    }

    if (v18 >= 0x41)
    {
      if (v17)
      {
        MEMORY[0x1AC55A040](v17, 0x1000C8000313F17);
      }
    }

    v8 = *a1;
    v9 = mlir::DenseElementsAttr::getNumElements(a1);
    result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v19, v8, v9);
  }

  return result;
}

uint64_t mlir::anec::Transpose::getTransposeList(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
}

BOOL mlir::anec::Transpose::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Transpose::getZinIrUnitInfo();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

unint64_t mlir::anec::Transpose::fold(mlir::Operation **a1, uint64_t a2)
{
  v40[10] = *MEMORY[0x1E69E9840];
  v38 = v40;
  v39 = 0x500000000;
  v34[0] = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(v34);
  v34[0] = mlir::Operation::getAttrDictionary(*a1);
  v5 = mlir::ArrayAttr::getValue(v34);
  v34[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6), **(*(*a1 + 6) + 96));
  mlir::getListOfPairs<unsigned long long>(v34, &v38);
  if (!v39)
  {
LABEL_5:
    v8 = *(*(*a1 + 9) + 24) | 4;
    goto LABEL_6;
  }

  v7 = v38;
  while (*v7 == *(v7 + 1))
  {
    v7 += 16;
    if (v7 == &v38[16 * v39])
    {
      goto LABEL_5;
    }
  }

  v10 = *(a2 + 40);
  if (*(*a1 + 9))
  {
    v11 = *a1 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v37[0] = v12;
  v37[1] = v13;
  v14 = *v10;
  if (!*v10)
  {
    v35 = 0;
    v36 = 0;
LABEL_26:
    v8 = 0;
    goto LABEL_6;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8))
  {
    v35 = 0;
    v36 = 0;
    goto LABEL_26;
  }

  v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
  v35 = v14;
  v36 = v15;
  if (!v14)
  {
    goto LABEL_26;
  }

  Shape = mlir::ShapedType::getShape(v37);
  v18 = v17;
  v34[0] = mlir::ElementsAttr::getShapedType(&v35);
  v34[1] = v19;
  isSplat = mlir::ElementsAttr::isSplat(v34);
  v21 = mlir::RankedTensorType::get(Shape, v18, isSplat, 0);
  if (mlir::ElementsAttr::isSplat(&v35))
  {
    v22 = v35;
    v23 = v36;
    if (v21)
    {
      v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
    }

    else
    {
      v24 = 0;
    }

    v8 = mlir::reshapeElementsAttr(v22, v23, v21, v24) & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    mlir::mps::CPUNDArray::CPUNDArray(v34, v35, v36);
    v33[0] = 0;
    v33[1] = 0;
    if (v21)
    {
      v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
    }

    else
    {
      v25 = 0;
    }

    mlir::mps::CPUNDArray::tryMakeAliasedArray(v21, v25, v33, v32);
    mlir::ShapedType::getShape(v37);
    if (v26)
    {
      if (!(v26 >> 61))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    if (v39)
    {
      v27 = v38;
      v28 = &v38[16 * v39];
      do
      {
        v29 = *v27;
        v30 = *(v27 + 1);
        v27 += 16;
        *(8 * v30) = v29;
      }

      while (v27 != v28);
    }

    mlir::mps::transpose(v34, v32, 0, 0);
    n128_u64 = v33[0]->n128_u64;
    if (!v33[0])
    {
      n128_u64 = mlir::mps::CPUNDArray::getElementsAttr(v32, 0, 0);
    }

    v8 = n128_u64 & 0xFFFFFFFFFFFFFFFBLL;
    mlir::mps::CPUNDArray::~CPUNDArray(v32);
    mlir::mps::CPUNDArray::~CPUNDArray(v34);
  }

LABEL_6:
  if (v38 != v40)
  {
    free(v38);
  }

  return v8;
}

void *mlir::getListOfPairs<unsigned long long>(uint64_t *a1, uint64_t a2)
{
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v23, *a1, 0);
  v4 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v21, v4, NumElements);
  for (i = v24; v24 != v22; i = v24)
  {
    v21 = v23;
    v22 = v24;
    *&v24 = i + 1;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v21, &v19);
    if (v20 >= 0x41)
    {
      v10 = v19;
    }

    else
    {
      v10 = &v19;
    }

    v11 = *v10;
    v16[0] = v23;
    v16[1] = v24;
    *&v24 = v24 + 1;
    mlir::DenseElementsAttr::IntElementIterator::operator*(v16, &v17);
    if (v18 >= 0x41)
    {
      v12 = v17;
    }

    else
    {
      v12 = &v17;
    }

    v13 = *v12;
    v14 = *(a2 + 8);
    if (v14 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v14 + 1, 16);
      v14 = *(a2 + 8);
    }

    v15 = (*a2 + 16 * v14);
    *v15 = v11;
    v15[1] = v13;
    ++*(a2 + 8);
    if (v18 >= 0x41 && v17)
    {
      MEMORY[0x1AC55A040](v17, 0x1000C8000313F17);
    }

    if (v20 >= 0x41)
    {
      if (v19)
      {
        MEMORY[0x1AC55A040](v19, 0x1000C8000313F17);
      }
    }

    v8 = *a1;
    v9 = mlir::DenseElementsAttr::getNumElements(a1);
    result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v21, v8, v9);
  }

  return result;
}

uint64_t mlir::anec::Transpose::canonicalize(void *a1, uint64_t a2)
{
  v91[10] = *MEMORY[0x1E69E9840];
  v89 = v91;
  v90 = 0x500000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6), **(a1[6] + 96));
  mlir::getListOfPairs<unsigned long long>(&AttrDictionary, &v89);
  v7 = (*(*(a1[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  AttrDictionary = v7;
  v87 = v8;
  Shape = mlir::ShapedType::getShape(&AttrDictionary);
  if (v90)
  {
    v11 = (v90 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v11 > 3)
    {
      v14 = v11 + 1;
      v15 = v14 & 3;
      if ((v14 & 3) == 0)
      {
        v15 = 4;
      }

      v16 = v14 - v15;
      v13 = &v89[16 * v16];
      v17 = vdupq_n_s64(v10);
      v18 = (v89 + 32);
      v19 = 0uLL;
      v20 = v17;
      v21 = 0uLL;
      do
      {
        v22 = v18 - 4;
        v23 = vld2q_f64(v22);
        v24 = vld2q_f64(v18);
        v17 = vbslq_s8(vcgtq_u64(v17, v23), v23, v17);
        v20 = vbslq_s8(vcgtq_u64(v20, v24), v24, v20);
        v19 = vbslq_s8(vcgtq_u64(v19, v23), v19, v23);
        v21 = vbslq_s8(vcgtq_u64(v21, v24), v21, v24);
        v18 += 8;
        v16 -= 4;
      }

      while (v16);
      v25 = vbslq_s8(vcgtq_u64(v20, v17), v17, v20);
      v26 = vextq_s8(v25, v25, 8uLL).u64[0];
      v10 = vbsl_s8(vcgtd_u64(v26, v25.u64[0]), *v25.i8, v26);
      v27 = vbslq_s8(vcgtq_u64(v19, v21), v19, v21);
      v25.i64[0] = vextq_s8(v27, v27, 8uLL).u64[0];
      v12 = vbsl_s8(vcgtd_u64(v27.u64[0], v25.u64[0]), *v27.i8, *v25.i8);
    }

    else
    {
      v12 = 0;
      v13 = v89;
    }

    do
    {
      v29 = *v13;
      v13 += 16;
      v28 = v29;
      if (v29 < v10)
      {
        v10 = v28;
      }

      if (*&v12 <= v28)
      {
        v12 = v28;
      }
    }

    while (v13 != &v89[16 * v90]);
  }

  else
  {
    v12 = 0;
  }

  v30 = (Shape + 8 * v10);
  v31 = Shape + 8 * *&v12;
  if (v30 == (v31 + 8))
  {
    goto LABEL_32;
  }

  v32 = (*&v12 - v10) & 0x1FFFFFFFFFFFFFFFLL;
  if (v32 >= 3)
  {
    v35 = v32 + 1;
    v36 = (v32 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v34 = v30 + 8 * v36;
    v37 = v30 + 1;
    v38 = 0uLL;
    v39 = vdupq_n_s64(1uLL);
    v40 = v36;
    v41 = 0uLL;
    do
    {
      v38 = vsubq_s64(v38, vmvnq_s8(vceqq_s64(v37[-1], v39)));
      v41 = vsubq_s64(v41, vmvnq_s8(vceqq_s64(*v37, v39)));
      v37 += 2;
      v40 -= 4;
    }

    while (v40);
    v33 = vaddvq_s64(vaddq_s64(v41, v38));
    if (v35 == v36)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v33 = 0;
    v34 = Shape + 8 * v10;
  }

  v42 = v34 - 8;
  do
  {
    v43 = *(v42 + 8);
    v42 += 8;
    if (v43 != 1)
    {
      ++v33;
    }
  }

  while (v42 != v31);
LABEL_28:
  if (v33 <= 1)
  {
LABEL_32:
    v84[0] = (*(a1 - 1) & 0xFFFFFFFFFFFFFFF8);
    v79 = *(a1[9] + 24);
    v46 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>((a2 + 8), a1[3], v84, &v79);
    (*(*a2 + 8))(a2, a1, v46);
    v45 = 1;
    goto LABEL_33;
  }

  AttrDictionary = *(a1[9] + 24);
  DefiningOp = mlir::Value::getDefiningOp(&AttrDictionary);
  if (DefiningOp && *(*(DefiningOp + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
  {
    AttrDictionary = &v88;
    v87 = 0x500000000;
    v48 = DefiningOp;
    v84[0] = mlir::Operation::getAttrDictionary(DefiningOp);
    v49 = mlir::ArrayAttr::getValue(v84);
    v84[0] = mlir::Operation::getAttrDictionary(v48);
    v50 = mlir::ArrayAttr::getValue(v84);
    v52 = v48;
    v84[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v49, (v50 + 16 * v51), **(*(v48 + 6) + 96));
    mlir::getListOfPairs<unsigned long long>(v84, &AttrDictionary);
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v77[0] = 0;
    v77[1] = 0;
    v78 = 0;
    if (v87)
    {
      v53 = AttrDictionary;
      v54 = 16 * v87;
      do
      {
        v55 = *v53++;
        *v84 = v55;
        *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::operator[](&v79, v84) = *(&v55 + 1);
        v56 = v84[0];
        *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::operator[](v77, &v84[1]) = v56;
        v54 -= 16;
      }

      while (v54);
    }

    if (v90)
    {
      v57 = v89;
      v58 = &v89[16 * v90];
      do
      {
        *v84 = *v57;
        __src = v84[0];
        if (v78)
        {
          v60 = (v78 - 1) & (((0xBF58476D1CE4E5B9 * v84[0]) >> 31) ^ (484763065 * LODWORD(v84[0])));
          v61 = *(v77[0] + 2 * v60);
          if (v84[0] == v61)
          {
LABEL_44:
            if (v60 != v78)
            {
              __src = *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::operator[](v77, v84);
            }
          }

          else
          {
            v62 = 1;
            while (v61 != -1)
            {
              v63 = v60 + v62++;
              v60 = v63 & (v78 - 1);
              v61 = *(v77[0] + 2 * v60);
              if (v84[0] == v61)
              {
                goto LABEL_44;
              }
            }
          }
        }

        v59 = v84[1];
        *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::operator[](&v79, &__src) = v59;
        v57 += 16;
      }

      while (v57 != v58);
    }

    v84[0] = v85;
    v84[1] = 0x500000000;
    if (!v80)
    {
      goto LABEL_65;
    }

    if (v81)
    {
      v64 = 16 * v81;
      v65 = v79;
      while (*v65 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v65 = (v65 + 16);
        v64 -= 16;
        if (!v64)
        {
          goto LABEL_65;
        }
      }
    }

    else
    {
      v65 = v79;
    }

    v66 = (v79 + 16 * v81);
    if (v65 == v66)
    {
LABEL_65:
      v68 = 0;
    }

    else
    {
      do
      {
        v67 = *(v65 + 1);
        if (*v65 != v67)
        {
          __src = *v65;
          v83 = v67;
          llvm::SmallVectorImpl<long long>::insert<long long const*,void>(v84, v84[0] + 8 * LODWORD(v84[1]), &__src, v84);
        }

        do
        {
          v65 = (v65 + 16);
        }

        while (v65 != v66 && *v65 >= 0xFFFFFFFFFFFFFFFELL);
      }

      while (v65 != v66);
      v68 = (LODWORD(v84[1]) >> 1);
    }

    __src = v68;
    v83 = 2;
    Context = mlir::Attribute::getContext((a1 + 3));
    v70 = mlir::IntegerType::get(Context, 0x40u, 2u);
    v71 = mlir::RankedTensorType::get(&__src, 2, v70, 0);
    if (v71)
    {
      v72 = v71;
      v73 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v71 + 8);
      v71 = v72;
    }

    else
    {
      v73 = 0;
    }

    v76 = mlir::DenseElementsAttr::getFromRawBuffer(v71, v73, v84[0], 8 * LODWORD(v84[1]));
    v74 = a1[3];
    __src = *(*(v52 + 9) + 24);
    v75 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value,mlir::DenseIntElementsAttr &>((a2 + 8), v74, &__src, &v76);
    (*(*a2 + 8))(a2, a1, v75);
    if (v84[0] != v85)
    {
      free(v84[0]);
    }

    llvm::deallocate_buffer(v77[0], (16 * v78));
  }

  v45 = 0;
LABEL_33:
  if (v89 != v91)
  {
    free(v89);
  }

  return v45;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = (v2 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v7 = 0;
    v8 = 1;
    while (v6 != -1)
    {
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = v6 == -2;
      }

      if (v9)
      {
        v7 = v5;
      }

      v10 = v4 + v8++;
      v4 = v10 & v3;
      v5 = (*a1 + 16 * (v10 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v7)
    {
      v5 = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v11 = *(a1 + 8);
  if (4 * v11 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<unsigned long,unsigned long,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,unsigned long>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::LookupBucketFor<unsigned long long>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v11 = *(v14 + 8);
    v5 = v15;
    goto LABEL_15;
  }

  if (v2 + ~v11 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
    goto LABEL_24;
  }

LABEL_15:
  *(a1 + 8) = v11 + 1;
  if (*v5 != -1)
  {
    --*(a1 + 12);
  }

  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::Transpose::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
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

BOOL mlir::anec::Padding::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v65 = *MEMORY[0x1E69E9840];
  v58 = a6;
  LOBYTE(v59) = 0;
  v60 = 0;
  v61 = a7;
  v62 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v58);
    if (v60 == 1)
    {
      v60 = 0;
    }

    mlir::OperationName::OperationName(&v59, "anec.padding", 12, Context);
    v60 = 1;
    a1 = v15;
  }

  v63 = a4;
  v64 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::PaddingAdaptor::verify(&v58, v18))
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v49[0] = v20;
  v49[1] = v19;
  Shape = mlir::ShapedType::getShape(v49);
  v22 = mlir::ShapedType::getShape(v49);
  v24 = (v22 + 8 * v23);
  v55 = v57;
  v56 = 0x500000000;
  v25 = (v24 - Shape) >> 3;
  if (v25 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v57, v25, 8);
    v26 = v56;
    if (v24 == Shape)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v26 = 0;
  if (v24 != Shape)
  {
LABEL_16:
    memcpy(v55 + 8 * v26, Shape, v24 - Shape);
    v26 = v56;
  }

LABEL_17:
  LODWORD(v56) = v26 + ((v24 - Shape) >> 3);
  v52 = v54;
  v53 = 0x500000000;
  v50[0] = v51;
  v50[1] = 0x500000000;
  Value = mlir::AffineMapAttr::getValue(&v58);
  v29 = mlir::DictionaryAttr::end(&v58);
  v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v29 - 16), *(*(v59 + 96) + 8));
  mlir::getValues<long long>(v30, &v52);
  v31 = mlir::AffineMapAttr::getValue(&v58);
  v32 = mlir::DictionaryAttr::end(&v58);
  v33 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v31 + 32), v32, *(*(v59 + 96) + 16));
  mlir::getValues<long long>(v33, v50);
  if (v53)
  {
    v34 = 0;
    v35 = 0;
    v36 = v52;
    v37 = 16 * v53;
    do
    {
      if (v36[v35] != 8)
      {
        v38 = v53;
        mlir::ShapedType::getShape(v49);
        ReferenceFormatIndex = mlir::anec::getReferenceFormatIndex(v35, v38, v39);
        if ((v41 & 1) == 0)
        {
          v27 = mlir::emitOptionalError<char const(&)[41]>(a2, a3, "'anec.padding' op attributes are inconsistent with input rank");
          goto LABEL_27;
        }

        *(v55 + ReferenceFormatIndex) += *(v50[0] + v34 + 8) + *(v50[0] + v34);
      }

      v35 = (v35 + 1);
      v34 += 16;
    }

    while (v37 != v34);
  }

  v42 = v55;
  v43 = v56;
  isSplat = mlir::ElementsAttr::isSplat(v49);
  v45 = mlir::MemRefType::get(v42, v43, isSplat, 0, 0, 0);
  v46 = *(a11 + 8);
  if (v46 >= *(a11 + 12))
  {
    v48 = v45;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v46 + 1, 8);
    v45 = v48;
    LODWORD(v46) = *(a11 + 8);
  }

  *(*a11 + 8 * v46) = v45;
  ++*(a11 + 8);
  v27 = 1;
LABEL_27:
  if (v50[0] != v51)
  {
    free(v50[0]);
  }

  if (v52 != v54)
  {
    free(v52);
  }

  if (v55 != v57)
  {
    free(v55);
  }

  return v27;
}

BOOL mlir::anec::PaddingAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v58 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v58); ; i = (i + 16))
  {
    if (i == mlir::DictionaryAttr::end(&v58))
    {
      *&v55 = "'anec.padding' op requires attribute 'background_value'";
      v57 = 259;
      mlir::emitError(a2, &v55, &v62);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
      if (v62)
      {
        mlir::InFlightDiagnostic::report(&v62);
      }

      if (v70 != 1)
      {
        return v5;
      }

      if (v69 != &v70)
      {
        free(v69);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v68;
        v8 = __p;
        if (v68 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v68 = v6;
        operator delete(v8);
      }

      v9 = v65;
      if (!v65)
      {
        goto LABEL_84;
      }

      v10 = v66;
      v11 = v65;
      if (v66 == v65)
      {
        goto LABEL_83;
      }

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
LABEL_82:
      v11 = v65;
      goto LABEL_83;
    }

    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      break;
    }
  }

  v14 = *(i + 1);
  while (1)
  {
    if (i == mlir::DictionaryAttr::end(&v58))
    {
      *&v55 = "'anec.padding' op requires attribute 'padding_modes'";
      v57 = 259;
      mlir::emitError(a2, &v55, &v62);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
      if (v62)
      {
        mlir::InFlightDiagnostic::report(&v62);
      }

      if (v70 != 1)
      {
        return v5;
      }

      if (v69 != &v70)
      {
        free(v69);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v68;
        v17 = __p;
        if (v68 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v68 = v15;
        operator delete(v17);
      }

      v9 = v65;
      if (!v65)
      {
        goto LABEL_84;
      }

      v18 = v66;
      v11 = v65;
      if (v66 == v65)
      {
        goto LABEL_83;
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

      while (v18 != v9);
      goto LABEL_82;
    }

    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 8))
    {
      break;
    }

    i = (i + 16);
  }

  v21 = *(i + 1);
  while (1)
  {
    if (i == mlir::DictionaryAttr::end(&v58))
    {
      *&v55 = "'anec.padding' op requires attribute 'padding_sizes'";
      v57 = 259;
      mlir::emitError(a2, &v55, &v62);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
      if (v62)
      {
        mlir::InFlightDiagnostic::report(&v62);
      }

      if (v70 != 1)
      {
        return v5;
      }

      if (v69 != &v70)
      {
        free(v69);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v68;
        v24 = __p;
        if (v68 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v68 = v22;
        operator delete(v24);
      }

      v9 = v65;
      if (!v65)
      {
        goto LABEL_84;
      }

      v25 = v66;
      v11 = v65;
      if (v66 == v65)
      {
        goto LABEL_83;
      }

      do
      {
        v27 = *--v25;
        v26 = v27;
        *v25 = 0;
        if (v27)
        {
          MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
        }
      }

      while (v25 != v9);
      goto LABEL_82;
    }

    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 16))
    {
      break;
    }

    i = (i + 16);
  }

  v28 = *(i + 1);
  if (!v21)
  {
LABEL_88:
    if (!v28)
    {
      goto LABEL_123;
    }

    if (!mlir::DenseIntElementsAttr::classof(v28))
    {
      goto LABEL_103;
    }

    v43 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
    *&v55 = v28;
    *(&v55 + 1) = v43;
    Type = mlir::ElementsAttr::getType(&v55);
    v45 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    *&v62 = v45;
    *(&v62 + 1) = Type;
    Shape = mlir::ShapedType::getShape(&v62);
    v71 = xmmword_1A75EA150;
    if (v47 == 2 && (*Shape == v71 ? (v48 = Shape[1] == *(&v71 + 1)) : (v48 = 0), v48 && (v53[0] = v28, Value = mlir::ArrayAttr::getValue(v53), v60 = v49, v54[0] = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(v54, 64))))
    {
LABEL_123:
      if (!v14)
      {
        return 1;
      }

      if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && (*&v55 = v14, *&v62 = mlir::AffineMapAttr::getValue(&v55), mlir::Type::isF16(&v62)))
      {
        return 1;
      }

      else
      {
        *&v55 = "'anec.padding' op attribute 'background_value' failed to satisfy constraint: 16-bit float attribute";
        v57 = 259;
        mlir::emitError(a2, &v55, &v62);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v62);
      }
    }

    else
    {
LABEL_103:
      *&v55 = "'anec.padding' op attribute 'padding_sizes' failed to satisfy constraint: ui64 elements attribute of shape {5, 2}";
      v57 = 259;
      mlir::emitError(a2, &v55, &v62);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
      if (v62)
      {
        mlir::InFlightDiagnostic::report(&v62);
      }

      if (v70 == 1)
      {
        mlir::Diagnostic::~Diagnostic((&v62 + 8));
      }
    }

    return v5;
  }

  v29 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
  v53[0] = v21;
  v53[1] = v29;
  v30 = mlir::ElementsAttr::getType(v53);
  v31 = v30;
  if (v30)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
  }

  v54[0] = v31;
  v54[1] = v30;
  v32 = mlir::ShapedType::getShape(v54);
  v61 = 5;
  if (v33 == 1 && *v32 == v61)
  {
    v52 = v21;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v55, v21, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v52);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v71, v21, NumElements);
    v62 = v55;
    v63 = v56;
    v42 = v72;
    if (v56 == v72)
    {
      goto LABEL_88;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v62, &Value);
      v50 = v60;
      LODWORD(v60) = 0;
      if (v50 > 0x40)
      {
        v51 = *Value;
        if (!Value)
        {
          goto LABEL_111;
        }

        MEMORY[0x1AC55A040](Value, 0x1000C8000313F17);
        if (v60 >= 0x41 && Value)
        {
          MEMORY[0x1AC55A040](Value, 0x1000C8000313F17);
LABEL_111:
          if (v51 >= 9)
          {
            break;
          }

          goto LABEL_112;
        }

        if (v51 > 8)
        {
          break;
        }
      }

      else if (v50 && (Value << -v50 >> -v50) >= 9)
      {
        break;
      }

LABEL_112:
      *&v63 = v63 + 1;
      if (v63 == v42)
      {
        goto LABEL_88;
      }
    }
  }

  *&v55 = "'anec.padding' op attribute 'padding_modes' failed to satisfy constraint: PaddingMode elements attribute of shape {5}";
  v57 = 259;
  mlir::emitError(a2, &v55, &v62);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
  if (v62)
  {
    mlir::InFlightDiagnostic::report(&v62);
  }

  if (v70 == 1)
  {
    if (v69 != &v70)
    {
      free(v69);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v68;
      v36 = __p;
      if (v68 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v68 = v34;
      operator delete(v36);
    }

    v9 = v65;
    if (v65)
    {
      v37 = v66;
      v11 = v65;
      if (v66 != v65)
      {
        do
        {
          v39 = *--v37;
          v38 = v39;
          *v37 = 0;
          if (v39)
          {
            MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
          }
        }

        while (v37 != v9);
        goto LABEL_82;
      }

LABEL_83:
      v66 = v9;
      operator delete(v11);
    }

LABEL_84:
    if (*(&v63 + 1) != &v64)
    {
      free(*(&v63 + 1));
    }
  }

  return v5;
}

uint64_t mlir::anec::Padding::getPaddingModes(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 8));
}

uint64_t mlir::anec::Padding::getPaddingSizes(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
}

uint64_t *mlir::anec::Padding::getBackgroundValue@<X0>(mlir::Operation **this@<X0>, uint64_t *a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 32), **(*(*this + 6) + 96));
  return mlir::FloatAttr::getValue(a2, &AttrDictionary);
}

BOOL mlir::anec::Padding::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Padding::getZinIrUnitInfo();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

uint64_t mlir::anec::MatMul::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v61 = *MEMORY[0x1E69E9840];
  v54 = a6;
  LOBYTE(v55) = 0;
  v56 = 0;
  v57 = a7;
  v58 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v54);
    if (v56 == 1)
    {
      v56 = 0;
    }

    mlir::OperationName::OperationName(&v55, "anec.matmul", 11, Context);
    v56 = 1;
    a1 = v15;
  }

  v59 = a4;
  v60 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::MatMulAdaptor::verify(&v54, v18))
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v49[0] = v20;
  v49[1] = v19;
  v21 = mlir::TypeRange::dereference_iterator(a9, 1);
  v22 = v21;
  if (v21)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  v48[0] = v22;
  v48[1] = v21;
  Shape = mlir::ShapedType::getShape(v49);
  v24 = mlir::ShapedType::getShape(v48);
  mlir::ShapedType::getShape(v49);
  v26 = v25;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v25);
  v28 = mlir::anec::getIndexFromDim(2, v26);
  v30 = v29;
  v31 = 1;
  v32 = mlir::anec::getIndexFromDim(1, v26);
  v33 = mlir::anec::getIndexFromDim(3, v26);
  v34 = mlir::anec::getIndexFromDim(4, v26);
  v50 = v53;
  v35 = *(Shape + 8 * IndexFromDim);
  v52 = 5;
  if (v35 == 1)
  {
    v36 = v24;
  }

  else
  {
    v36 = Shape;
  }

  v53[0] = *(v36 + 8 * IndexFromDim);
  if (v30)
  {
    v53[1] = *(Shape + 8 * v28);
    v31 = 2;
  }

  v37 = *(Shape + 8 * v33);
  v53[v31] = *(Shape + 8 * v32);
  if (v37 == 1)
  {
    v38 = v24;
  }

  else
  {
    v38 = Shape;
  }

  v53[v31 + 1] = *(v38 + 8 * v33);
  v39 = (v31 + 2);
  v51 = v39;
  v40 = *(v24 + 8 * v34);
  if (v39 >= v52)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v39 + 1, 8);
    LODWORD(v39) = v51;
  }

  *(v50 + v39) = v40;
  v41 = ++v51;
  v42 = v50;
  isSplat = mlir::ElementsAttr::isSplat(v49);
  v44 = mlir::MemRefType::get(v42, v41, isSplat, 0, 0, 0);
  v45 = *(a11 + 8);
  if (v45 >= *(a11 + 12))
  {
    v47 = v44;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v45 + 1, 8);
    v44 = v47;
    LODWORD(v45) = *(a11 + 8);
  }

  *(*a11 + 8 * v45) = v44;
  ++*(a11 + 8);
  if (v50 != v53)
  {
    free(v50);
  }

  return 1;
}

BOOL mlir::anec::MatMulAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = *a1;
  Value = mlir::AffineMapAttr::getValue(&v18);
  if (Value == mlir::DictionaryAttr::end(&v18))
  {
    return 1;
  }

  v5 = 0;
  do
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == **(a1[1] + 96))
    {
      v5 = *(Value + 1);
    }

    Value = (Value + 16);
  }

  while (Value != mlir::DictionaryAttr::end(&v18));
  if (!v5)
  {
    return 1;
  }

  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v16[0] = v5;
    v19[0] = mlir::AffineMapAttr::getValue(v16);
    if (mlir::Type::isF16(v19))
    {
      return 1;
    }
  }

  v16[0] = "'anec.matmul' op attribute 'bias' failed to satisfy constraint: 16-bit float attribute";
  v17 = 259;
  mlir::emitError(a2, v16, v19);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
      {
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
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
    }

    if (v20 != &v21)
    {
      free(v20);
    }
  }

  return v6;
}

void mlir::anec::MatMul::getBias(uint64_t *__return_ptr a1@<X8>, mlir::Operation **this@<X0>)
{
  v9 = *MEMORY[0x1E69E9840];
  BiasAttr = mlir::anec::MatMul::getBiasAttr(this);
  if (BiasAttr)
  {
    Value = mlir::FloatAttr::getValue(&v7, &BiasAttr);
    v4 = v8.n128_u64[0];
    v5 = llvm::APFloatBase::PPCDoubleDouble(Value);
    if (v5 == v4)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 1), &v8);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat((a1 + 1), &v8);
    }

    *(a1 + 32) = 1;
    if (v5 == v8.n128_u64[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v8);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v8);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 32) = 0;
  }
}

BOOL mlir::anec::MatMul::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::MatMul::getZinIrUnitInfo();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

BOOL mlir::anec::Flatten::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v61 = *MEMORY[0x1E69E9840];
  v54 = a6;
  LOBYTE(v55) = 0;
  v56 = 0;
  v57 = a7;
  v58 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v54);
    if (v56 == 1)
    {
      v56 = 0;
    }

    mlir::OperationName::OperationName(&v55, "anec.flatten", 12, Context);
    v56 = 1;
    a1 = v15;
  }

  v59 = a4;
  v60 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::FlattenAdaptor::verify(&v54, v18))
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v47[0] = v20;
  v47[1] = v19;
  Shape = mlir::ShapedType::getShape(v47);
  v22 = mlir::ShapedType::getShape(v47);
  v24 = (v22 + 8 * v23);
  v51 = v53;
  v52 = 0x500000000;
  v25 = (v24 - Shape) >> 3;
  if (v25 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v53, v25, 8);
    v26 = v52;
    if (v24 == Shape)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v26 = 0;
  if (v24 != Shape)
  {
LABEL_16:
    memcpy(v51 + 8 * v26, Shape, v24 - Shape);
    v26 = v52;
  }

LABEL_17:
  LODWORD(v52) = v26 + ((v24 - Shape) >> 3);
  mlir::ShapedType::getShape(v47);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v28);
  if ((v30 & 1) == 0)
  {
    v45 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::FlattenAdaptor::verify(v45, v46);
  }

  v31 = IndexFromDim;
  mlir::anec::getAllDims(&v48);
  v32 = v48;
  if (!v49)
  {
    goto LABEL_28;
  }

  v33 = 4 * v49;
  do
  {
    v35 = *v32;
    mlir::ShapedType::getShape(v47);
    v37 = mlir::anec::getIndexFromDim(v35, v36);
    if (v35 == 2)
    {
      if (v38)
      {
        goto LABEL_20;
      }
    }

    else if (v35 >= 2)
    {
LABEL_20:
      v34 = v51;
      *(v51 + v31) *= *(v51 + v37);
      v34[v37] = 1;
    }

    ++v32;
    v33 -= 4;
  }

  while (v33);
  v32 = v48;
LABEL_28:
  if (v32 != &v50)
  {
    free(v32);
  }

  v39 = v51;
  v40 = v52;
  isSplat = mlir::ElementsAttr::isSplat(v47);
  v42 = mlir::MemRefType::get(v39, v40, isSplat, 0, 0, 0);
  v43 = *(a11 + 8);
  if (v43 >= *(a11 + 12))
  {
    v44 = v42;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v43 + 1, 8);
    v42 = v44;
    LODWORD(v43) = *(a11 + 8);
  }

  *(*a11 + 8 * v43) = v42;
  ++*(a11 + 8);
  if (v51 != v53)
  {
    free(v51);
  }

  return 1;
}

BOOL mlir::anec::FlattenAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v24); i != mlir::DictionaryAttr::end(&v24); i = (i + 16))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      if (!v14)
      {
        return 1;
      }

      if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v22[0] = *(i + 1);
        v27[0] = mlir::AffineMapAttr::getValue(v22);
        if (mlir::Type::isSignlessInteger(v27, 64))
        {
          v26 = v14;
          if (mlir::IntegerAttr::getInt(&v26) == 1)
          {
            return 1;
          }

          v25 = v14;
          if (mlir::IntegerAttr::getInt(&v25) == 2)
          {
            return 1;
          }
        }
      }

      v22[0] = "'anec.flatten' op attribute 'flatten_mode' failed to satisfy constraint: valid FlattenMode";
      v23 = 259;
      mlir::emitError(a2, v22, v27);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
      if (v27[0])
      {
        mlir::InFlightDiagnostic::report(v27);
      }

      if (v35 == 1)
      {
        if (v34 != &v35)
        {
          free(v34);
        }

        v15 = __p;
        if (__p)
        {
          v16 = v33;
          v17 = __p;
          if (v33 != __p)
          {
            do
            {
              v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v33 = v15;
          operator delete(v17);
        }

        v9 = v30;
        if (v30)
        {
          v18 = v31;
          v11 = v30;
          if (v31 != v30)
          {
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

            while (v18 != v9);
            goto LABEL_43;
          }

          goto LABEL_44;
        }

        goto LABEL_45;
      }

      return v5;
    }
  }

  v22[0] = "'anec.flatten' op requires attribute 'flatten_mode'";
  v23 = 259;
  mlir::emitError(a2, v22, v27);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
  if (v27[0])
  {
    mlir::InFlightDiagnostic::report(v27);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v33;
      v8 = __p;
      if (v33 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v33 = v6;
      operator delete(v8);
    }

    v9 = v30;
    if (v30)
    {
      v10 = v31;
      v11 = v30;
      if (v31 != v30)
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
LABEL_43:
        v11 = v30;
      }

LABEL_44:
      v31 = v9;
      operator delete(v11);
    }

LABEL_45:
    if (v28 != &v29)
    {
      free(v28);
    }
  }

  return v5;
}

BOOL mlir::anec::Flatten::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Flatten::getZinIrUnitInfo();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

uint64_t mlir::anec::Unflatten::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v56 = *MEMORY[0x1E69E9840];
  v49 = a6;
  LOBYTE(v50) = 0;
  v51 = 0;
  v52 = a7;
  v53 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v49);
    if (v51 == 1)
    {
      v51 = 0;
    }

    mlir::OperationName::OperationName(&v50, "anec.unflatten", 14, Context);
    v51 = 1;
    a1 = v15;
  }

  v54 = a4;
  v55 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::UnflattenAdaptor::verify(&v49, v18))
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v44[0] = v20;
  v44[1] = v19;
  v46 = v48;
  v47 = 0x500000000;
  Value = mlir::AffineMapAttr::getValue(&v49);
  v22 = mlir::DictionaryAttr::end(&v49);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v22 - 16), **(v50 + 96));
  mlir::getValues<long long>(v23, &v46);
  v24 = v46;
  if (v47)
  {
    v25 = (v47 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v25)
    {
      v26 = v25 + 1;
      v27 = (v25 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v28 = (v46 + 8 * v27);
      v29 = v46 + 8;
      v30 = 1;
      v31 = v27;
      v32 = 1;
      do
      {
        v30 *= *(v29 - 1);
        v32 *= *v29;
        v29 += 2;
        v31 -= 2;
      }

      while (v31);
      v33 = v32 * v30;
      if (v26 == v27)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v33 = 1;
      v28 = v46;
    }

    do
    {
      v35 = *v28++;
      v33 *= v35;
    }

    while (v28 != (v46 + 8 * v47));
  }

  else
  {
    v33 = 1;
  }

LABEL_21:
  Shape = mlir::ShapedType::getShape(v44);
  v45 = mlir::ShapedType::getNumElements(Shape, v37) / v33;
  llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v46, v24, &v45);
  v38 = v46;
  v39 = v47;
  isSplat = mlir::ElementsAttr::isSplat(v44);
  v41 = mlir::MemRefType::get(v38, v39, isSplat, 0, 0, 0);
  v42 = *(a11 + 8);
  if (v42 >= *(a11 + 12))
  {
    v43 = v41;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v42 + 1, 8);
    v41 = v43;
    LODWORD(v42) = *(a11 + 8);
  }

  *(*a11 + 8 * v42) = v41;
  ++*(a11 + 8);
  if (v46 != v48)
  {
    free(v46);
  }

  return 1;
}

BOOL mlir::anec::UnflattenAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v56[1] = *MEMORY[0x1E69E9840];
  v46 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v46); i != mlir::DictionaryAttr::end(&v46); i = (i + 16))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      while (1)
      {
        if (i == mlir::DictionaryAttr::end(&v46))
        {
          v44[0] = "'anec.unflatten' op requires attribute 'flatten_mode'";
          v45 = 259;
          mlir::emitError(a2, v44, v47);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
          if (v47[0])
          {
            mlir::InFlightDiagnostic::report(v47);
          }

          if (v55 != 1)
          {
            return v5;
          }

          if (v54 != &v55)
          {
            free(v54);
          }

          v15 = __p;
          if (__p)
          {
            v16 = v53;
            v17 = __p;
            if (v53 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v53 = v15;
            operator delete(v17);
          }

          v9 = v50;
          if (!v50)
          {
            goto LABEL_88;
          }

          v18 = v51;
          v11 = v50;
          if (v51 == v50)
          {
            goto LABEL_87;
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

          while (v18 != v9);
          goto LABEL_86;
        }

        if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 8))
        {
          break;
        }

        i = (i + 16);
      }

      v21 = *(i + 1);
      if (!v21 || *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v44[0] = *(i + 1), v47[0] = mlir::AffineMapAttr::getValue(v44), mlir::Type::isSignlessInteger(v47, 64)) && ((v42[0] = v21, mlir::IntegerAttr::getInt(v42) == 1) || (v56[0] = v21, mlir::IntegerAttr::getInt(v56) == 2)))
      {
        if (!v14)
        {
          return 1;
        }

        if (mlir::DenseIntElementsAttr::classof(v14))
        {
          v22 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
          v44[0] = v14;
          v44[1] = v22;
          Type = mlir::ElementsAttr::getType(v44);
          v24 = Type;
          if (Type)
          {
            Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
          }

          v47[0] = v24;
          v47[1] = Type;
          Shape = mlir::ShapedType::getShape(v47);
          v56[0] = 3;
          if (v26 == 1 && *Shape == v56[0])
          {
            v41 = v14;
            v42[0] = mlir::ArrayAttr::getValue(&v41);
            v42[1] = v27;
            isSplat = mlir::ElementsAttr::isSplat(v42);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }

        v44[0] = "'anec.unflatten' op attribute 'destination_size' failed to satisfy constraint: ui64 elements attribute of shape {3}";
        v45 = 259;
        mlir::emitError(a2, v44, v47);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
        if (v47[0])
        {
          mlir::InFlightDiagnostic::report(v47);
        }

        if (v55 != 1)
        {
          return v5;
        }

        if (v54 != &v55)
        {
          free(v54);
        }

        v34 = __p;
        if (__p)
        {
          v35 = v53;
          v36 = __p;
          if (v53 != __p)
          {
            do
            {
              v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
            }

            while (v35 != v34);
            v36 = __p;
          }

          v53 = v34;
          operator delete(v36);
        }

        v9 = v50;
        if (!v50)
        {
          goto LABEL_88;
        }

        v37 = v51;
        v11 = v50;
        if (v51 == v50)
        {
          goto LABEL_87;
        }

        do
        {
          v39 = *--v37;
          v38 = v39;
          *v37 = 0;
          if (v39)
          {
            MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
          }
        }

        while (v37 != v9);
      }

      else
      {
        v44[0] = "'anec.unflatten' op attribute 'flatten_mode' failed to satisfy constraint: valid FlattenMode";
        v45 = 259;
        mlir::emitError(a2, v44, v47);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
        if (v47[0])
        {
          mlir::InFlightDiagnostic::report(v47);
        }

        if (v55 != 1)
        {
          return v5;
        }

        if (v54 != &v55)
        {
          free(v54);
        }

        v28 = __p;
        if (__p)
        {
          v29 = v53;
          v30 = __p;
          if (v53 != __p)
          {
            do
            {
              v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
            }

            while (v29 != v28);
            v30 = __p;
          }

          v53 = v28;
          operator delete(v30);
        }

        v9 = v50;
        if (!v50)
        {
          goto LABEL_88;
        }

        v31 = v51;
        v11 = v50;
        if (v51 == v50)
        {
          goto LABEL_87;
        }

        do
        {
          v33 = *--v31;
          v32 = v33;
          *v31 = 0;
          if (v33)
          {
            MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
          }
        }

        while (v31 != v9);
      }

LABEL_86:
      v11 = v50;
      goto LABEL_87;
    }
  }

  v44[0] = "'anec.unflatten' op requires attribute 'destination_size'";
  v45 = 259;
  mlir::emitError(a2, v44, v47);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v55 == 1)
  {
    if (v54 != &v55)
    {
      free(v54);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v53;
      v8 = __p;
      if (v53 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v53 = v6;
      operator delete(v8);
    }

    v9 = v50;
    if (v50)
    {
      v10 = v51;
      v11 = v50;
      if (v51 != v50)
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
        goto LABEL_86;
      }

LABEL_87:
      v51 = v9;
      operator delete(v11);
    }

LABEL_88:
    if (v48 != &v49)
    {
      free(v48);
    }
  }

  return v5;
}

BOOL mlir::anec::Unflatten::addOpToNetwork(mlir::Operation **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Unflatten::getZinIrUnitInfo();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

BOOL mlir::anec::Reshape::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Reshape::getZinIrUnitInfo();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

unint64_t mlir::anec::Reshape::fold(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(*a1 + 72) + 24) + 8);
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) ^ v4) <= 7)
  {
    return *(*(*a1 + 72) + 24) | 4;
  }

  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v24[0] = v8;
  v24[1] = v9;
  if (!mlir::ElementsAttr::getShapedType(v24))
  {
    return 0;
  }

  Shape = mlir::ShapedType::getShape(v24);
  if (v11)
  {
    v12 = 8 * v11;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

LABEL_17:
  v13 = **(a2 + 40);
  if (!v13)
  {
    v22 = 0;
    v23 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v13 + 8))
  {
    v22 = 0;
    v23 = 0;
    return 0;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v13 + 8);
  v22 = v13;
  v23 = v14;
  Type = mlir::ElementsAttr::getType(&v22);
  v16 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v21[0] = v16;
  v21[1] = Type;
  *&v25 = mlir::ShapedType::getShape(v24);
  *(&v25 + 1) = v17;
  v26 = 1;
  isSplat = mlir::ElementsAttr::isSplat(v21);
  v19 = mlir::ShapedType::cloneWith(v21, &v25, isSplat);
  return mlir::reshapeElementsAttr(v22, v23, v19, v20) & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::anec::Reshape::canonicalize(uint64_t a1, void (***a2)(void, uint64_t, unint64_t, unint64_t))
{
  v13[2] = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  if (*(a1 + 36))
  {
    v4 = a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v11[0] = v5;
  v11[1] = v6;
  v13[0] = *(*(a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v13);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id)
  {
    return 0;
  }

  v13[0] = *(*(a1 + 72) + 24);
  v10 = *(*(mlir::Value::getDefiningOp(v13) + 72) + 24);
  v12 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a2 + 1), *(a1 + 24), v11, &v10) - 16;
  v8 = 1;
  mlir::ValueRange::ValueRange(v13, &v12, 1uLL);
  (**a2)(a2, a1, v13[0], v13[1]);
  return v8;
}

BOOL mlir::anec::Concat::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v63 = *MEMORY[0x1E69E9840];
  v56 = a6;
  LOBYTE(v57) = 0;
  v58 = 0;
  v59 = a7;
  v60 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v56);
    if (v58 == 1)
    {
      v58 = 0;
    }

    mlir::OperationName::OperationName(&v57, "anec.concat", 11, Context);
    v58 = 1;
    a1 = v15;
  }

  v61 = a4;
  v62 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::ConcatAdaptor::verify(&v56, v18))
  {
    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "Failed to verify adaptor");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v49[0] = v20;
  v49[1] = v19;
  mlir::ShapedType::getShape(v49);
  Value = mlir::AffineMapAttr::getValue(&v56);
  v22 = mlir::DictionaryAttr::end(&v56);
  v47[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v22, **(v57 + 96));
  mlir::IntegerAttr::getValue(v47, &v50);
  if (v51 > 0x40)
  {
    v23 = *v50;
    MEMORY[0x1AC55A040]();
    v48 = v23;
    if (v23 < 0)
    {
LABEL_26:
      v50 = "failed: Axis value {0} is out of bounds for input operands";
      v51 = 58;
      v52[0] = &v55;
      v52[1] = 1;
      v53 = 1;
      v54[0] = &unk_1F1A177C0;
      v54[1] = &v48;
      v55 = v54;
      return mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<unsigned long long &>>>>(a2, a3, &v50);
    }
  }

  else
  {
    v23 = v50;
    v48 = v50;
    if ((v50 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }
  }

  if (a10)
  {
    v25 = 0;
    while (1)
    {
      v26 = mlir::TypeRange::dereference_iterator(a9, v25);
      v27 = v26;
      if (v26)
      {
        v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v26 + 8);
      }

      v50 = v27;
      v51 = v26;
      mlir::ShapedType::getShape(&v50);
      if (v23 >= v28)
      {
        goto LABEL_26;
      }

      if (a10 == ++v25)
      {
        v29 = 0;
        for (i = 0; i != a10; ++i)
        {
          v31 = mlir::TypeRange::dereference_iterator(a9, i);
          v32 = v31;
          if (v31)
          {
            v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
          }

          v50 = v32;
          v51 = v31;
          v29 += *(mlir::ShapedType::getShape(&v50) + 8 * v23);
        }

        goto LABEL_28;
      }
    }
  }

  v29 = 0;
LABEL_28:
  v33 = mlir::TypeRange::dereference_iterator(a9, 0);
  v34 = v33;
  if (v33)
  {
    v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
  }

  v47[0] = v34;
  v47[1] = v33;
  Shape = mlir::ShapedType::getShape(v47);
  v36 = mlir::ShapedType::getShape(v47);
  v38 = (v36 + 8 * v37);
  v50 = v52;
  v51 = 0x500000000;
  v39 = (v38 - Shape) >> 3;
  if (v39 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v39, 8);
    v40 = v51;
    v41 = v50;
    if (v38 == Shape)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v40 = 0;
  v41 = v52;
  if (v38 != Shape)
  {
LABEL_34:
    memcpy(v41 + 8 * v40, Shape, v38 - Shape);
    v40 = v51;
    v41 = v50;
  }

LABEL_35:
  v42 = (v40 + ((v38 - Shape) >> 3));
  LODWORD(v51) = v40 + ((v38 - Shape) >> 3);
  *(v41 + v23) = v29;
  isSplat = mlir::ElementsAttr::isSplat(v47);
  v44 = mlir::MemRefType::get(v41, v42, isSplat, 0, 0, 0);
  v45 = *(a11 + 8);
  if (v45 >= *(a11 + 12))
  {
    v46 = v44;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v45 + 1, 8);
    v44 = v46;
    LODWORD(v45) = *(a11 + 8);
  }

  *(*a11 + 8 * v45) = v44;
  ++*(a11 + 8);
  if (v50 != v52)
  {
    free(v50);
  }

  return 1;
}

BOOL mlir::anec::ConcatAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v31); ; i = (i + 16))
  {
    if (i == mlir::DictionaryAttr::end(&v31))
    {
      v29[0] = "'anec.concat' op requires attribute 'axis'";
      v30 = 259;
      mlir::emitError(a2, v29, v32);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
      if (v32[0])
      {
        mlir::InFlightDiagnostic::report(v32);
      }

      if (v40 != 1)
      {
        return v5;
      }

      if (v39 != &v40)
      {
        free(v39);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v38;
        v8 = __p;
        if (v38 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v38 = v6;
        operator delete(v8);
      }

      v9 = v35;
      if (!v35)
      {
        goto LABEL_66;
      }

      v10 = v36;
      v11 = v35;
      if (v36 == v35)
      {
        goto LABEL_65;
      }

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
LABEL_64:
      v11 = v35;
      goto LABEL_65;
    }

    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      break;
    }
  }

  v14 = *(i + 1);
  if (i == mlir::DictionaryAttr::end(&v31))
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 8))
      {
        v15 = *(i + 1);
      }

      i = (i + 16);
    }

    while (i != mlir::DictionaryAttr::end(&v31));
  }

  if (v14)
  {
    if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v29[0] = v14, v32[0] = mlir::AffineMapAttr::getValue(v29), !mlir::Type::isUnsignedInteger(v32, 64)))
    {
      v29[0] = "'anec.concat' op attribute 'axis' failed to satisfy constraint: 64-bit unsigned integer attribute";
      v30 = 259;
      mlir::emitError(a2, v29, v32);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
      if (v32[0])
      {
        mlir::InFlightDiagnostic::report(v32);
      }

      if (v40 != 1)
      {
        return v5;
      }

      if (v39 != &v40)
      {
        free(v39);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v38;
        v24 = __p;
        if (v38 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v38 = v22;
        operator delete(v24);
      }

      v9 = v35;
      if (!v35)
      {
        goto LABEL_66;
      }

      v25 = v36;
      v11 = v35;
      if (v36 == v35)
      {
        goto LABEL_65;
      }

      do
      {
        v27 = *--v25;
        v26 = v27;
        *v25 = 0;
        if (v27)
        {
          MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
        }
      }

      while (v25 != v9);
      goto LABEL_64;
    }
  }

  if (!v15 || *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 1;
  }

  v29[0] = "'anec.concat' op attribute 'interleave' failed to satisfy constraint: unit attribute";
  v30 = 259;
  mlir::emitError(a2, v29, v32);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
  if (v32[0])
  {
    mlir::InFlightDiagnostic::report(v32);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v38;
      v18 = __p;
      if (v38 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v38 = v16;
      operator delete(v18);
    }

    v9 = v35;
    if (v35)
    {
      v19 = v36;
      v11 = v35;
      if (v36 != v35)
      {
        do
        {
          v21 = *--v19;
          v20 = v21;
          *v19 = 0;
          if (v21)
          {
            MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
          }
        }

        while (v19 != v9);
        goto LABEL_64;
      }

LABEL_65:
      v36 = v9;
      operator delete(v11);
    }

LABEL_66:
    if (v33 != &v34)
    {
      free(v33);
    }
  }

  return v5;
}

uint64_t *mlir::anec::Concat::getAxis(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  mlir::IntegerAttr::getValue(&v9, &AttrDictionary);
  if (v8 <= 0x40)
  {
    return AttrDictionary;
  }

  v5 = *AttrDictionary;
  MEMORY[0x1AC55A040]();
  return v5;
}

BOOL mlir::anec::Concat::addOpToNetwork(mlir::Operation **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Concat::getZinIrUnitInfo();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

uint64_t mlir::anec::InstanceNorm::inferPromotedReturnTypes(mlir::Float16Type *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v23[0] = a4;
  v23[1] = a5;
  v12 = (*(mlir::ValueRange::dereference_iterator(v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v20[0] = v12;
  v20[1] = v13;
  *&v21 = mlir::ElementsAttr::isSplat(v20);
  if (mlir::Type::isF16(&v21))
  {
    v15 = v20[0];
  }

  else
  {
    v16 = mlir::Float16Type::get(a1, v14);
    LOBYTE(v21) = 0;
    v22 = 0;
    v15 = mlir::ShapedType::cloneWith(v20, &v21, v16);
  }

  v17 = *(a11 + 8);
  if (v17 >= *(a11 + 12))
  {
    v19 = v15;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v17 + 1, 8);
    v15 = v19;
    v17 = *(a11 + 8);
  }

  *(*a11 + 8 * v17) = v15;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::anec::InstanceNorm::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::InstanceNorm::getZinIrUnitInfo();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

BOOL mlir::anec::LayerNorm::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::LayerNorm::getZinIrUnitInfo();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

uint64_t mlir::anec::BatchNorm::addOpToNetwork(mlir::Operation **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    operator new();
  }

  v12 = "network should not be nullptr";
  v13 = 259;
  mlir::OpState::emitError(this, &v12, v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = v19;
    if (v19)
    {
      v4 = v20;
      v5 = v19;
      if (v20 != v19)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = v19;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
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
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return 0;
}

uint64_t mlir::anec::BatchNorm::addOpToNetwork(mlir::anec::ANECIRNetwork *,mlir::anec::ANECIRWeightSerializer &)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  v21 = 0;
  {
    return 0;
  }

  v5 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8) : 0;
  v18[0] = v5;
  v18[1] = v6;
  mlir::ShapedType::getShape(v18);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v7);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v20;
  *(a3 + 4) = v21;
  *(a3 + 16) = v10;
  *(a3 + 8) = *(mlir::ShapedType::getShape(v18) + 8 * IndexFromDim);
  v11 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v22[0] = v11;
  v22[1] = v12;
  isSplat = mlir::ElementsAttr::isSplat(v22);
  v15 = *(*isSplat + 136);
  if (v15 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
    {
      v16 = 4;
    }

    else if (v15 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      v16 = 6;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_24;
  }

  v23 = isSplat;
  Width = mlir::IntegerType::getWidth(&v23);
  if (Width != 16)
  {
    if (Width == 8)
    {
      if (mlir::IntegerType::getSignedness(&v23) == 2)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (mlir::IntegerType::getSignedness(&v23) != 1)
  {
LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  v16 = 3;
LABEL_24:
  *(a3 + 24) = v16;
  return 1;
}

uint64_t mlir::anec::CropResize::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v67 = *MEMORY[0x1E69E9840];
  v60 = a6;
  LOBYTE(v61) = 0;
  v62 = 0;
  v63 = a7;
  v64 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v60);
    if (v62 == 1)
    {
      v62 = 0;
    }

    mlir::OperationName::OperationName(&v61, "anec.crop_resize", 16, Context);
    v62 = 1;
    a1 = v15;
  }

  v65 = a4;
  v66 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::CropResizeAdaptor::verify(&v60, v18))
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v54[0] = v20;
  v54[1] = v19;
  Shape = mlir::ShapedType::getShape(v54);
  v22 = mlir::ShapedType::getShape(v54);
  v24 = (v22 + 8 * v23);
  v57 = v59;
  v58 = 0x500000000;
  v25 = (v24 - Shape) >> 3;
  if (v25 < 6)
  {
    v26 = 0;
    if (v24 == Shape)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v59, v25, 8);
  v26 = v58;
  if (v24 != Shape)
  {
LABEL_16:
    memcpy(v57 + 8 * v26, Shape, v24 - Shape);
    v26 = v58;
  }

LABEL_17:
  LODWORD(v58) = v26 + ((v24 - Shape) >> 3);
  v55[0] = v56;
  v55[1] = 0x200000000;
  Value = mlir::AffineMapAttr::getValue(&v60);
  v29 = mlir::DictionaryAttr::end(&v60);
  v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 64), (v29 - 48), *(*(v61 + 96) + 40));
  mlir::getValues<long long>(v30, v55);
  mlir::ShapedType::getShape(v54);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v31);
  if ((v33 & 1) == 0 || (v34 = IndexFromDim, mlir::ShapedType::getShape(v54), v36 = mlir::anec::getIndexFromDim(4, v35), (v37 & 1) == 0) || (v38 = v55[0], v39 = v57, *(v57 + v34) = *v55[0], v39[v36] = v38[1], mlir::ShapedType::getShape(v54), v41 = mlir::anec::getIndexFromDim(0, v40), (v42 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v43 = v41;
  v44 = mlir::TypeRange::dereference_iterator(a9, 1);
  v45 = v44;
  if (v44)
  {
    v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
  }

  v53[0] = v45;
  v53[1] = v44;
  v46 = mlir::ShapedType::getShape(v53);
  v47 = v57;
  *(v57 + v43) = *(v46 + 8 * v43);
  v48 = v58;
  isSplat = mlir::ElementsAttr::isSplat(v54);
  v50 = mlir::MemRefType::get(v47, v48, isSplat, 0, 0, 0);
  v51 = *(a11 + 8);
  if (v51 >= *(a11 + 12))
  {
    v52 = v50;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v51 + 1, 8);
    v50 = v52;
    LODWORD(v51) = *(a11 + 8);
  }

  *(*a11 + 8 * v51) = v50;
  ++*(a11 + 8);
  if (v55[0] != v56)
  {
    free(v55[0]);
  }

  if (v57 != v59)
  {
    free(v57);
  }

  return 1;
}

BOOL mlir::anec::CropResizeAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v99 = *MEMORY[0x1E69E9840];
  v85 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v85); i != mlir::DictionaryAttr::end(&v85); i = (i + 16))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v85))
      {
        if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 8))
        {
          v21 = *(i + 1);
          while (1)
          {
            if (i == mlir::DictionaryAttr::end(&v85))
            {
              v82 = "'anec.crop_resize' op requires attribute 'coordinate_mode'";
              v84 = 259;
              mlir::emitError(a2, &v82, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v98 != 1)
              {
                return v5;
              }

              if (v97 != &v98)
              {
                free(v97);
              }

              v22 = __p;
              if (__p)
              {
                v23 = v96;
                v24 = __p;
                if (v96 != __p)
                {
                  do
                  {
                    v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
                  }

                  while (v23 != v22);
                  v24 = __p;
                }

                v96 = v22;
                operator delete(v24);
              }

              v9 = v93;
              if (!v93)
              {
                goto LABEL_85;
              }

              v25 = v94;
              v11 = v93;
              if (v94 == v93)
              {
                goto LABEL_84;
              }

              do
              {
                v27 = *--v25;
                v26 = v27;
                *v25 = 0;
                if (v27)
                {
                  MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
                }
              }

              while (v25 != v9);
              goto LABEL_83;
            }

            if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 16))
            {
              break;
            }

            i = (i + 16);
          }

          v28 = *(i + 1);
          if (i != mlir::DictionaryAttr::end(&v85))
          {
            v29 = 0;
            while (ZinCompressedFootprintInfo::GetCompressedBytes(i) != *(*(a1[1] + 96) + 32))
            {
              if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 24))
              {
                v29 = *(i + 1);
              }

              i = (i + 16);
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                goto LABEL_67;
              }
            }

            v37 = *(i + 1);
            while (1)
            {
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                v82 = "'anec.crop_resize' op requires attribute 'output_dims'";
                v84 = 259;
                mlir::emitError(a2, &v82, &Value);
                v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
                if (Value)
                {
                  mlir::InFlightDiagnostic::report(&Value);
                }

                if (v98 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v90);
                }

                return v5;
              }

              if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 40))
              {
                break;
              }

              i = (i + 16);
            }

            v38 = *(i + 1);
            while (1)
            {
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                v39 = "'anec.crop_resize' op requires attribute 'padding_modes'";
                goto LABEL_170;
              }

              if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 48))
              {
                break;
              }

              i = (i + 16);
            }

            v40 = *(i + 1);
            while (1)
            {
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                v39 = "'anec.crop_resize' op requires attribute 'sampling_method'";
                goto LABEL_170;
              }

              if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 56))
              {
                break;
              }

              i = (i + 16);
            }

            v79 = *(i + 1);
            while (1)
            {
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                v39 = "'anec.crop_resize' op requires attribute 'sampling_mode'";
                goto LABEL_170;
              }

              if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 64))
              {
                break;
              }

              i = (i + 16);
            }

            v41 = *(i + 1);
            if (!v38)
            {
              goto LABEL_173;
            }

            if (!mlir::DenseIntElementsAttr::classof(v38))
            {
              goto LABEL_161;
            }

            v42 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v38 + 8);
            v82 = v38;
            v83 = v42;
            Type = mlir::ElementsAttr::getType(&v82);
            v44 = Type;
            if (Type)
            {
              Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
            }

            Value = v44;
            v90 = Type;
            Shape = mlir::ShapedType::getShape(&Value);
            v88 = 2;
            if (v46 == 1 && *Shape == v88 && (v80 = v38, v86 = mlir::ArrayAttr::getValue(&v80), v87 = v47, isSplat = mlir::ElementsAttr::isSplat(&v86), mlir::Type::isUnsignedInteger(&isSplat, 64)))
            {
LABEL_173:
              if (!v29)
              {
                goto LABEL_126;
              }

              if (!mlir::DenseIntElementsAttr::classof(v29))
              {
                goto LABEL_162;
              }

              v48 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v29 + 8);
              v82 = v29;
              v83 = v48;
              v49 = mlir::ElementsAttr::getType(&v82);
              v50 = v49;
              if (v49)
              {
                v49 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
              }

              Value = v50;
              v90 = v49;
              v51 = mlir::ShapedType::getShape(&Value);
              v88 = 2;
              if (v52 == 1 && *v51 == v88 && (v80 = v29, v86 = mlir::ArrayAttr::getValue(&v80), v87 = v53, isSplat = mlir::ElementsAttr::isSplat(&v86), mlir::Type::isUnsignedInteger(&isSplat, 64)))
              {
LABEL_126:
                if (v21 && (mlir::anec::BoxCoordinateModeAttr::classof(v21) & 1) == 0)
                {
                  v39 = "'anec.crop_resize' op attribute 'box_coordinate_mode' failed to satisfy constraint: valid BoxCoordinateMode";
                }

                else
                {
                  if (!v28)
                  {
                    goto LABEL_174;
                  }

                  v54 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
                  v82 = v28;
                  v83 = v54;
                  v55 = mlir::ElementsAttr::getType(&v82);
                  v56 = v55;
                  if (v55)
                  {
                    v55 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
                  }

                  Value = v56;
                  v90 = v55;
                  v57 = mlir::ShapedType::getShape(&Value);
                  v86 = 5;
                  if (v58 == 1 && *v57 == v86 && (v88 = v28, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_0>(&v88) & 1) != 0))
                  {
LABEL_174:
                    if (!v37)
                    {
                      goto LABEL_175;
                    }

                    v59 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v37 + 8);
                    v82 = v37;
                    v83 = v59;
                    v60 = mlir::ElementsAttr::getType(&v82);
                    v61 = v60;
                    if (v60)
                    {
                      v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
                    }

                    Value = v61;
                    v90 = v60;
                    v62 = mlir::ShapedType::getShape(&Value);
                    v86 = 5;
                    if (v63 == 1 && *v62 == v86 && (v88 = v37, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v88) & 1) != 0))
                    {
LABEL_175:
                      if (!v41)
                      {
                        goto LABEL_176;
                      }

                      v64 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v41 + 8);
                      v82 = v41;
                      v83 = v64;
                      v65 = mlir::ElementsAttr::getType(&v82);
                      v66 = v65;
                      if (v65)
                      {
                        v65 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v65 + 8);
                      }

                      Value = v66;
                      v90 = v65;
                      v67 = mlir::ShapedType::getShape(&Value);
                      v86 = 5;
                      if (v68 == 1 && *v67 == v86 && (v88 = v41, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_2>(&v88) & 1) != 0))
                      {
LABEL_176:
                        if (!v79)
                        {
                          goto LABEL_177;
                        }

                        v69 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v79 + 8);
                        v82 = v79;
                        v83 = v69;
                        v70 = mlir::ElementsAttr::getType(&v82);
                        v71 = v70;
                        if (v70)
                        {
                          v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v70 + 8);
                        }

                        Value = v71;
                        v90 = v70;
                        v72 = mlir::ShapedType::getShape(&Value);
                        v86 = 5;
                        if (v73 == 1 && *v72 == v86 && (v88 = v79, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v88) & 1) != 0))
                        {
LABEL_177:
                          if (!v40)
                          {
                            goto LABEL_178;
                          }

                          v74 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v40 + 8);
                          v82 = v40;
                          v83 = v74;
                          v75 = mlir::ElementsAttr::getType(&v82);
                          v76 = v75;
                          if (v75)
                          {
                            v75 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v75 + 8);
                          }

                          Value = v76;
                          v90 = v75;
                          v77 = mlir::ShapedType::getShape(&Value);
                          v86 = 5;
                          if (v78 == 1 && *v77 == v86 && (v88 = v40, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_4>(&v88) & 1) != 0))
                          {
LABEL_178:
                            if (!v14)
                            {
                              return 1;
                            }

                            if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
                            {
                              v82 = v14;
                              Value = mlir::AffineMapAttr::getValue(&v82);
                              if (mlir::Type::isF16(&Value))
                              {
                                return 1;
                              }
                            }

                            v39 = "'anec.crop_resize' op attribute 'background_value' failed to satisfy constraint: 16-bit float attribute";
                          }

                          else
                          {
                            v39 = "'anec.crop_resize' op attribute 'padding_modes' failed to satisfy constraint: PaddingMode elements attribute of shape {5}";
                          }
                        }

                        else
                        {
                          v39 = "'anec.crop_resize' op attribute 'sampling_method' failed to satisfy constraint: SamplingGridMethod elements attribute of shape {5}";
                        }
                      }

                      else
                      {
                        v39 = "'anec.crop_resize' op attribute 'sampling_mode' failed to satisfy constraint: SamplingGridMode elements attribute of shape {5}";
                      }
                    }

                    else
                    {
                      v39 = "'anec.crop_resize' op attribute 'normalized_range' failed to satisfy constraint: NormalizedCoordinateRange elements attribute of shape {5}";
                    }
                  }

                  else
                  {
                    v39 = "'anec.crop_resize' op attribute 'coordinate_mode' failed to satisfy constraint: CoordinateMode elements attribute of shape {5}";
                  }
                }
              }

              else
              {
LABEL_162:
                v39 = "'anec.crop_resize' op attribute 'crop_dims' failed to satisfy constraint: ui64 elements attribute of shape {2}";
              }
            }

            else
            {
LABEL_161:
              v39 = "'anec.crop_resize' op attribute 'output_dims' failed to satisfy constraint: ui64 elements attribute of shape {2}";
            }

LABEL_170:
            v82 = v39;
            v84 = 259;
            mlir::emitError(a2, &v82, &Value);
            v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
            return v5;
          }

LABEL_67:
          v82 = "'anec.crop_resize' op requires attribute 'normalized_range'";
          v84 = 259;
          mlir::emitError(a2, &v82, &Value);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
          if (Value)
          {
            mlir::InFlightDiagnostic::report(&Value);
          }

          if (v98 != 1)
          {
            return v5;
          }

          if (v97 != &v98)
          {
            free(v97);
          }

          v30 = __p;
          if (__p)
          {
            v31 = v96;
            v32 = __p;
            if (v96 != __p)
            {
              do
              {
                v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
              }

              while (v31 != v30);
              v32 = __p;
            }

            v96 = v30;
            operator delete(v32);
          }

          v9 = v93;
          if (!v93)
          {
            goto LABEL_85;
          }

          v33 = v94;
          v11 = v93;
          if (v94 == v93)
          {
            goto LABEL_84;
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

          while (v33 != v9);
          goto LABEL_83;
        }

        i = (i + 16);
      }

      v82 = "'anec.crop_resize' op requires attribute 'box_coordinate_mode'";
      v84 = 259;
      mlir::emitError(a2, &v82, &Value);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v98 != 1)
      {
        return v5;
      }

      if (v97 != &v98)
      {
        free(v97);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v96;
        v17 = __p;
        if (v96 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v96 = v15;
        operator delete(v17);
      }

      v9 = v93;
      if (!v93)
      {
        goto LABEL_85;
      }

      v18 = v94;
      v11 = v93;
      if (v94 == v93)
      {
        goto LABEL_84;
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

      while (v18 != v9);
LABEL_83:
      v11 = v93;
      goto LABEL_84;
    }
  }

  v82 = "'anec.crop_resize' op requires attribute 'background_value'";
  v84 = 259;
  mlir::emitError(a2, &v82, &Value);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v98 == 1)
  {
    if (v97 != &v98)
    {
      free(v97);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v96;
      v8 = __p;
      if (v96 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v96 = v6;
      operator delete(v8);
    }

    v9 = v93;
    if (v93)
    {
      v10 = v94;
      v11 = v93;
      if (v94 != v93)
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
        goto LABEL_83;
      }

LABEL_84:
      v94 = v9;
      operator delete(v11);
    }

LABEL_85:
    if (v91 != &v92)
    {
      free(v91);
    }
  }

  return v5;
}

void mlir::anec::anonymous namespace::fillZinIrTextureInfo(uint64_t a1, void *a2, void *a3, void *a4, void *a5, __int16 a6, unsigned int a7)
{
  if (a7)
  {
    v12 = 0;
    v13 = a7;
    do
    {
      DimFromIndex = mlir::anec::getDimFromIndex(v12, v13);
      if ((DimFromIndex & 0x100000000) != 0)
      {
        v14 = dword_1A7601014[DimFromIndex];
      }

      else
      {
        v14 = 5;
      }

      v21 = 0;
      v20 = v14;
      v15 = dword_1A7600FE8[*(*a2 + 8 * v12)];
      LODWORD(v21) = *(*a3 + 8 * v12) != 0;
      HIDWORD(v21) = v15;
      std::vector<ZinIrCoordinateInfo>::push_back[abi:nn200100](a1 + 80, &v20);
      v19 = 0;
      v19 = __PAIR64__(dword_1A7600FF4[*(*a4 + 8 * v12)], v14);
      std::vector<ZinIrSamplingMethodInfo>::push_back[abi:nn200100](a1 + 104, &v19);
      v18 = 0;
      v18 = __PAIR64__(*(*a5 + 8 * v12) != 0, v14);
      std::vector<ZinIrSamplingMethodInfo>::push_back[abi:nn200100](a1 + 128, &v18);
      v12 = (v12 + 1);
    }

    while (v13 != v12);
  }

  *(a1 + 152) = a6;
}

BOOL mlir::anec::CropResize::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::CropResize::getZinIrUnitInfo();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

BOOL mlir::anec::GatherND::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v66 = *MEMORY[0x1E69E9840];
  v59 = a6;
  LOBYTE(v60) = 0;
  v61 = 0;
  v62 = a7;
  v63 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v59);
    if (v61 == 1)
    {
      v61 = 0;
    }

    mlir::OperationName::OperationName(&v60, "anec.gather_nd", 14, Context);
    v61 = 1;
    a1 = v15;
  }

  v64 = a4;
  v65 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::GatherNDAdaptor::verify(&v59, v18))
  {
    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "Failed to verify adaptor");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v50[0] = v20;
  v50[1] = v19;
  v21 = mlir::TypeRange::dereference_iterator(a9, 1);
  v22 = v21;
  if (v21)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  v49[0] = v22;
  v49[1] = v21;
  mlir::ShapedType::getShape(v50);
  v24 = v23;
  IndexFromDim = mlir::anec::getIndexFromDim(1, v23);
  if ((v26 & 1) == 0)
  {
    v47 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::GatherNDAdaptor::verify(v47, v48);
  }

  v27 = IndexFromDim;
  v56 = v58;
  v57 = 0x500000000;
  Value = mlir::AffineMapAttr::getValue(&v59);
  v29 = mlir::DictionaryAttr::end(&v59);
  v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v29, **(v60 + 96));
  mlir::getValues<unsigned long>(v30, &v56);
  v31 = *(mlir::ShapedType::getShape(v49) + 8 * v27);
  v32 = v57;
  v53 = v55;
  v54 = 0x500000000;
  if (!v24)
  {
    goto LABEL_18;
  }

  if (v24 < 6)
  {
    v33 = 0;
    v34 = v24;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v55, v24, 8);
    v33 = v54;
    v34 = v24 - v54;
    if (v24 == v54)
    {
      LODWORD(v54) = v24;
LABEL_22:
      v37 = 0;
      v38 = v31 / v32;
      do
      {
        v40 = *(mlir::ShapedType::getShape(v50) + 8 * v37);
        v39 = v38;
        if (v27 != v37)
        {
          v39 = *(mlir::ShapedType::getShape(v49) + 8 * v37);
        }

        if (v57)
        {
          v41 = 8 * v57;
          v42 = v56;
          while (*v42 != v37)
          {
            ++v42;
            v41 -= 8;
            if (!v41)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          v42 = v56;
        }

        if (v42 == (v56 + 8 * v57))
        {
LABEL_23:
          if (v40 > v39)
          {
            v39 = v40;
          }
        }

        v35 = v53;
        *(v53 + v37++) = v39;
      }

      while (v37 != v24);
      LODWORD(v24) = v54;
      goto LABEL_37;
    }
  }

  bzero(v53 + 8 * v33, 8 * v34);
  LODWORD(v54) = v24;
  if (v24 >= 1)
  {
    goto LABEL_22;
  }

LABEL_18:
  v35 = v53;
LABEL_37:
  *&v51 = v35;
  *(&v51 + 1) = v24;
  v52 = 1;
  isSplat = mlir::ElementsAttr::isSplat(v50);
  v44 = mlir::ShapedType::cloneWith(v50, &v51, isSplat);
  v45 = *(a11 + 8);
  if (v45 >= *(a11 + 12))
  {
    v46 = v44;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v45 + 1, 8);
    v44 = v46;
    LODWORD(v45) = *(a11 + 8);
  }

  *(*a11 + 8 * v45) = v44;
  ++*(a11 + 8);
  if (v53 != v55)
  {
    free(v53);
  }

  if (v56 != v58)
  {
    free(v56);
  }

  return 1;
}

BOOL mlir::anec::GatherNDAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v33 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v33); i != mlir::DictionaryAttr::end(&v33); i += 2)
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v31[0] = v14;
        v31[1] = v15;
        Type = mlir::ElementsAttr::getType(v31);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v34[0] = v17;
        v34[1] = Type;
        mlir::ShapedType::getShape(v34);
        if (v18 == 1 && mlir::hasUniqueValues(v14))
        {
          v30 = v14;
          if (mlir::DenseElementsAttr::getNumElements(&v30))
          {
            v27 = v14;
            v28[0] = mlir::ArrayAttr::getValue(&v27);
            v28[1] = v19;
            isSplat = mlir::ElementsAttr::isSplat(v28);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v31[0] = "'anec.gather_nd' op attribute 'axes' failed to satisfy constraint: ui64 unique not empty elements attribute of ranks 1";
      v32 = 259;
      mlir::emitError(a2, v31, v34);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
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

        v9 = v37;
        if (v37)
        {
          v23 = v38;
          v11 = v37;
          if (v38 != v37)
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

            while (v23 != v9);
            goto LABEL_46;
          }

          goto LABEL_47;
        }

        goto LABEL_48;
      }

      return v5;
    }
  }

  v31[0] = "'anec.gather_nd' op requires attribute 'axes'";
  v32 = 259;
  mlir::emitError(a2, v31, v34);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
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

    v6 = __p;
    if (__p)
    {
      v7 = v40;
      v8 = __p;
      if (v40 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v40 = v6;
      operator delete(v8);
    }

    v9 = v37;
    if (v37)
    {
      v10 = v38;
      v11 = v37;
      if (v38 != v37)
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
LABEL_46:
        v11 = v37;
      }

LABEL_47:
      v38 = v9;
      operator delete(v11);
    }

LABEL_48:
    if (v35 != &v36)
    {
      free(v35);
    }
  }

  return v5;
}

void std::vector<ZinIrDimension>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 2;
    v9 = (v7 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    *(4 * v8) = *a2;
    v5 = 4 * v8 + 4;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

BOOL mlir::anec::GatherND::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::GatherND::getZinIrUnitInfo();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

BOOL mlir::anec::ArgMinMax::inferPromotedReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v62 = *MEMORY[0x1E69E9840];
  v55 = a6;
  LOBYTE(v56) = 0;
  v57 = 0;
  v58 = a7;
  v59 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v55);
    if (v57 == 1)
    {
      v57 = 0;
    }

    mlir::OperationName::OperationName(&v56, "anec.arg_min_max", 16, Context);
    v57 = 1;
  }

  v60 = a4;
  v61 = a5;
  v17 = mlir::UnknownLoc::get(this, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::ArgMinMaxAdaptor::verify(&v55, v18))
  {
    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "Failed to verify adaptor");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v46[0] = v20;
  v46[1] = v19;
  v52 = v54;
  v53 = 0x600000000;
  Value = mlir::AffineMapAttr::getValue(&v55);
  v22 = mlir::DictionaryAttr::end(&v55);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v22 - 64), **(v56 + 96));
  mlir::getValues<long long>(v23, &v52);
  if (v53)
  {
    v24 = v52;
    v25 = 8 * v53;
    while (1)
    {
      v26 = *v24;
      mlir::ShapedType::getShape(v46);
      if (v27 <= v26)
      {
        break;
      }

      ++v24;
      v25 -= 8;
      if (!v25)
      {
        goto LABEL_15;
      }
    }

    v43 = v46[0];
    v44 = *(a11 + 8);
    if (v44 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v44 + 1, 8);
      LODWORD(v44) = *(a11 + 8);
    }

    *(*a11 + 8 * v44) = v43;
    ++*(a11 + 8);
    goto LABEL_31;
  }

LABEL_15:
  Shape = mlir::ShapedType::getShape(v46);
  v29 = mlir::ShapedType::getShape(v46);
  v31 = (v29 + 8 * v30);
  v49 = v51;
  v50 = 0x600000000;
  v32 = (v31 - Shape) >> 3;
  if (v32 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v32, 8);
    v33 = v50;
    v34 = v49;
    if (v31 == Shape)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v33 = 0;
  v34 = v51;
  if (v31 != Shape)
  {
LABEL_20:
    memcpy(&v34[8 * v33], Shape, v31 - Shape);
    v33 = v50;
    v34 = v49;
  }

LABEL_21:
  v36 = v33 + ((v31 - Shape) >> 3);
  LODWORD(v50) = v33 + ((v31 - Shape) >> 3);
  if (v53)
  {
    v37 = v52;
    v38 = 8 * v53;
    do
    {
      v39 = *v37++;
      *&v34[8 * v39] = 1;
      v38 -= 8;
    }

    while (v38);
  }

  v40 = mlir::IntegerType::get(this, 0x10u, 2u);
  *&v47 = v34;
  *(&v47 + 1) = v36;
  v48 = 1;
  v41 = mlir::ShapedType::cloneWith(v46, &v47, v40);
  v42 = *(a11 + 8);
  if (v42 >= *(a11 + 12))
  {
    v45 = v41;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v42 + 1, 8);
    v41 = v45;
    LODWORD(v42) = *(a11 + 8);
  }

  *(*a11 + 8 * v42) = v41;
  ++*(a11 + 8);
  if (v49 != v51)
  {
    free(v49);
  }

LABEL_31:
  if (v52 != v54)
  {
    free(v52);
  }

  return 1;
}