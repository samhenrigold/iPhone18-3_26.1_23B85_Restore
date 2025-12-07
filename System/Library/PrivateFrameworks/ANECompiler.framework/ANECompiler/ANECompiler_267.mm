BOOL mlir::anec::ArgMinMaxAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v75 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v75); i != mlir::DictionaryAttr::end(&v75); i = (i + 16))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v75))
      {
        if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 8))
        {
          v21 = *(i + 1);
          while (i != mlir::DictionaryAttr::end(&v75))
          {
            if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 16))
            {
              v28 = *(i + 1);
              while (i != mlir::DictionaryAttr::end(&v75))
              {
                if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 24))
                {
                  v36 = *(i + 1);
                  while (1)
                  {
                    if (i == mlir::DictionaryAttr::end(&v75))
                    {
                      v72 = "'anec.arg_min_max' op requires attribute 'stride_values'";
                      v74 = 259;
                      mlir::emitError(a2, &v72, &v77);
                      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
                      if (v77)
                      {
                        mlir::InFlightDiagnostic::report(&v77);
                      }

                      if (v86 == 1)
                      {
                        mlir::Diagnostic::~Diagnostic(&v78);
                      }

                      return v5;
                    }

                    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 32))
                    {
                      break;
                    }

                    i = (i + 16);
                  }

                  v37 = *(i + 1);
                  if (!v14)
                  {
                    goto LABEL_106;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v14))
                  {
                    goto LABEL_129;
                  }

                  v38 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
                  v72 = v14;
                  v73 = v38;
                  Type = mlir::ElementsAttr::getType(&v72);
                  v40 = Type;
                  if (Type)
                  {
                    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
                  }

                  v77 = v40;
                  v78 = Type;
                  mlir::ShapedType::getShape(&v77);
                  if (v41)
                  {
                    v42 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
                    v76[0] = v14;
                    v76[1] = v42;
                    v43 = mlir::ElementsAttr::getType(v76);
                    v44 = v43;
                    if (v43)
                    {
                      v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
                    }

                    Value = v44;
                    v71 = v43;
                    mlir::ShapedType::getShape(&Value);
                    if (v45 != 1)
                    {
                      goto LABEL_129;
                    }
                  }

                  if (mlir::hasUniqueValues(v14) && (v69 = v14, mlir::DenseElementsAttr::getNumElements(&v69)) && (v66 = v14, v67[0] = mlir::ArrayAttr::getValue(&v66), v67[1] = v46, isSplat = mlir::ElementsAttr::isSplat(v67), mlir::Type::isUnsignedInteger(&isSplat, 64)))
                  {
LABEL_106:
                    if (v28 && !llvm::CastInfo<mlir::anec::ArgMinMaxModeAttr,mlir::Attribute const,void>::isPossible(v28))
                    {
                      v65 = "'anec.arg_min_max' op attribute 'mode' failed to satisfy constraint: valid ArgMinMaxMode";
                    }

                    else
                    {
                      if (!v21)
                      {
                        goto LABEL_137;
                      }

                      if (!mlir::DenseIntElementsAttr::classof(v21))
                      {
                        goto LABEL_130;
                      }

                      v47 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                      v72 = v21;
                      v73 = v47;
                      v48 = mlir::ElementsAttr::getType(&v72);
                      v49 = v48;
                      if (v48)
                      {
                        v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
                      }

                      v77 = v49;
                      v78 = v48;
                      Shape = mlir::ShapedType::getShape(&v77);
                      v76[0] = 2;
                      if (v51 == 1 && *Shape == v76[0] && (v69 = v21, Value = mlir::ArrayAttr::getValue(&v69), v71 = v52, v67[0] = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(v67, 64)))
                      {
LABEL_137:
                        if (!v37)
                        {
                          goto LABEL_138;
                        }

                        if (!mlir::DenseIntElementsAttr::classof(v37))
                        {
                          goto LABEL_132;
                        }

                        v53 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v37 + 8);
                        v72 = v37;
                        v73 = v53;
                        v54 = mlir::ElementsAttr::getType(&v72);
                        v55 = v54;
                        if (v54)
                        {
                          v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
                        }

                        v77 = v55;
                        v78 = v54;
                        v56 = mlir::ShapedType::getShape(&v77);
                        v76[0] = 2;
                        if (v57 == 1 && *v56 == v76[0] && (v69 = v37, Value = mlir::ArrayAttr::getValue(&v69), v71 = v58, v67[0] = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(v67, 64)))
                        {
LABEL_138:
                          if (!v36)
                          {
                            return 1;
                          }

                          if (mlir::DenseIntElementsAttr::classof(v36))
                          {
                            v59 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v36 + 8);
                            v72 = v36;
                            v73 = v59;
                            v60 = mlir::ElementsAttr::getType(&v72);
                            v61 = v60;
                            if (v60)
                            {
                              v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
                            }

                            v77 = v61;
                            v78 = v60;
                            v62 = mlir::ShapedType::getShape(&v77);
                            v76[0] = 4;
                            if (v63 == 1 && *v62 == v76[0])
                            {
                              v69 = v36;
                              Value = mlir::ArrayAttr::getValue(&v69);
                              v71 = v64;
                              v67[0] = mlir::ElementsAttr::isSplat(&Value);
                              if (mlir::Type::isUnsignedInteger(v67, 64))
                              {
                                return 1;
                              }
                            }
                          }

                          v65 = "'anec.arg_min_max' op attribute 'pad_values' failed to satisfy constraint: ui64 elements attribute of shape {4}";
                        }

                        else
                        {
LABEL_132:
                          v65 = "'anec.arg_min_max' op attribute 'stride_values' failed to satisfy constraint: ui64 elements attribute of shape {2}";
                        }
                      }

                      else
                      {
LABEL_130:
                        v65 = "'anec.arg_min_max' op attribute 'kernel_size' failed to satisfy constraint: ui64 elements attribute of shape {2}";
                      }
                    }
                  }

                  else
                  {
LABEL_129:
                    v65 = "'anec.arg_min_max' op attribute 'axes' failed to satisfy constraint: ui64 unique not empty elements attribute of ranks 0/1";
                  }

                  v72 = v65;
                  v74 = 259;
                  mlir::emitError(a2, &v72, &v77);
                  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v77);
                  return v5;
                }

                i = (i + 16);
              }

              v72 = "'anec.arg_min_max' op requires attribute 'pad_values'";
              v74 = 259;
              mlir::emitError(a2, &v72, &v77);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
              if (v77)
              {
                mlir::InFlightDiagnostic::report(&v77);
              }

              if (v86 != 1)
              {
                return v5;
              }

              if (v85 != &v86)
              {
                free(v85);
              }

              v29 = __p;
              if (__p)
              {
                v30 = v84;
                v31 = __p;
                if (v84 != __p)
                {
                  do
                  {
                    v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
                  }

                  while (v30 != v29);
                  v31 = __p;
                }

                v84 = v29;
                operator delete(v31);
              }

              v9 = v81;
              if (!v81)
              {
                goto LABEL_83;
              }

              v32 = v82;
              v11 = v81;
              if (v82 == v81)
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

          v72 = "'anec.arg_min_max' op requires attribute 'mode'";
          v74 = 259;
          mlir::emitError(a2, &v72, &v77);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
          if (v77)
          {
            mlir::InFlightDiagnostic::report(&v77);
          }

          if (v86 != 1)
          {
            return v5;
          }

          if (v85 != &v86)
          {
            free(v85);
          }

          v22 = __p;
          if (__p)
          {
            v23 = v84;
            v24 = __p;
            if (v84 != __p)
            {
              do
              {
                v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v84 = v22;
            operator delete(v24);
          }

          v9 = v81;
          if (!v81)
          {
            goto LABEL_83;
          }

          v25 = v82;
          v11 = v81;
          if (v82 == v81)
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

      v72 = "'anec.arg_min_max' op requires attribute 'kernel_size'";
      v74 = 259;
      mlir::emitError(a2, &v72, &v77);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
      if (v77)
      {
        mlir::InFlightDiagnostic::report(&v77);
      }

      if (v86 != 1)
      {
        return v5;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v84;
        v17 = __p;
        if (v84 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v84 = v15;
        operator delete(v17);
      }

      v9 = v81;
      if (!v81)
      {
        goto LABEL_83;
      }

      v18 = v82;
      v11 = v81;
      if (v82 == v81)
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
      v11 = v81;
      goto LABEL_82;
    }
  }

  v72 = "'anec.arg_min_max' op requires attribute 'axes'";
  v74 = 259;
  mlir::emitError(a2, &v72, &v77);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
  if (v77)
  {
    mlir::InFlightDiagnostic::report(&v77);
  }

  if (v86 == 1)
  {
    if (v85 != &v86)
    {
      free(v85);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v84;
      v8 = __p;
      if (v84 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v84 = v6;
      operator delete(v8);
    }

    v9 = v81;
    if (v81)
    {
      v10 = v82;
      v11 = v81;
      if (v82 != v81)
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
      v82 = v9;
      operator delete(v11);
    }

LABEL_83:
    if (v79 != &v80)
    {
      free(v79);
    }
  }

  return v5;
}

BOOL mlir::anec::ArgMinMax::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::ArgMinMax::getZinIrUnitInfo();
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

BOOL mlir::anec::GlobalArgMinMax::inferPromotedReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v57 = *MEMORY[0x1E69E9840];
  v50 = a6;
  LOBYTE(v51) = 0;
  v52 = 0;
  v53 = a7;
  v54 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v50);
    if (v52 == 1)
    {
      v52 = 0;
    }

    mlir::OperationName::OperationName(&v51, "anec.global_arg_min_max", 23, Context);
    v52 = 1;
  }

  v55 = a4;
  v56 = a5;
  v17 = mlir::UnknownLoc::get(this, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::GlobalArgMinMaxAdaptor::verify(&v50, v18))
  {
    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "Failed to verify adaptor");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v43[0] = v20;
  v43[1] = v19;
  Value = mlir::AffineMapAttr::getValue(&v50);
  v22 = mlir::DictionaryAttr::end(&v50);
  *&v45 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v22 - 16), **(v51 + 96));
  mlir::IntegerAttr::getValue(&v45, &v47);
  if (v48 > 0x40)
  {
    v23 = *v47;
    MEMORY[0x1AC55A040]();
  }

  else
  {
    v23 = v47;
  }

  mlir::ShapedType::getShape(v43);
  if (v25 <= v23)
  {
    v32 = v43[0];
    v33 = *(a11 + 8);
    if (v33 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v33 + 1, 8);
      LODWORD(v33) = *(a11 + 8);
    }

    *(*a11 + 8 * v33) = v32;
    ++*(a11 + 8);
    return 1;
  }

  Shape = mlir::ShapedType::getShape(v43);
  v27 = mlir::ShapedType::getShape(v43);
  v29 = (v27 + 8 * v28);
  v47 = v49;
  v48 = 0x600000000;
  v30 = (v29 - Shape) >> 3;
  if (v30 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v49, v30, 8);
    v31 = v48;
    if (v29 == Shape)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v31 = 0;
  if (v29 != Shape)
  {
LABEL_23:
    memcpy(v47 + 8 * v31, Shape, v29 - Shape);
    v31 = v48;
  }

LABEL_24:
  LODWORD(v48) = v31 + ((v29 - Shape) >> 3);
  v34 = mlir::AffineMapAttr::getValue(&v50);
  v35 = mlir::DictionaryAttr::end(&v50);
  v44 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v34, (v35 - 16), **(v51 + 96));
  mlir::IntegerAttr::getValue(&v44, &v45);
  if (DWORD2(v45) > 0x40)
  {
    v36 = *v45;
    MEMORY[0x1AC55A040]();
  }

  else
  {
    v36 = v45;
  }

  v37 = v47;
  *(v47 + v36) = 1;
  v38 = v48;
  v39 = mlir::IntegerType::get(this, 0x10u, 2u);
  *&v45 = v37;
  *(&v45 + 1) = v38;
  v46 = 1;
  v40 = mlir::ShapedType::cloneWith(v43, &v45, v39);
  v41 = *(a11 + 8);
  if (v41 >= *(a11 + 12))
  {
    v42 = v40;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v41 + 1, 8);
    v40 = v42;
    LODWORD(v41) = *(a11 + 8);
  }

  *(*a11 + 8 * v41) = v40;
  ++*(a11 + 8);
  if (v47 != v49)
  {
    free(v47);
  }

  return 1;
}

BOOL mlir::anec::GlobalArgMinMaxAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v31 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v31); i != mlir::DictionaryAttr::end(&v31); i = (i + 16))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      while (1)
      {
        if (i == mlir::DictionaryAttr::end(&v31))
        {
          v29[0] = "'anec.global_arg_min_max' op requires attribute 'mode'";
          v30 = 259;
          mlir::emitError(a2, v29, &Value);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
          if (Value)
          {
            mlir::InFlightDiagnostic::report(&Value);
          }

          if (v43 != 1)
          {
            return v5;
          }

          if (v42 != &v43)
          {
            free(v42);
          }

          v15 = __p;
          if (__p)
          {
            v16 = v41;
            v17 = __p;
            if (v41 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v41 = v15;
            operator delete(v17);
          }

          v9 = v38;
          if (!v38)
          {
            goto LABEL_68;
          }

          v18 = v39;
          v11 = v38;
          if (v39 == v38)
          {
            goto LABEL_67;
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
          goto LABEL_66;
        }

        if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 8))
        {
          break;
        }

        i = (i + 16);
      }

      v21 = *(i + 1);
      if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v29[0] = v14, Value = mlir::AffineMapAttr::getValue(v29), mlir::Type::isUnsignedInteger(&Value, 32)))
      {
        if (!v21)
        {
          return 1;
        }

        if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v29[0] = v21;
          Value = mlir::AffineMapAttr::getValue(v29);
          if (mlir::Type::isSignlessInteger(&Value, 64))
          {
            v33 = v21;
            if (!mlir::IntegerAttr::getInt(&v33))
            {
              return 1;
            }

            v32 = v21;
            if (mlir::IntegerAttr::getInt(&v32) == 1)
            {
              return 1;
            }
          }
        }

        v29[0] = "'anec.global_arg_min_max' op attribute 'mode' failed to satisfy constraint: valid ArgMinMaxMode";
        v30 = 259;
        mlir::emitError(a2, v29, &Value);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
        if (Value)
        {
          mlir::InFlightDiagnostic::report(&Value);
        }

        if (v43 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v35);
        }

        return v5;
      }

      v29[0] = "'anec.global_arg_min_max' op attribute 'axis' failed to satisfy constraint: 32-bit unsigned integer attribute";
      v30 = 259;
      mlir::emitError(a2, v29, &Value);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v43 != 1)
      {
        return v5;
      }

      if (v42 != &v43)
      {
        free(v42);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v41;
        v24 = __p;
        if (v41 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v41 = v22;
        operator delete(v24);
      }

      v9 = v38;
      if (!v38)
      {
        goto LABEL_68;
      }

      v25 = v39;
      v11 = v38;
      if (v39 == v38)
      {
        goto LABEL_67;
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
LABEL_66:
      v11 = v38;
      goto LABEL_67;
    }
  }

  v29[0] = "'anec.global_arg_min_max' op requires attribute 'axis'";
  v30 = 259;
  mlir::emitError(a2, v29, &Value);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
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
        goto LABEL_66;
      }

LABEL_67:
      v39 = v9;
      operator delete(v11);
    }

LABEL_68:
    if (v36 != &v37)
    {
      free(v36);
    }
  }

  return v5;
}

uint64_t *mlir::anec::GlobalArgMinMax::getAxis(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  mlir::IntegerAttr::getValue(&v9, &AttrDictionary);
  if (v8 <= 0x40)
  {
    return AttrDictionary;
  }

  v5 = *AttrDictionary;
  MEMORY[0x1AC55A040]();
  return v5;
}

BOOL mlir::anec::GlobalArgMinMax::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::GlobalArgMinMax::getZinIrUnitInfo();
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

BOOL mlir::anec::Tile::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v57 = *MEMORY[0x1E69E9840];
  v50 = a6;
  LOBYTE(v51) = 0;
  v52 = 0;
  v53 = a7;
  v54 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v50);
    if (v52 == 1)
    {
      v52 = 0;
    }

    mlir::OperationName::OperationName(&v51, "anec.tile", 9, Context);
    v52 = 1;
    a1 = v15;
  }

  v55 = a4;
  v56 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::TileAdaptor::verify(&v50, v18))
  {
    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "Failed to verify adaptor");
  }

  v47 = v55;
  v48 = 0;
  v19 = (*(mlir::ValueRange::dereference_iterator(&v47, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  v41[0] = v19;
  v41[1] = v20;
  v47 = v49;
  v48 = 0x500000000;
  Value = mlir::AffineMapAttr::getValue(&v50);
  v23 = mlir::DictionaryAttr::end(&v50);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v23, **(v51 + 96));
  mlir::getValues<unsigned long>(v24, &v47);
  Shape = mlir::ShapedType::getShape(v41);
  v26 = mlir::ShapedType::getShape(v41);
  v28 = (v26 + 8 * v27);
  v44 = v46;
  v45 = 0x500000000;
  v29 = (v28 - Shape) >> 3;
  if (v29 < 6)
  {
    v30 = 0;
    v31 = v46;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v29, 8);
    v30 = v45;
    v31 = v44;
  }

  if (v28 != Shape)
  {
    memcpy(&v31[8 * v30], Shape, v28 - Shape);
    v30 = v45;
    v31 = v44;
  }

  v32 = v30 + ((v28 - Shape) >> 3);
  LODWORD(v45) = v32;
  v33 = v48;
  if (v48 == v32 && v48)
  {
    v34 = v47;
    v35 = v31;
    do
    {
      v36 = *v34++;
      *v35++ *= v36;
      --v33;
    }

    while (v33);
  }

  *&v42 = v31;
  *(&v42 + 1) = v32;
  v43 = 1;
  isSplat = mlir::ElementsAttr::isSplat(v41);
  v38 = mlir::ShapedType::cloneWith(v41, &v42, isSplat);
  v39 = *(a11 + 8);
  if (v39 >= *(a11 + 12))
  {
    v40 = v38;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v39 + 1, 8);
    v38 = v40;
    LODWORD(v39) = *(a11 + 8);
  }

  *(*a11 + 8 * v39) = v38;
  ++*(a11 + 8);
  if (v44 != v46)
  {
    free(v44);
  }

  if (v47 != v49)
  {
    free(v47);
  }

  return 1;
}

BOOL mlir::anec::TileAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v32 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v32); i != mlir::DictionaryAttr::end(&v32); i += 2)
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
        v30[0] = v14;
        v30[1] = v15;
        Type = mlir::ElementsAttr::getType(v30);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v33[0] = v17;
        v33[1] = Type;
        mlir::ShapedType::getShape(v33);
        if (v18 == 1)
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

      v30[0] = "'anec.tile' op attribute 'multipliers' failed to satisfy constraint: ui64 elements attribute of rank 1";
      v31 = 259;
      mlir::emitError(a2, v30, v33);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
      if (v33[0])
      {
        mlir::InFlightDiagnostic::report(v33);
      }

      if (v41 == 1)
      {
        if (v40 != &v41)
        {
          free(v40);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v39;
          v22 = __p;
          if (v39 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v39 = v20;
          operator delete(v22);
        }

        v9 = v36;
        if (v36)
        {
          v23 = v37;
          v11 = v36;
          if (v37 != v36)
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
            goto LABEL_44;
          }

          goto LABEL_45;
        }

        goto LABEL_46;
      }

      return v5;
    }
  }

  v30[0] = "'anec.tile' op requires attribute 'multipliers'";
  v31 = 259;
  mlir::emitError(a2, v30, v33);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v39;
      v8 = __p;
      if (v39 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v39 = v6;
      operator delete(v8);
    }

    v9 = v36;
    if (v36)
    {
      v10 = v37;
      v11 = v36;
      if (v37 != v36)
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
LABEL_44:
        v11 = v36;
      }

LABEL_45:
      v37 = v9;
      operator delete(v11);
    }

LABEL_46:
    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v5;
}

BOOL mlir::anec::Tile::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Tile::getZinIrUnitInfo();
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

uint64_t mlir::anec::DeQuant::getZeroPoint(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  mlir::IntegerAttr::getValue(&v9, &AttrDictionary);
  if (v8 > 0x40)
  {
    v5 = *AttrDictionary;
    MEMORY[0x1AC55A040]();
  }

  else if (v8)
  {
    return ((AttrDictionary << -v8) >> -v8);
  }

  else
  {
    return 0;
  }

  return v5;
}

BOOL mlir::anec::DeQuant::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::DeQuant::getZinIrUnitInfo();
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

BOOL mlir::anec::Quant::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Quant::getZinIrUnitInfo();
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

BOOL mlir::anec::Resample::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = a6;
  LOBYTE(v26) = 0;
  v27 = 0;
  v28 = a7;
  v29 = a8;
  if (a6)
  {
    v13 = a1;
    Context = mlir::Attribute::getContext(&v25);
    if (v27 == 1)
    {
      v27 = 0;
    }

    mlir::OperationName::OperationName(&v26, "anec.resample", 13, Context);
    v27 = 1;
    a1 = v13;
  }

  v30 = a4;
  v31 = a5;
  v15 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v16 = a2;
  }

  else
  {
    v16 = v15;
  }

  if (!mlir::anec::ResampleAdaptor::verify(&v25, v16))
  {
    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "Failed to verify adaptor");
  }

  v17 = mlir::TypeRange::dereference_iterator(a9, 0);
  v18 = v17;
  if (v17)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  v22[0] = v18;
  v22[1] = v17;
  v19 = mlir::TypeRange::dereference_iterator(a9, 1);
  if (v19)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  mlir::ShapedType::getShape(v22);
  if ((v20 - 6) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v23[0] = &v24;
    v23[1] = 0xC00000000;
    mlir::anec::getANEDefaultLayout(v20, v23);
  }

  return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "Unsupported promoted rank.");
}

BOOL mlir::anec::ResampleAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v75 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v75); i != mlir::DictionaryAttr::end(&v75); i = (i + 16))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v75))
      {
        if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 8))
        {
          v21 = *(i + 1);
          while (i != mlir::DictionaryAttr::end(&v75))
          {
            if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 16))
            {
              v28 = *(i + 1);
              while (i != mlir::DictionaryAttr::end(&v75))
              {
                if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 24))
                {
                  v36 = *(i + 1);
                  while (1)
                  {
                    if (i == mlir::DictionaryAttr::end(&v75))
                    {
                      v72 = "'anec.resample' op requires attribute 'padding_modes'";
                      v74 = 259;
                      mlir::emitError(a2, &v72, &Value);
                      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
                      if (Value)
                      {
                        mlir::InFlightDiagnostic::report(&Value);
                      }

                      if (v86 == 1)
                      {
                        mlir::Diagnostic::~Diagnostic(&v78);
                      }

                      return v5;
                    }

                    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 32))
                    {
                      break;
                    }

                    i = (i + 16);
                  }

                  v37 = *(i + 1);
                  while (1)
                  {
                    if (i == mlir::DictionaryAttr::end(&v75))
                    {
                      v38 = "'anec.resample' op requires attribute 'sampling_method'";
                      goto LABEL_151;
                    }

                    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 40))
                    {
                      break;
                    }

                    i = (i + 16);
                  }

                  v39 = *(i + 1);
                  while (1)
                  {
                    if (i == mlir::DictionaryAttr::end(&v75))
                    {
                      v38 = "'anec.resample' op requires attribute 'warp_coordinate_mode'";
                      goto LABEL_151;
                    }

                    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 48))
                    {
                      break;
                    }

                    i = (i + 16);
                  }

                  v40 = *(i + 1);
                  if (!v21)
                  {
                    goto LABEL_154;
                  }

                  v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                  v72 = v21;
                  v73 = v41;
                  Type = mlir::ElementsAttr::getType(&v72);
                  v43 = Type;
                  if (Type)
                  {
                    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
                  }

                  Value = v43;
                  v78 = Type;
                  Shape = mlir::ShapedType::getShape(&Value);
                  v76 = 2;
                  if (v45 == 1 && *Shape == v76 && (v71 = v21, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_0>(&v71) & 1) != 0))
                  {
LABEL_154:
                    if (!v36)
                    {
                      goto LABEL_155;
                    }

                    v46 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v36 + 8);
                    v72 = v36;
                    v73 = v46;
                    v47 = mlir::ElementsAttr::getType(&v72);
                    v48 = v47;
                    if (v47)
                    {
                      v47 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v47 + 8);
                    }

                    Value = v48;
                    v78 = v47;
                    v49 = mlir::ShapedType::getShape(&Value);
                    v76 = 2;
                    if (v50 == 1 && *v49 == v76 && (v71 = v36, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v71) & 1) != 0))
                    {
LABEL_155:
                      if (!v28)
                      {
                        goto LABEL_156;
                      }

                      v51 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
                      v72 = v28;
                      v73 = v51;
                      v52 = mlir::ElementsAttr::getType(&v72);
                      v53 = v52;
                      if (v52)
                      {
                        v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v52 + 8);
                      }

                      Value = v53;
                      v78 = v52;
                      v54 = mlir::ShapedType::getShape(&Value);
                      v76 = 2;
                      if (v55 == 1 && *v54 == v76 && (v71 = v28, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v71) & 1) != 0))
                      {
LABEL_156:
                        if (!v40)
                        {
                          goto LABEL_157;
                        }

                        v56 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v40 + 8);
                        v72 = v40;
                        v73 = v56;
                        v57 = mlir::ElementsAttr::getType(&v72);
                        v58 = v57;
                        if (v57)
                        {
                          v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v57 + 8);
                        }

                        Value = v58;
                        v78 = v57;
                        v59 = mlir::ShapedType::getShape(&Value);
                        v76 = 1;
                        if (v60 == 1 && *v59 == v76 && (v71 = v40, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v71) & 1) != 0))
                        {
LABEL_157:
                          if (!v39)
                          {
                            goto LABEL_158;
                          }

                          v61 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v39 + 8);
                          v72 = v39;
                          v73 = v61;
                          v62 = mlir::ElementsAttr::getType(&v72);
                          v63 = v62;
                          if (v62)
                          {
                            v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v62 + 8);
                          }

                          Value = v63;
                          v78 = v62;
                          v64 = mlir::ShapedType::getShape(&Value);
                          v76 = 2;
                          if (v65 == 1 && *v64 == v76 && (v71 = v39, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v71) & 1) != 0))
                          {
LABEL_158:
                            if (!v37)
                            {
                              goto LABEL_159;
                            }

                            v66 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v37 + 8);
                            v72 = v37;
                            v73 = v66;
                            v67 = mlir::ElementsAttr::getType(&v72);
                            v68 = v67;
                            if (v67)
                            {
                              v67 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v67 + 8);
                            }

                            Value = v68;
                            v78 = v67;
                            v69 = mlir::ShapedType::getShape(&Value);
                            v76 = 2;
                            if (v70 == 1 && *v69 == v76 && (v71 = v37, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_4>(&v71) & 1) != 0))
                            {
LABEL_159:
                              if (!v14)
                              {
                                return 1;
                              }

                              if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
                              {
                                v72 = v14;
                                Value = mlir::AffineMapAttr::getValue(&v72);
                                if (mlir::Type::isF16(&Value))
                                {
                                  return 1;
                                }
                              }

                              v38 = "'anec.resample' op attribute 'background_value' failed to satisfy constraint: 16-bit float attribute";
                            }

                            else
                            {
                              v38 = "'anec.resample' op attribute 'padding_modes' failed to satisfy constraint: PaddingMode elements attribute of shape {2}";
                            }
                          }

                          else
                          {
                            v38 = "'anec.resample' op attribute 'sampling_method' failed to satisfy constraint: SamplingGridMethod elements attribute of shape {2}";
                          }
                        }

                        else
                        {
                          v38 = "'anec.resample' op attribute 'warp_coordinate_mode' failed to satisfy constraint: WarpCoordinateMode elements attribute of shape {1}";
                        }
                      }

                      else
                      {
                        v38 = "'anec.resample' op attribute 'coordinate_type' failed to satisfy constraint: CoordinateType elements attribute of shape {2}";
                      }
                    }

                    else
                    {
                      v38 = "'anec.resample' op attribute 'normalized_range' failed to satisfy constraint: NormalizedCoordinateRange elements attribute of shape {2}";
                    }
                  }

                  else
                  {
                    v38 = "'anec.resample' op attribute 'coordinate_mode' failed to satisfy constraint: CoordinateMode elements attribute of shape {2}";
                  }

LABEL_151:
                  v72 = v38;
                  v74 = 259;
                  mlir::emitError(a2, &v72, &Value);
                  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
                  return v5;
                }

                i = (i + 16);
              }

              v72 = "'anec.resample' op requires attribute 'normalized_range'";
              v74 = 259;
              mlir::emitError(a2, &v72, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v86 != 1)
              {
                return v5;
              }

              if (v85 != &v86)
              {
                free(v85);
              }

              v29 = __p;
              if (__p)
              {
                v30 = v84;
                v31 = __p;
                if (v84 != __p)
                {
                  do
                  {
                    v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
                  }

                  while (v30 != v29);
                  v31 = __p;
                }

                v84 = v29;
                operator delete(v31);
              }

              v9 = v81;
              if (!v81)
              {
                goto LABEL_83;
              }

              v32 = v82;
              v11 = v81;
              if (v82 == v81)
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

          v72 = "'anec.resample' op requires attribute 'coordinate_type'";
          v74 = 259;
          mlir::emitError(a2, &v72, &Value);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
          if (Value)
          {
            mlir::InFlightDiagnostic::report(&Value);
          }

          if (v86 != 1)
          {
            return v5;
          }

          if (v85 != &v86)
          {
            free(v85);
          }

          v22 = __p;
          if (__p)
          {
            v23 = v84;
            v24 = __p;
            if (v84 != __p)
            {
              do
              {
                v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v84 = v22;
            operator delete(v24);
          }

          v9 = v81;
          if (!v81)
          {
            goto LABEL_83;
          }

          v25 = v82;
          v11 = v81;
          if (v82 == v81)
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

      v72 = "'anec.resample' op requires attribute 'coordinate_mode'";
      v74 = 259;
      mlir::emitError(a2, &v72, &Value);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v86 != 1)
      {
        return v5;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v84;
        v17 = __p;
        if (v84 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v84 = v15;
        operator delete(v17);
      }

      v9 = v81;
      if (!v81)
      {
        goto LABEL_83;
      }

      v18 = v82;
      v11 = v81;
      if (v82 == v81)
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
      v11 = v81;
      goto LABEL_82;
    }
  }

  v72 = "'anec.resample' op requires attribute 'background_value'";
  v74 = 259;
  mlir::emitError(a2, &v72, &Value);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v86 == 1)
  {
    if (v85 != &v86)
    {
      free(v85);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v84;
      v8 = __p;
      if (v84 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v84 = v6;
      operator delete(v8);
    }

    v9 = v81;
    if (v81)
    {
      v10 = v82;
      v11 = v81;
      if (v82 != v81)
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
      v82 = v9;
      operator delete(v11);
    }

LABEL_83:
    if (v79 != &v80)
    {
      free(v79);
    }
  }

  return v5;
}

BOOL mlir::anec::Resample::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Resample::getZinIrUnitInfo();
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

uint64_t mlir::anec::State::addOpToNetwork(mlir::anec::State *this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v4 = *this;
  Context = mlir::Attribute::getContext((v4 + 24));
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v13 = 261;
  v12[0] = p_p;
  v12[1] = size;
  v8 = mlir::StringAttr::get(Context, v12);
  v9 = mlir::Attribute::getContext((v4 + 24));
  v16 = 261;
  v15[0] = "name";
  v15[1] = 4;
  v10 = mlir::StringAttr::get(v9, v15);
  mlir::Operation::setAttr(v4, v10, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void mlir::anec::anonymous namespace::computeValueName(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v14 = a1;
  if (mlir::Value::getDefiningOp(&v14))
  {
    DefiningOp = mlir::Value::getDefiningOp(&v14);
    mlir::anec::computeOpKeyString(a3, DefiningOp);
    return;
  }

  v6 = v14;
  if ((~*(v14 + 8) & 7) != 0)
  {
    v6 = 0;
  }

  v20 = *(v6 + 24);
  v15[0] = "";
  v15[1] = 0;
  v15[2] = "__arg";
  v16 = 773;
  v17.__r_.__value_.__r.__words[0] = v15;
  v17.__r_.__value_.__r.__words[2] = &v20;
  v19 = 3330;
  llvm::Twine::str(&v17, __p);
  v7 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a2 + 584), __p);
  v8 = v7 != 0;
  if (v7)
  {
    v9 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a2 + 584), __p);
    if (!v9)
    {
      abort();
    }

    if (*(v9 + 63) < 0)
    {
      v10 = &v17;
      std::string::__init_copy_ctor_external(&v17, v9[5], v9[6]);
    }

    else
    {
      v17 = *(v9 + 5);
      v10 = &v17;
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
    v17.__r_.__value_.__s.__data_[0] = 0;
    v10 = __p;
  }

  v18 = v11;
  if (SHIBYTE(v10->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a3, v10->__r_.__value_.__l.__data_, v10->__r_.__value_.__l.__size_);
    if ((v18 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    goto LABEL_18;
  }

  *&a3->__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  if (v8)
  {
    goto LABEL_16;
  }

LABEL_18:
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

BOOL mlir::anec::RingBufferWriter::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    operator new();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, &v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v15);
  if (v15)
  {
    mlir::InFlightDiagnostic::report(&v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v4 = v20;
    if (v20)
    {
      v5 = v21;
      v6 = v20;
      if (v21 != v20)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = v20;
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

uint64_t mlir::anec::RingBufferReader::inferPromotedReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36[6] = *MEMORY[0x1E69E9840];
  v27 = a6;
  v11 = mlir::TypeRange::dereference_iterator(a9, 0);
  v12 = v11;
  if (v11)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  v26[0] = v12;
  v26[1] = v11;
  mlir::ShapedType::getShape(v26);
  v14 = v13;
  v15 = mlir::DictionaryAttr::get(&v27, "slice_size", 0xAuLL);
  if (v15)
  {
    v16 = v15;
    if (mlir::DenseIntElementsAttr::classof(v15))
    {
      v15 = v16;
    }

    else
    {
      v15 = 0;
    }
  }

  v34 = v36;
  v35 = 0x600000000;
  mlir::getValues<long long>(v15, &v34);
  v17 = v35;
  if (v14 > v35)
  {
    __src = v33;
    v32 = 6;
    if (v14 <= 6)
    {
      v19 = 8 * v14;
      v18 = v33;
    }

    else
    {
      v31 = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v33, v14, 8);
      v18 = __src;
      v19 = 8 * v14;
    }

    memset_pattern16(v18, &unk_1A75989B0, v19);
    v31 = v14;
    v28[0] = &v29;
    v28[1] = 0xC00000000;
    mlir::anec::getANEDefaultLayout(v17, v28);
  }

  v20 = v34;
  isSplat = mlir::ElementsAttr::isSplat(v26);
  v22 = mlir::MemRefType::get(v20, v17, isSplat, 0, 0, 0);
  v23 = *(a11 + 8);
  if (v23 >= *(a11 + 12))
  {
    v25 = v22;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v23 + 1, 8);
    v22 = v25;
    LODWORD(v23) = *(a11 + 8);
  }

  *(*a11 + 8 * v23) = v22;
  ++*(a11 + 8);
  if (v34 != v36)
  {
    free(v34);
  }

  return 1;
}

BOOL mlir::anec::RingBufferReader::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    operator new();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, &v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v15);
  if (v15)
  {
    mlir::InFlightDiagnostic::report(&v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v4 = v20;
    if (v20)
    {
      v5 = v21;
      v6 = v20;
      if (v21 != v20)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = v20;
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

uint64_t mlir::anec::getPromotedReturnTypeForTensorBuffer(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v36[6] = *MEMORY[0x1E69E9840];
  v31 = a3;
  v5 = mlir::TypeRange::dereference_iterator(a1, 0);
  v6 = v5;
  if (v5)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  v30[0] = v6;
  v30[1] = v5;
  v35[0] = v36;
  v35[1] = 0x600000000;
  v7 = mlir::DictionaryAttr::get(&v31, "interleave", 0xAuLL);
  if (v7)
  {
    v8 = v7;
    if (mlir::DenseIntElementsAttr::classof(v7))
    {
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }
  }

  mlir::getValues<unsigned long>(v7, v35);
  v9 = *v35[0];
  Shape = mlir::ShapedType::getShape(v30);
  v12 = v10;
  v32 = v34;
  v33 = 0x600000000;
  v13 = (8 * v10) >> 3;
  if (v13 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v13, 8);
    v14 = v33;
    v15 = 8 * v12;
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = 0;
  v15 = 8 * v10;
  if (v10)
  {
LABEL_11:
    memcpy(v32 + 8 * v14, Shape, v15);
    v14 = v33;
  }

LABEL_12:
  LODWORD(v33) = v14 + (v15 >> 3);
  mlir::ShapedType::getShape(v30);
  IndexFromDim = mlir::anec::getIndexFromDim(4, v16);
  if ((v18 & 1) == 0 || (v19 = IndexFromDim, mlir::ShapedType::getShape(v30), v21 = mlir::anec::getIndexFromDim(1, v20), (v22 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v23 = v32;
  v24 = *(v32 + v19);
  if (a4)
  {
    *(v32 + v19) = v24 / v9;
    v25 = *(v23 + v21) * v9;
  }

  else
  {
    *(v32 + v19) = v24 * v9;
    v25 = *(v23 + v21) / v9;
  }

  *(v23 + v21) = v25;
  v26 = v33;
  isSplat = mlir::ElementsAttr::isSplat(v30);
  v28 = mlir::MemRefType::get(v23, v26, isSplat, 0, 0, 0);
  if (v32 != v34)
  {
    free(v32);
  }

  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  return v28;
}

uint64_t mlir::anec::ScaledDotProductAttention::inferPromotedReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v11 = mlir::TypeRange::dereference_iterator(a9, 0);
  v12 = v11;
  if (v11)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  v25[0] = v12;
  v25[1] = v11;
  v13 = mlir::TypeRange::dereference_iterator(a9, 1);
  if (v13)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v14 = *mlir::ShapedType::getShape(v25);
  v15 = *(mlir::ShapedType::getShape(v25) + 24);
  v16 = *(mlir::ShapedType::getShape(v25) + 8);
  v17 = *(mlir::ShapedType::getShape(v25) + 16);
  __src[3] = v15;
  v27 = v29;
  v28 = 0x400000000;
  __src[0] = v14;
  __src[1] = v16;
  __src[2] = v17;
  llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v27, v29, __src, &v27);
  v18 = v27;
  v19 = v28;
  isSplat = mlir::ElementsAttr::isSplat(v25);
  v21 = mlir::MemRefType::get(v18, v19, isSplat, 0, 0, 0);
  v22 = *(a11 + 8);
  if (v22 >= *(a11 + 12))
  {
    v24 = v21;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v22 + 1, 8);
    v21 = v24;
    LODWORD(v22) = *(a11 + 8);
  }

  *(*a11 + 8 * v22) = v21;
  ++*(a11 + 8);
  if (v27 != v29)
  {
    free(v27);
  }

  return 1;
}

float mlir::anec::ScaledDotProductAttention::getExecutionCost(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 72);
  v4 = v3[7];
  v5 = v3[11];
  v6 = (*(v3[3] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v68[0] = v6;
  v68[1] = v7;
  v8 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v67[0] = v8;
  v67[1] = v9;
  v10 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v66[0] = v10;
  v66[1] = v11;
  Shape = mlir::ShapedType::getShape(v68);
  v13 = mlir::ShapedType::getShape(v67);
  v14 = mlir::ShapedType::getShape(v66);
  mlir::ShapedType::getShape(v68);
  v16 = v15;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v15);
  v18 = mlir::anec::getIndexFromDim(1, v16);
  v19 = mlir::anec::getIndexFromDim(4, v16);
  isSplat = mlir::ElementsAttr::isSplat(v68);
  v69 = mlir::ElementsAttr::isSplat(v68);
  v21 = mlir::Type::getIntOrFloatBitWidth(&v69) >> 3;
  v22 = mlir::ShapedType::getShape(v67);
  v24 = 2 * mlir::ShapedType::getNumElements(v22, v23) * v21;
  v25 = 0.0;
  if (v24 <= 0x200000)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v24;
  }

  v69 = isSplat;
  v27 = *(a2 + 40) * 1.0e12;
  isF16 = mlir::Type::isF16(&v69);
  v29 = v27 + v27;
  if (isF16)
  {
    v29 = v27;
  }

  v30 = 0.0 / v29;
  if (v30 >= (v26 / (*(a2 + 44) * 1000000000.0)))
  {
    v31 = v30;
  }

  else
  {
    v31 = v26 / (*(a2 + 44) * 1000000000.0);
  }

  v32 = *(v13 + 8 * v18) * *(Shape + 8 * v18) * *(Shape + 8 * IndexFromDim);
  v33 = 2 * v32;
  v34 = 2 * v32 * *(Shape + 8 * v19);
  v35 = mlir::ShapedType::getShape(v68);
  NumElements = mlir::ShapedType::getNumElements(v35, v36);
  v38 = mlir::ShapedType::getShape(v67);
  v40 = (NumElements + mlir::ShapedType::getNumElements(v38, v39) + v32) * v21;
  if (v40 <= 0x200000)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = v40;
  }

  v69 = isSplat;
  v42 = *(a2 + 40) * 1.0e12;
  v43 = mlir::Type::isF16(&v69);
  v44 = v42 + v42;
  if (v43)
  {
    v44 = v42;
  }

  v45 = *(a2 + 40);
  v46 = (v34 / v44) / 0.65;
  if (v46 < (v41 / (*(a2 + 44) * 1000000000.0)))
  {
    v46 = v41 / (*(a2 + 44) * 1000000000.0);
  }

  v47 = v31 + v46;
  if (v33 * v21 <= 0x200000)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = (v33 * v21);
  }

  v69 = isSplat;
  v49 = v45 * 1.0e12;
  v50 = mlir::Type::isF16(&v69);
  v51 = v49 + v49;
  if (v50)
  {
    v51 = v49;
  }

  v52 = (5 * v32) / v51;
  if (v52 < (v48 / (*(a2 + 44) * 1000000000.0)))
  {
    v52 = v48 / (*(a2 + 44) * 1000000000.0);
  }

  v53 = v47 + v52;
  v54 = *(v14 + 8 * v19) * v33;
  v55 = mlir::ShapedType::getShape(v68);
  v57 = mlir::ShapedType::getNumElements(v55, v56);
  v58 = mlir::ShapedType::getShape(v66);
  v60 = (v57 + mlir::ShapedType::getNumElements(v58, v59) + v32) * v21;
  if (v60 > 0x200000)
  {
    v25 = v60;
  }

  v69 = isSplat;
  v61 = *(a2 + 40) * 1.0e12;
  v62 = mlir::Type::isF16(&v69);
  v63 = v61 + v61;
  if (v62)
  {
    v63 = v61;
  }

  v64 = (v54 / v63) / 0.65;
  if (v64 < (v25 / (*(a2 + 44) * 1000000000.0)))
  {
    v64 = v25 / (*(a2 + 44) * 1000000000.0);
  }

  return v53 + v64;
}

BOOL mlir::anec::ScaledDotProductAttention::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    operator new();
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

uint64_t mlir::anec::A11Legacy::getFunctionType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

void mlir::anec::A11Legacy::build(mlir::StringAttr **a1, void *a2, void *a3, void *a4, mlir::IRMapping *a5, void *a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, mlir::Operation **a15, uint64_t a16, void *__src, uint64_t a18)
{
  v34[4] = *MEMORY[0x1E69E9840];
  a2[24] = 0;
  v22 = *(a2 + 30);
  if (a18 + v22 > *(a2 + 31))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((a2 + 14), a2 + 16, a18 + v22, 16);
    LODWORD(v22) = *(a2 + 30);
  }

  if (a18)
  {
    memcpy((a2[14] + 16 * v22), __src, 16 * a18);
    LODWORD(v22) = *(a2 + 30);
  }

  *(a2 + 30) = v22 + a18;
  v33 = 261;
  v32[0] = a3;
  v32[1] = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, v32);
  Context = mlir::Attribute::getContext(a2);
  v31 = 261;
  v29 = "sym_name";
  v30 = 8;
  v25 = mlir::StringAttr::get(Context, &v29);
  ZinMirCacheTensors::ZinMirCacheTensors(v34, v25, StringAttr);
  mlir::NamedAttrList::push_back((a2 + 14), v34[0], v34[1]);
  v26 = mlir::FunctionType::get(*a1, a9, a10, a13, a14);
  v27 = *(*(a2[1] + 96) + 8);
  v28 = mlir::TypeAttr::get(v26);
  ZinMirCacheTensors::ZinMirCacheTensors(&v29, v27, v28);
  mlir::NamedAttrList::push_back((a2 + 14), v29, v30);
  mlir::OperationState::addRegion(a2);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::RegionReturn,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
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
  mlir::OperationState::addOperands(v14, v15[0], v15[1]);
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

BOOL mlir::anec::A11Legacy::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x1E69E9840];
  v27[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v27);
  if (!v3)
  {
LABEL_7:
    v25[0] = "requires attribute 'function_type'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v7;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v33;
      v10 = __p;
      if (v33 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v33 = v8;
      operator delete(v10);
    }

    v11 = v30;
    if (v30)
    {
      v12 = v31;
      v13 = v30;
      if (v31 != v30)
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
LABEL_45:
        v13 = v30;
      }

LABEL_46:
      v31 = v11;
      operator delete(v13);
    }

LABEL_47:
    if (v28 != &v29)
    {
      free(v28);
    }

    return v7;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(v4) == **(*(*this + 6) + 96))
    {
      v5 = v4[1];
    }

    v4 += 2;
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_29:
    v25[0] = "requires attribute 'sym_name'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v7;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v33;
      v20 = __p;
      if (v33 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v33 = v18;
      operator delete(v20);
    }

    v11 = v30;
    if (v30)
    {
      v21 = v31;
      v13 = v30;
      if (v31 != v30)
      {
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

        while (v21 != v11);
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v16 = 0;
  v17 = v4[1];
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != *(*(*(*this + 6) + 96) + 24))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(v4) == *(*(*(*this + 6) + 96) + 16))
    {
      v16 = v4[1];
    }

    v4 += 2;
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_29;
    }
  }

  return mlir::anec::__mlir_ods_local_attr_constraint_ANECOps1(*this, v4[1], "sym_name", 8) && mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps1(*this, v17, "function_type", 0xD) && mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps7(*this, v5, "arg_attrs", 9) && mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps7(*this, v16, "res_attrs", 9) && mlir::mpsx::__mlir_ods_local_region_constraint_MPSXOps2(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "body", 4, 0);
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps1(uint64_t *a1, uint64_t a2, const char *a3, const char *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 1;
  }

  v27 = 257;
  mlir::Operation::emitOpError(a1, &v24, v28);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v28, "attribute '");
  if (*v6)
  {
    v27 = 261;
    v24 = a3;
    v25 = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<(v6 + 8, &v24);
    v6 = v7;
    if (*v7)
    {
      v8 = *(v7 + 24);
      LODWORD(v24) = 3;
      v25 = "' failed to satisfy constraint: string attribute";
      v26 = 48;
      v9 = *(v7 + 32);
      v10 = &v24;
      if (v9 >= *(v7 + 36))
      {
        if (v8 <= &v24 && v8 + 24 * v9 > &v24)
        {
          v23 = &v24 - v8;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, (v7 + 40), v9 + 1, 24);
          v6 = v7;
          v8 = *(v7 + 24);
          v10 = &v23[v8];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, (v7 + 40), v9 + 1, 24);
          v6 = v7;
          v8 = *(v7 + 24);
          v10 = &v24;
        }
      }

      v11 = v8 + 24 * *(v6 + 32);
      v12 = *v10;
      *(v11 + 16) = v10[2];
      *v11 = v12;
      ++*(v6 + 32);
    }
  }

  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v28[0])
  {
    mlir::InFlightDiagnostic::report(v28);
  }

  if (v36 == 1)
  {
    if (v35 != &v36)
    {
      free(v35);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v34;
      v16 = __p;
      if (v34 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v34 = v14;
      operator delete(v16);
    }

    v17 = v31;
    if (v31)
    {
      v18 = v32;
      v19 = v31;
      if (v32 != v31)
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
        v19 = v31;
      }

      v32 = v17;
      operator delete(v19);
    }

    if (v29 != &v30)
    {
      free(v29);
    }
  }

  return v13;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ArgMinMax>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = v31;
  v30 = 0x600000000;
  v27 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v27, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v30;
      if (v30 >= HIDWORD(v30))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v30;
      }

      *(v29 + v21) = RankPromotionTypeForANE;
      v22 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      v17 = v28 + 1;
      v28 = v17;
      if (v17 == a5)
      {
        v25 = v29;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v25 = v31;
LABEL_13:
    mlir::ValueRange::ValueRange(&v27, v25, v22);
    result = mlir::anec::ArgMinMax::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v27, v28, a11);
  }

  if (v29 != v31)
  {
    v26 = result;
    free(v29);
    return v26;
  }

  return result;
}

void mlir::anec::ArgMinMax::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v29 = a3;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v33);
  v15 = *(*(*(a2 + 8) + 96) + 16);
  v16 = mlir::IntegerType::get(*a1, 0x40u, 0);
  v17 = mlir::IntegerAttr::get(v16, a5);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, v15, v17);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v33);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 8), a6);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v33);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 32), a7);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v33);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 24), a8);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v33);
  __src = v34;
  v33 = 0x200000000;
  v18 = *a1;
  v19 = *a2;
  mlir::ValueRange::ValueRange(v31, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v22 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v30, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ArgMinMax>::inferReturnTypes(v18, v19, 1, v31[0], v31[1], Dictionary, v22, v23, v30[0], v30[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v24);
  }

  v25 = __src;
  v26 = v33;
  v27 = *(a2 + 72);
  v28 = v27 + v33;
  if (v28 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v28, 8);
    LODWORD(v27) = *(a2 + 72);
  }

  if (v26)
  {
    memcpy((*(a2 + 64) + 8 * v27), v25, 8 * v26);
    LODWORD(v27) = *(a2 + 72);
  }

  *(a2 + 72) = v27 + v26;
  if (__src != v34)
  {
    free(__src);
  }
}

BOOL mlir::anec::ArgMinMax::verifyInvariantsImpl(mlir::Operation **this)
{
  v97 = *MEMORY[0x1E69E9840];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (!v3)
  {
LABEL_5:
    v83 = "requires attribute 'axes'";
    v86 = 259;
    mlir::OpState::emitOpError(this, &v83, &AttrDictionary);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v96 != 1)
    {
      return v6;
    }

    if (v95 != &v96)
    {
      free(v95);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v94;
      v9 = __p;
      if (v94 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v94 = v7;
      operator delete(v9);
    }

    v10 = v91;
    if (!v91)
    {
      goto LABEL_83;
    }

    v11 = v92;
    v12 = v91;
    if (v92 == v91)
    {
      goto LABEL_82;
    }

    do
    {
      v14 = *--v11;
      v13 = v14;
      *v11 = 0;
      if (v14)
      {
        MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
      }
    }

    while (v11 != v10);
    goto LABEL_81;
  }

  v4 = 16 * v3;
  v5 = (Value + 8);
  while (ZinCompressedFootprintInfo::GetCompressedBytes((v5 - 1)) != **(*(*this + 6) + 96))
  {
    v5 += 2;
    v4 -= 16;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if (!v4)
  {
LABEL_25:
    v83 = "requires attribute 'kernel_size'";
    v86 = 259;
    mlir::OpState::emitOpError(this, &v83, &AttrDictionary);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v96 != 1)
    {
      return v6;
    }

    if (v95 != &v96)
    {
      free(v95);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v94;
      v20 = __p;
      if (v94 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v94 = v18;
      operator delete(v20);
    }

    v10 = v91;
    if (!v91)
    {
      goto LABEL_83;
    }

    v21 = v92;
    v12 = v91;
    if (v92 == v91)
    {
      goto LABEL_82;
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

    while (v21 != v10);
    goto LABEL_81;
  }

  v15 = 0;
  v16 = *v5;
  while (1)
  {
    v17 = &v5[v15 / 8];
    if (ZinCompressedFootprintInfo::GetCompressedBytes(&v5[v15 / 8 - 1]) == *(*(*(*this + 6) + 96) + 8))
    {
      break;
    }

    v15 += 16;
    if (v4 == v15)
    {
      goto LABEL_25;
    }
  }

  v24 = v4 - v15;
  if (v4 == v15)
  {
LABEL_45:
    v83 = "requires attribute 'mode'";
    v86 = 259;
    mlir::OpState::emitOpError(this, &v83, &AttrDictionary);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v96 != 1)
    {
      return v6;
    }

    if (v95 != &v96)
    {
      free(v95);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v94;
      v28 = __p;
      if (v94 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v94 = v26;
      operator delete(v28);
    }

    v10 = v91;
    if (!v91)
    {
      goto LABEL_83;
    }

    v29 = v92;
    v12 = v91;
    if (v92 == v91)
    {
      goto LABEL_82;
    }

    do
    {
      v31 = *--v29;
      v30 = v31;
      *v29 = 0;
      if (v31)
      {
        MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
      }
    }

    while (v29 != v10);
LABEL_81:
    v12 = v91;
    goto LABEL_82;
  }

  v25 = *v17;
  while (ZinCompressedFootprintInfo::GetCompressedBytes((v17 - 1)) != *(*(*(*this + 6) + 96) + 16))
  {
    v17 += 2;
    v24 -= 16;
    if (!v24)
    {
      goto LABEL_45;
    }
  }

  if (!v24)
  {
LABEL_65:
    v83 = "requires attribute 'pad_values'";
    v86 = 259;
    mlir::OpState::emitOpError(this, &v83, &AttrDictionary);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v96 != 1)
    {
      return v6;
    }

    if (v95 != &v96)
    {
      free(v95);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v94;
      v37 = __p;
      if (v94 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v94 = v35;
      operator delete(v37);
    }

    v10 = v91;
    if (v91)
    {
      v38 = v92;
      v12 = v91;
      if (v92 != v91)
      {
        do
        {
          v40 = *--v38;
          v39 = v40;
          *v38 = 0;
          if (v40)
          {
            MEMORY[0x1AC55A040](v39, 0x1000C8077774924);
          }
        }

        while (v38 != v10);
        goto LABEL_81;
      }

LABEL_82:
      v92 = v10;
      operator delete(v12);
    }

LABEL_83:
    if (v89 != v90)
    {
      free(v89);
    }

    return v6;
  }

  v32 = 0;
  v33 = *v17;
  while (1)
  {
    v34 = &v17[v32 / 8];
    if (ZinCompressedFootprintInfo::GetCompressedBytes(&v17[v32 / 8 - 1]) == *(*(*(*this + 6) + 96) + 24))
    {
      break;
    }

    v32 += 16;
    if (v24 == v32)
    {
      goto LABEL_65;
    }
  }

  v42 = v24 - v32;
  if (v42)
  {
    v45 = *v34;
    v44 = (v34 - 1);
    v43 = v45;
    while (1)
    {
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v44);
      v47 = *this;
      if (CompressedBytes == *(*(*(*this + 6) + 96) + 32))
      {
        break;
      }

      v44 = (v44 + 16);
      v42 -= 16;
      if (!v42)
      {
        goto LABEL_90;
      }
    }

    v48 = *(v44 + 1);
    if (v16)
    {
      if (!mlir::DenseIntElementsAttr::classof(v16))
      {
        goto LABEL_105;
      }

      v49 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v16 + 8);
      v83 = v16;
      v84 = v49;
      Type = mlir::ElementsAttr::getType(&v83);
      v51 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      AttrDictionary = v51;
      v88 = Type;
      mlir::ShapedType::getShape(&AttrDictionary);
      if (v52)
      {
        v53 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v16 + 8);
        v81[0] = v16;
        v81[1] = v53;
        v54 = mlir::ElementsAttr::getType(v81);
        v55 = v54;
        if (v54)
        {
          v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        }

        v82[0] = v55;
        v82[1] = v54;
        mlir::ShapedType::getShape(v82);
        if (v56 != 1)
        {
          goto LABEL_105;
        }
      }

      if (!mlir::hasUniqueValues(v16) || (v80 = v16, !mlir::DenseElementsAttr::getNumElements(&v80)) || (v77 = v16, v78[0] = mlir::ArrayAttr::getValue(&v77), v78[1] = v57, isSplat = mlir::ElementsAttr::isSplat(v78), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
LABEL_105:
        v86 = 257;
        mlir::Operation::emitOpError(v47, &v83, &AttrDictionary);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, "attribute '");
        if (*v58)
        {
          v86 = 261;
          v83 = "axes";
          v84 = 4;
          v59 = v58;
          mlir::Diagnostic::operator<<(v58 + 8, &v83);
          v58 = v59;
          if (*v59)
          {
            v60 = *(v59 + 24);
            LODWORD(v83) = 3;
            v84 = "' failed to satisfy constraint: ui64 unique not empty elements attribute of ranks 0/1";
            v85 = 85;
            v61 = *(v59 + 32);
            v62 = &v83;
            if (v61 >= *(v59 + 36))
            {
              if (v60 <= &v83 && v60 + 24 * v61 > &v83)
              {
                v76 = &v83 - v60;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v59 + 24, (v59 + 40), v61 + 1, 24);
                v58 = v59;
                v60 = *(v59 + 24);
                v62 = &v76[v60];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v59 + 24, (v59 + 40), v61 + 1, 24);
                v58 = v59;
                v60 = *(v59 + 24);
                v62 = &v83;
              }
            }

            v63 = v60 + 24 * *(v58 + 32);
            v64 = *v62;
            *(v63 + 16) = v62[2];
            *v63 = v64;
            ++*(v58 + 32);
          }
        }

        v65 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
        if (AttrDictionary)
        {
          mlir::InFlightDiagnostic::report(&AttrDictionary);
        }

        if (v96 == 1)
        {
          if (v95 != &v96)
          {
            free(v95);
          }

          v66 = __p;
          if (__p)
          {
            v67 = v94;
            v68 = __p;
            if (v94 != __p)
            {
              do
              {
                v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
              }

              while (v67 != v66);
              v68 = __p;
            }

            v94 = v66;
            operator delete(v68);
          }

          v69 = v91;
          if (v91)
          {
            v70 = v92;
            v71 = v91;
            if (v92 != v91)
            {
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
              v71 = v91;
            }

            v92 = v69;
            operator delete(v71);
          }

          if (v89 != v90)
          {
            free(v89);
          }
        }

        if (!v65)
        {
          return 0;
        }
      }
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps5(*this, v33, "mode", 4) && mlir::anec::__mlir_ods_local_attr_constraint_ANECOps6(*this, v25, "kernel_size", 11) && mlir::anec::__mlir_ods_local_attr_constraint_ANECOps6(*this, v48, "stride_values", 13) && mlir::anec::__mlir_ods_local_attr_constraint_ANECOps7(*this, v43, "pad_values", 10) && mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v74 = *this - 16;
      }

      else
      {
        v74 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v74, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_90:
    v83 = "requires attribute 'stride_values'";
    v86 = 259;
    mlir::OpState::emitOpError(this, &v83, &AttrDictionary);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v96 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v88);
    }
  }

  return v6;
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps5(uint64_t *a1, const char *a2, const char *a3, const char *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v25[0] = a2;
    v6 = a1;
    v27[0] = mlir::AffineMapAttr::getValue(v25);
    isSignlessInteger = mlir::Type::isSignlessInteger(v27, 64);
    a1 = v6;
    if (isSignlessInteger)
    {
      v24 = a2;
      if (!mlir::IntegerAttr::getInt(&v24))
      {
        return 1;
      }

      v23 = a2;
      v9 = mlir::IntegerAttr::getInt(&v23) == 1;
      a1 = v6;
      if (v9)
      {
        return 1;
      }
    }
  }

  v26 = 257;
  mlir::Operation::emitOpError(a1, v25, v27);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v27, "attribute '");
  if (*v11)
  {
    v26 = 261;
    v25[0] = a3;
    v25[1] = a4;
    v12 = v11;
    mlir::Diagnostic::operator<<((v11 + 1), v25);
    v11 = v12;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v11, "' failed to satisfy constraint: valid ArgMinMaxMode");
  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
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

    v14 = __p;
    if (__p)
    {
      v15 = v33;
      v16 = __p;
      if (v33 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v33 = v14;
      operator delete(v16);
    }

    v17 = v30;
    if (v30)
    {
      v18 = v31;
      v19 = v30;
      if (v31 != v30)
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
        v19 = v30;
      }

      v31 = v17;
      operator delete(v19);
    }

    if (v28 != &v29)
    {
      free(v28);
    }
  }

  return v10;
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps6(uint64_t *a1, const char *a2, const char *a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v30 = a2;
  v31 = v8;
  Type = mlir::ElementsAttr::getType(&v30);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  Shape = mlir::ShapedType::getShape(v33);
  v42 = 2;
  if (v12 == 1 && *Shape == v42)
  {
    v27 = a2;
    v28[0] = mlir::ArrayAttr::getValue(&v27);
    v28[1] = v13;
    isSplat = mlir::ElementsAttr::isSplat(v28);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v32 = 257;
  mlir::Operation::emitOpError(a1, &v30, v33);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v33, "attribute '");
  if (*v15)
  {
    v32 = 261;
    v30 = a3;
    v31 = a4;
    v16 = v15;
    mlir::Diagnostic::operator<<((v15 + 1), &v30);
    v15 = v16;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "' failed to satisfy constraint: ui64 elements attribute of shape {2}");
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v39;
      v20 = __p;
      if (v39 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v39 = v18;
      operator delete(v20);
    }

    v21 = v36;
    if (v36)
    {
      v22 = v37;
      v23 = v36;
      if (v37 != v36)
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
        v23 = v36;
      }

      v37 = v21;
      operator delete(v23);
    }

    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v14;
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps7(uint64_t *a1, const char *a2, const char *a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v30 = a2;
  v31 = v8;
  Type = mlir::ElementsAttr::getType(&v30);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  Shape = mlir::ShapedType::getShape(v33);
  v42 = 4;
  if (v12 == 1 && *Shape == v42)
  {
    v27 = a2;
    v28[0] = mlir::ArrayAttr::getValue(&v27);
    v28[1] = v13;
    isSplat = mlir::ElementsAttr::isSplat(v28);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v32 = 257;
  mlir::Operation::emitOpError(a1, &v30, v33);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v33, "attribute '");
  if (*v15)
  {
    v32 = 261;
    v30 = a3;
    v31 = a4;
    v16 = v15;
    mlir::Diagnostic::operator<<((v15 + 1), &v30);
    v15 = v16;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "' failed to satisfy constraint: ui64 elements attribute of shape {4}");
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v39;
      v20 = __p;
      if (v39 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v39 = v18;
      operator delete(v20);
    }

    v21 = v36;
    if (v36)
    {
      v22 = v37;
      v23 = v36;
      if (v37 != v36)
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
        v23 = v36;
      }

      v37 = v21;
      operator delete(v23);
    }

    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v14;
}

BOOL mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(uint64_t *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v59[0] = a2;
    v59[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v59);
    if (mlir::Type::isF16(&isSplat) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 4))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v51 = a2;
      v52 = v11;
      if (mlir::ElementsAttr::getShapedType(&v51))
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v56 = a2;
        v57 = v12;
        mlir::ShapedType::getShape(&v56);
        if (v13 == 4)
        {
          return 1;
        }

        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v54[0] = a2;
        v54[1] = v14;
        mlir::ShapedType::getShape(v54);
        if (v15 == 5)
        {
          return 1;
        }
      }
    }
  }

  v53 = 261;
  v51 = a3;
  v52 = a4;
  mlir::Operation::emitOpError(a1, &v51, v59);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v59, " #");
  if (*v17)
  {
    v19 = v17 + 24;
    v18 = *(v17 + 24);
    LODWORD(v56) = 5;
    v57 = a5;
    v20 = *(v17 + 32);
    v21 = &v56;
    if (v20 >= *(v17 + 36))
    {
      if (v18 <= &v56 && v18 + 24 * v20 > &v56)
      {
        v46 = &v56 - v18;
        v47 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, (v17 + 40), v20 + 1, 24);
        v17 = v47;
        v18 = *(v47 + 24);
        v21 = &v46[v18];
      }

      else
      {
        v44 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, (v17 + 40), v20 + 1, 24);
        v17 = v44;
        v18 = *(v44 + 24);
        v21 = &v56;
      }
    }

    v22 = v18 + 24 * *(v17 + 32);
    v23 = *v21;
    *(v22 + 16) = v21[2];
    *v22 = v23;
    v24 = (*(v17 + 32) + 1);
    *(v17 + 32) = v24;
    if (*v17)
    {
      LODWORD(v56) = 3;
      v57 = " must be 4D/5D memref of 16-bit float or 8-bit signed integer or 8-bit unsigned integer or 4-bit signed integer values, but got ";
      v58 = 128;
      v25 = *(v17 + 24);
      v26 = &v56;
      if (v24 >= *(v17 + 36))
      {
        if (v25 <= &v56 && v25 + 24 * v24 > &v56)
        {
          v48 = &v56 - v25;
          v49 = v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19, (v17 + 40), v24 + 1, 24);
          v17 = v49;
          v25 = *(v49 + 24);
          v26 = &v48[v25];
        }

        else
        {
          v45 = v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19, (v17 + 40), v24 + 1, 24);
          v17 = v45;
          v25 = *(v45 + 24);
          v26 = &v56;
        }
      }

      v27 = v25 + 24 * *(v17 + 32);
      v28 = *v26;
      *(v27 + 16) = v26[2];
      *v27 = v28;
      ++*(v17 + 32);
      if (*v17)
      {
        v29 = &v56;
        v30 = v17;
        mlir::DiagnosticArgument::DiagnosticArgument(&v56, a2);
        v17 = v30;
        v31 = *(v30 + 32);
        v32 = *(v30 + 24);
        if (v31 >= *(v30 + 36))
        {
          if (v32 <= &v56 && v32 + 24 * v31 > &v56)
          {
            v50 = &v56 - v32;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v19, (v30 + 40), v31 + 1, 24);
            v17 = v30;
            v32 = *(v30 + 24);
            v29 = &v50[v32];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v19, (v30 + 40), v31 + 1, 24);
            v17 = v30;
            v32 = *(v30 + 24);
            v29 = &v56;
          }
        }

        v33 = v32 + 24 * *(v17 + 32);
        v34 = *v29;
        *(v33 + 16) = v29[2];
        *v33 = v34;
        ++*(v17 + 32);
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
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

    v35 = __p;
    if (__p)
    {
      v36 = v65;
      v37 = __p;
      if (v65 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v65 = v35;
      operator delete(v37);
    }

    v38 = v62;
    if (v62)
    {
      v39 = v63;
      v40 = v62;
      if (v63 != v62)
      {
        do
        {
          v42 = *--v39;
          v41 = v42;
          *v39 = 0;
          if (v42)
          {
            MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
          }
        }

        while (v39 != v38);
        v40 = v62;
      }

      v63 = v38;
      operator delete(v40);
    }

    if (v60 != &v61)
    {
      free(v60);
    }
  }

  return v16;
}

BOOL mlir::anec::__mlir_ods_local_type_constraint_ANECOps2(uint64_t *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v59[0] = a2;
    v59[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v59);
    if (mlir::Type::isF16(&isSplat) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 4))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v51 = a2;
      v52 = v11;
      if (mlir::ElementsAttr::getShapedType(&v51))
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v56 = a2;
        v57 = v12;
        mlir::ShapedType::getShape(&v56);
        if (v13 == 4)
        {
          return 1;
        }

        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v54[0] = a2;
        v54[1] = v14;
        mlir::ShapedType::getShape(v54);
        if (v15 == 5)
        {
          return 1;
        }
      }
    }
  }

  v53 = 261;
  v51 = a3;
  v52 = a4;
  mlir::Operation::emitOpError(a1, &v51, v59);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v59, " #");
  if (*v17)
  {
    v19 = v17 + 24;
    v18 = *(v17 + 24);
    LODWORD(v56) = 5;
    v57 = a5;
    v20 = *(v17 + 32);
    v21 = &v56;
    if (v20 >= *(v17 + 36))
    {
      if (v18 <= &v56 && v18 + 24 * v20 > &v56)
      {
        v46 = &v56 - v18;
        v47 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, (v17 + 40), v20 + 1, 24);
        v17 = v47;
        v18 = *(v47 + 24);
        v21 = &v46[v18];
      }

      else
      {
        v44 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, (v17 + 40), v20 + 1, 24);
        v17 = v44;
        v18 = *(v44 + 24);
        v21 = &v56;
      }
    }

    v22 = v18 + 24 * *(v17 + 32);
    v23 = *v21;
    *(v22 + 16) = v21[2];
    *v22 = v23;
    v24 = (*(v17 + 32) + 1);
    *(v17 + 32) = v24;
    if (*v17)
    {
      LODWORD(v56) = 3;
      v57 = " must be 4D/5D memref of 16-bit float or 16-bit unsigned integer or 16-bit signed integer or 8-bit unsigned integer or 8-bit signed integer or 4-bit signed integer values, but got ";
      v58 = 180;
      v25 = *(v17 + 24);
      v26 = &v56;
      if (v24 >= *(v17 + 36))
      {
        if (v25 <= &v56 && v25 + 24 * v24 > &v56)
        {
          v48 = &v56 - v25;
          v49 = v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19, (v17 + 40), v24 + 1, 24);
          v17 = v49;
          v25 = *(v49 + 24);
          v26 = &v48[v25];
        }

        else
        {
          v45 = v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19, (v17 + 40), v24 + 1, 24);
          v17 = v45;
          v25 = *(v45 + 24);
          v26 = &v56;
        }
      }

      v27 = v25 + 24 * *(v17 + 32);
      v28 = *v26;
      *(v27 + 16) = v26[2];
      *v27 = v28;
      ++*(v17 + 32);
      if (*v17)
      {
        v29 = &v56;
        v30 = v17;
        mlir::DiagnosticArgument::DiagnosticArgument(&v56, a2);
        v17 = v30;
        v31 = *(v30 + 32);
        v32 = *(v30 + 24);
        if (v31 >= *(v30 + 36))
        {
          if (v32 <= &v56 && v32 + 24 * v31 > &v56)
          {
            v50 = &v56 - v32;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v19, (v30 + 40), v31 + 1, 24);
            v17 = v30;
            v32 = *(v30 + 24);
            v29 = &v50[v32];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v19, (v30 + 40), v31 + 1, 24);
            v17 = v30;
            v32 = *(v30 + 24);
            v29 = &v56;
          }
        }

        v33 = v32 + 24 * *(v17 + 32);
        v34 = *v29;
        *(v33 + 16) = v29[2];
        *v33 = v34;
        ++*(v17 + 32);
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
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

    v35 = __p;
    if (__p)
    {
      v36 = v65;
      v37 = __p;
      if (v65 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v65 = v35;
      operator delete(v37);
    }

    v38 = v62;
    if (v62)
    {
      v39 = v63;
      v40 = v62;
      if (v63 != v62)
      {
        do
        {
          v42 = *--v39;
          v41 = v42;
          *v39 = 0;
          if (v42)
          {
            MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
          }
        }

        while (v39 != v38);
        v40 = v62;
      }

      v63 = v38;
      operator delete(v40);
    }

    if (v60 != &v61)
    {
      free(v60);
    }
  }

  return v16;
}

void mlir::anec::AveragePool::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v24 = a3;
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 24), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v28);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 16), a5);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v28);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 8), a6);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v28);
  if (a7)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&__src, **(*(a2 + 8) + 96), a7);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v28);
  }

  __src = v29;
  v28 = 0x200000000;
  v13 = *a1;
  v14 = *a2;
  mlir::ValueRange::ValueRange(v26, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v17 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v25, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::AveragePool>::inferReturnTypes(v13, v14, 1, v26[0], v26[1], Dictionary, v17, v18, v25[0], v25[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v19);
  }

  v20 = __src;
  v21 = v28;
  v22 = *(a2 + 72);
  v23 = v22 + v28;
  if (v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v23, 8);
    LODWORD(v22) = *(a2 + 72);
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v22), v20, 8 * v21);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v21;
  if (__src != v29)
  {
    free(__src);
  }
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::AveragePool>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = v31;
  v30 = 0x600000000;
  v27 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v27, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v30;
      if (v30 >= HIDWORD(v30))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v30;
      }

      *(v29 + v21) = RankPromotionTypeForANE;
      v22 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      v17 = v28 + 1;
      v28 = v17;
      if (v17 == a5)
      {
        v25 = v29;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v25 = v31;
LABEL_13:
    mlir::ValueRange::ValueRange(&v27, v25, v22);
    result = mlir::anec::AveragePool::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v27, v28, a11);
  }

  if (v29 != v31)
  {
    v26 = result;
    free(v29);
    return v26;
  }

  return result;
}

void mlir::anec::AveragePool::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), a6 + v12, 16);
    LODWORD(v12) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    LODWORD(v12) = *(a2 + 120);
  }

  *(a2 + 120) = v12 + a6;
  __src = v27;
  v26 = 0x200000000;
  v13 = *a1;
  v14 = *a2;
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v17 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v24, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::AveragePool>::inferReturnTypes(v13, v14, 1, a3, a4, Dictionary, v17, v18, v24[0], v24[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v19);
  }

  v20 = __src;
  v21 = v26;
  v22 = *(a2 + 72);
  v23 = v22 + v26;
  if (v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v23, 8);
    LODWORD(v22) = *(a2 + 72);
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v22), v20, 8 * v21);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v21;
  if (__src != v27)
  {
    free(__src);
  }
}

BOOL mlir::anec::AveragePool::verifyInvariantsImpl(mlir::Operation **this)
{
  v47 = *MEMORY[0x1E69E9840];
  v38[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v38);
  if (!v3)
  {
LABEL_7:
    v36[0] = "requires attribute 'ksize'";
    v37 = 259;
    mlir::OpState::emitOpError(this, v36, v38);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 != 1)
    {
      return v7;
    }

    if (v45 != &v46)
    {
      free(v45);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v44;
      v10 = __p;
      if (v44 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v44 = v8;
      operator delete(v10);
    }

    v11 = v41;
    if (!v41)
    {
      goto LABEL_65;
    }

    v12 = v42;
    v13 = v41;
    if (v42 == v41)
    {
      goto LABEL_64;
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
    goto LABEL_63;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(v4) == **(*(*this + 6) + 96))
    {
      v5 = *(v4 + 1);
    }

    v4 = (v4 + 16);
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_27:
    v36[0] = "requires attribute 'padding'";
    v37 = 259;
    mlir::OpState::emitOpError(this, v36, v38);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 != 1)
    {
      return v7;
    }

    if (v45 != &v46)
    {
      free(v45);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v44;
      v21 = __p;
      if (v44 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v44 = v19;
      operator delete(v21);
    }

    v11 = v41;
    if (!v41)
    {
      goto LABEL_65;
    }

    v22 = v42;
    v13 = v41;
    if (v42 == v41)
    {
      goto LABEL_64;
    }

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

    while (v22 != v11);
LABEL_63:
    v13 = v41;
    goto LABEL_64;
  }

  v16 = 0;
  v17 = *(v4 + 1);
  while (1)
  {
    v18 = (v4 + v16);
    if (ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v16)) == *(*(*(*this + 6) + 96) + 16))
    {
      break;
    }

    v16 += 16;
    if (v6 == v16)
    {
      goto LABEL_27;
    }
  }

  v25 = v6 - v16;
  if (!v25)
  {
LABEL_47:
    v36[0] = "requires attribute 'stride'";
    v37 = 259;
    mlir::OpState::emitOpError(this, v36, v38);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 != 1)
    {
      return v7;
    }

    if (v45 != &v46)
    {
      free(v45);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v44;
      v29 = __p;
      if (v44 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v44 = v27;
      operator delete(v29);
    }

    v11 = v41;
    if (v41)
    {
      v30 = v42;
      v13 = v41;
      if (v42 != v41)
      {
        do
        {
          v32 = *--v30;
          v31 = v32;
          *v30 = 0;
          if (v32)
          {
            MEMORY[0x1AC55A040](v31, 0x1000C8077774924);
          }
        }

        while (v30 != v11);
        goto LABEL_63;
      }

LABEL_64:
      v42 = v11;
      operator delete(v13);
    }

LABEL_65:
    if (v39 != &v40)
    {
      free(v39);
    }

    return v7;
  }

  v26 = v18[1];
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v18) != *(*(*(*this + 6) + 96) + 24))
  {
    v18 += 2;
    v25 -= 16;
    if (!v25)
    {
      goto LABEL_47;
    }
  }

  if (!mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v18[1], "stride", 6) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps9(*this, v26, "padding", 7) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v17, "ksize", 5) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, v5, "inc_pad", 7) || !mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v34 = *this - 16;
  }

  else
  {
    v34 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v34, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(uint64_t *a1, const char *a2, const char *a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v30 = a2;
  v31 = v8;
  Type = mlir::ElementsAttr::getType(&v30);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  Shape = mlir::ShapedType::getShape(v33);
  v42 = 3;
  if (v12 == 1 && *Shape == v42)
  {
    v27 = a2;
    v28[0] = mlir::ArrayAttr::getValue(&v27);
    v28[1] = v13;
    isSplat = mlir::ElementsAttr::isSplat(v28);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v32 = 257;
  mlir::Operation::emitOpError(a1, &v30, v33);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v33, "attribute '");
  if (*v15)
  {
    v32 = 261;
    v30 = a3;
    v31 = a4;
    v16 = v15;
    mlir::Diagnostic::operator<<((v15 + 1), &v30);
    v15 = v16;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "' failed to satisfy constraint: ui64 elements attribute of shape {3}");
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v39;
      v20 = __p;
      if (v39 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v39 = v18;
      operator delete(v20);
    }

    v21 = v36;
    if (v36)
    {
      v22 = v37;
      v23 = v36;
      if (v37 != v36)
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
        v23 = v36;
      }

      v37 = v21;
      operator delete(v23);
    }

    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v14;
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps9(uint64_t *a1, const char *a2, const char *a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v30 = a2;
  v31 = v8;
  Type = mlir::ElementsAttr::getType(&v30);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  Shape = mlir::ShapedType::getShape(v33);
  v42 = 6;
  if (v12 == 1 && *Shape == v42)
  {
    v27 = a2;
    v28[0] = mlir::ArrayAttr::getValue(&v27);
    v28[1] = v13;
    isSplat = mlir::ElementsAttr::isSplat(v28);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v32 = 257;
  mlir::Operation::emitOpError(a1, &v30, v33);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v33, "attribute '");
  if (*v15)
  {
    v32 = 261;
    v30 = a3;
    v31 = a4;
    v16 = v15;
    mlir::Diagnostic::operator<<((v15 + 1), &v30);
    v15 = v16;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "' failed to satisfy constraint: ui64 elements attribute of shape {6}");
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v39;
      v20 = __p;
      if (v39 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v39 = v18;
      operator delete(v20);
    }

    v21 = v36;
    if (v36)
    {
      v22 = v37;
      v23 = v36;
      if (v37 != v36)
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
        v23 = v36;
      }

      v37 = v21;
      operator delete(v23);
    }

    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v14;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::BatchNorm>::inferReturnTypes(mlir::Float16Type *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[6] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = v37;
  v36 = 0x600000000;
  v33 = a4;
  if (a5)
  {
    v16 = 0;
    while (1)
    {
      v17 = (*(mlir::ValueRange::dereference_iterator(&v33, v16) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8))
      {
        break;
      }

      v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
      if (!v17)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v17, v18);
      v20 = v36;
      if (v36 >= HIDWORD(v36))
      {
        v22 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 8);
        RankPromotionTypeForANE = v22;
        v20 = v36;
      }

      *(v35 + v20) = RankPromotionTypeForANE;
      v21 = (v36 + 1);
      LODWORD(v36) = v36 + 1;
      v16 = v34 + 1;
      v34 = v16;
      if (v16 == a5)
      {
        v24 = v35;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v24 = v37;
LABEL_13:
    mlir::ValueRange::ValueRange(&v33, v24, v21);
    result = mlir::anec::InstanceNorm::inferPromotedReturnTypes(a1, v25, v26, a4, a5, v27, v28, v29, v31, v32, a11);
  }

  if (v35 != v37)
  {
    v30 = result;
    free(v35);
    return v30;
  }

  return result;
}

void mlir::anec::BatchNorm::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v29 = a4;
  v30 = a3;
  v27 = a6;
  v28 = a5;
  v26 = a7;
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  v11 = **(*(a2 + 8) + 96);
  F32Type = mlir::Builder::getF32Type(a1, v12);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a8);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, v11, FloatAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v34);
  __src = v35;
  v34 = 0x200000000;
  v15 = *a1;
  v16 = *a2;
  mlir::ValueRange::ValueRange(v32, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v19 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v31, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::BatchNorm>::inferReturnTypes(v15, v16, 1, v32[0], v32[1], Dictionary, v19, v20, v31[0], v31[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v21);
  }

  v22 = __src;
  v23 = v34;
  v24 = *(a2 + 72);
  v25 = v24 + v34;
  if (v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v25, 8);
    LODWORD(v24) = *(a2 + 72);
  }

  if (v23)
  {
    memcpy((*(a2 + 64) + 8 * v24), v22, 8 * v23);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + v23;
  if (__src != v35)
  {
    free(__src);
  }
}

BOOL mlir::anec::BatchNorm::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x1E69E9840];
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v20);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != **(*(*this + 6) + 96))
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v4[1], "epsilon", 7) && mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) && mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) && mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'epsilon'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v26;
        v9 = __p;
        if (v26 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v26 = v7;
        operator delete(v9);
      }

      v10 = v23;
      if (v23)
      {
        v11 = v24;
        v12 = v23;
        if (v24 != v23)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
            }
          }

          while (v11 != v10);
          v12 = v23;
        }

        v24 = v10;
        operator delete(v12);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v6;
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(uint64_t *a1, const char *a2, const char *a3, const char *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v21[0] = a2;
    v6 = a1;
    v23[0] = mlir::AffineMapAttr::getValue(v21);
    isF32 = mlir::Type::isF32(v23);
    a1 = v6;
    if (isF32)
    {
      return 1;
    }
  }

  v22 = 257;
  mlir::Operation::emitOpError(a1, v21, v23);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "attribute '");
  if (*v9)
  {
    v22 = 261;
    v21[0] = a3;
    v21[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v21);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: 32-bit float attribute");
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v29;
      v14 = __p;
      if (v29 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v29 = v12;
      operator delete(v14);
    }

    v15 = v26;
    if (v26)
    {
      v16 = v27;
      v17 = v26;
      if (v27 != v26)
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
        v17 = v26;
      }

      v27 = v15;
      operator delete(v17);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v8;
}

BOOL mlir::anec::__mlir_ods_local_type_constraint_ANECOps3(uint64_t *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v10 = a1;
    v52[0] = a2;
    v52[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v9 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v52);
    isF16 = mlir::Type::isF16(&isSplat);
    a1 = v10;
    if (isF16)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v45 = a2;
      v46 = v12;
      ShapedType = mlir::ElementsAttr::getShapedType(&v45);
      a1 = v10;
      if (ShapedType)
      {
        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v50 = a2;
        v51 = v14;
        mlir::ShapedType::getShape(&v50);
        if (v15 == 4)
        {
          return 1;
        }

        v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v48[0] = a2;
        v48[1] = v16;
        mlir::ShapedType::getShape(v48);
        a1 = v10;
        if (v17 == 5)
        {
          return 1;
        }
      }
    }
  }

  v47 = 261;
  v45 = a3;
  v46 = a4;
  mlir::Operation::emitOpError(a1, &v45, v52);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v52, " #");
  if (*v19)
  {
    v20 = *(v19 + 24);
    LODWORD(v50) = 5;
    v51 = a5;
    v21 = *(v19 + 32);
    v22 = &v50;
    if (v21 >= *(v19 + 36))
    {
      if (v20 <= &v50 && v20 + 24 * v21 > &v50)
      {
        v42 = &v50 - v20;
        v43 = v19;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 24, (v19 + 40), v21 + 1, 24);
        v19 = v43;
        v20 = *(v43 + 24);
        v22 = &v42[v20];
      }

      else
      {
        v41 = v19;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 24, (v19 + 40), v21 + 1, 24);
        v19 = v41;
        v20 = *(v41 + 24);
        v22 = &v50;
      }
    }

    v23 = v20 + 24 * *(v19 + 32);
    v24 = *v22;
    *(v23 + 16) = v22[2];
    *v23 = v24;
    ++*(v19 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v19, " must be 4D/5D memref of 16-bit float values, but got ");
  if (*v25)
  {
    v26 = &v50;
    v27 = v25;
    mlir::DiagnosticArgument::DiagnosticArgument(&v50, a2);
    v25 = v27;
    v28 = *(v27 + 24);
    v29 = *(v27 + 32);
    if (v29 >= *(v27 + 36))
    {
      if (v28 <= &v50 && v28 + 24 * v29 > &v50)
      {
        v44 = &v50 - v28;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v27 + 24, (v27 + 40), v29 + 1, 24);
        v25 = v27;
        v28 = *(v27 + 24);
        v26 = &v44[v28];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v27 + 24, (v27 + 40), v29 + 1, 24);
        v25 = v27;
        v28 = *(v27 + 24);
        v26 = &v50;
      }
    }

    v30 = v28 + 24 * *(v25 + 32);
    v31 = *v26;
    *(v30 + 16) = v26[2];
    *v30 = v31;
    ++*(v25 + 32);
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v52[0])
  {
    mlir::InFlightDiagnostic::report(v52);
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v58;
      v34 = __p;
      if (v58 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v58 = v32;
      operator delete(v34);
    }

    v35 = v55;
    if (v55)
    {
      v36 = v56;
      v37 = v55;
      if (v56 != v55)
      {
        do
        {
          v39 = *--v36;
          v38 = v39;
          *v36 = 0;
          if (v39)
          {
            MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
          }
        }

        while (v36 != v35);
        v37 = v55;
      }

      v56 = v35;
      operator delete(v37);
    }

    if (v53 != &v54)
    {
      free(v53);
    }
  }

  return v18;
}

void mlir::anec::BatchToSpace::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v18 = a3;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v22);
  __src = v23;
  v22 = 0x200000000;
  v7 = *a1;
  v8 = *a2;
  mlir::ValueRange::ValueRange(v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v19, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::BatchToSpace>::inferReturnTypes(v7, v8, 1, v20[0], v20[1], Dictionary, v11, v12, v19[0], v19[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v13);
  }

  v14 = __src;
  v15 = v22;
  v16 = *(a2 + 72);
  v17 = v16 + v22;
  if (v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v17, 8);
    LODWORD(v16) = *(a2 + 72);
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v15);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v23)
  {
    free(__src);
  }
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::BatchToSpace>::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = v31;
  v30 = 0x600000000;
  v27 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v27, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v30;
      if (v30 >= HIDWORD(v30))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v30;
      }

      *(v29 + v21) = RankPromotionTypeForANE;
      v22 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      v17 = v28 + 1;
      v28 = v17;
      if (v17 == a5)
      {
        v25 = v29;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v25 = v31;
LABEL_13:
    mlir::ValueRange::ValueRange(&v27, v25, v22);
    result = mlir::anec::BatchToSpace::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v27, v28, a11);
  }

  if (v29 != v31)
  {
    v26 = result;
    free(v29);
    return v26;
  }

  return result;
}

BOOL mlir::anec::BatchToSpace::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x1E69E9840];
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v20);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != **(*(*this + 6) + 96))
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v4[1], "factors", 7) && mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'factors'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v26;
        v9 = __p;
        if (v26 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v26 = v7;
        operator delete(v9);
      }

      v10 = v23;
      if (v23)
      {
        v11 = v24;
        v12 = v23;
        if (v24 != v23)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
            }
          }

          while (v11 != v10);
          v12 = v23;
        }

        v24 = v10;
        operator delete(v12);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v6;
}

BOOL mlir::anec::Cast::verifyInvariantsImpl(uint64_t **this)
{
  v72 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || ((v63[0] = *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, v63[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8), v5 = *(*mlir::ElementsAttr::isSplat(v63) + 136), v5 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v6 = v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v6 = 1), !v6 ? (v7 = v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v7 = 1), !v7 ? (v8 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v8 = 1), !v8 ? (v9 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v9 = 1), !v9 ? (v10 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v10 = 1), !v10 ? (v11 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v11 = 1), !v11 ? (v12 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v12 = 1), !v12 ? (v13 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v13 = 1), !v13 ? (v14 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v14 = 1), !v14 ? (v15 = v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v15 = 1), !v15 ? (v16 = v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v16 = 1), !v16 ? (v17 = v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v17 = 1), !v17 ? (v18 = v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v18 = 1), !v18 ? (v19 = v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v19 = 1), !v19 ? (v20 = v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) : (v20 = 1), !v20 ? (v21 = v5 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id) : (v21 = 1), !v21 ? (v22 = v5 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id) : (v22 = 1), !v22 || (v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8), v57 = v3, v58 = v23, !mlir::ElementsAttr::getShapedType(&v57)) || (v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8), v61 = v3, v62 = v24, mlir::ShapedType::getShape(&v61), v25 != 4) && (v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8), v60[0] = v3, v60[1] = v26, mlir::ShapedType::getShape(v60), v27 != 5)))
  {
    v59 = 261;
    v57 = "operand";
    v58 = 7;
    mlir::Operation::emitOpError(v2, &v57, v63);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v63, " #");
    if (*v28)
    {
      v29 = *(v28 + 24);
      LODWORD(v61) = 5;
      v62 = 0;
      v30 = *(v28 + 32);
      v31 = &v61;
      if (v30 >= *(v28 + 36))
      {
        if (v29 <= &v61 && v29 + 24 * v30 > &v61)
        {
          v54 = &v61 - v29;
          v55 = v28;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v28 + 24, (v28 + 40), v30 + 1, 24);
          v28 = v55;
          v29 = *(v55 + 24);
          v31 = &v54[v29];
        }

        else
        {
          v53 = v28;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v28 + 24, (v28 + 40), v30 + 1, 24);
          v28 = v53;
          v29 = *(v53 + 24);
          v31 = &v61;
        }
      }

      v32 = v29 + 24 * *(v28 + 32);
      v33 = *v31;
      *(v32 + 16) = *(v31 + 2);
      *v32 = v33;
      ++*(v28 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v28, " must be 4D/5D memref of floating-point or integer values, but got ");
    if (*v34)
    {
      v35 = &v61;
      v36 = v34;
      mlir::DiagnosticArgument::DiagnosticArgument(&v61, v3);
      v34 = v36;
      v37 = *(v36 + 24);
      v38 = *(v36 + 32);
      if (v38 >= *(v36 + 36))
      {
        if (v37 <= &v61 && v37 + 24 * v38 > &v61)
        {
          v56 = &v61 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v36 + 24, (v36 + 40), v38 + 1, 24);
          v34 = v36;
          v37 = *(v36 + 24);
          v35 = &v56[v37];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v36 + 24, (v36 + 40), v38 + 1, 24);
          v34 = v36;
          v37 = *(v36 + 24);
          v35 = &v61;
        }
      }

      v39 = v37 + 24 * *(v34 + 32);
      v40 = *v35;
      *(v39 + 16) = *(v35 + 2);
      *v39 = v40;
      ++*(v34 + 32);
    }

    v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
    if (v63[0])
    {
      mlir::InFlightDiagnostic::report(v63);
    }

    if (v71 == 1)
    {
      if (v70 != &v71)
      {
        free(v70);
      }

      v42 = __p;
      if (__p)
      {
        v43 = v69;
        v44 = __p;
        if (v69 != __p)
        {
          do
          {
            v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
          }

          while (v43 != v42);
          v44 = __p;
        }

        v69 = v42;
        operator delete(v44);
      }

      v45 = v66;
      if (v66)
      {
        v46 = v67;
        v47 = v66;
        if (v67 != v66)
        {
          do
          {
            v49 = *--v46;
            v48 = v49;
            *v46 = 0;
            if (v49)
            {
              MEMORY[0x1AC55A040](v48, 0x1000C8077774924);
            }
          }

          while (v46 != v45);
          v47 = v66;
        }

        v67 = v45;
        operator delete(v47);
      }

      if (v64 != &v65)
      {
        free(v64);
      }
    }

    if (!v41)
    {
      return 0;
    }
  }

  if (*(*this + 9))
  {
    v50 = *this - 2;
  }

  else
  {
    v50 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35[6] = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = v35;
  v34 = 0x600000000;
  v31 = a4;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v31, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      v19 = v34;
      if (v34 >= HIDWORD(v34))
      {
        v21 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v34 + 1, 8);
        RankPromotionTypeForANE = v21;
        v19 = v34;
      }

      *(v33 + v19) = RankPromotionTypeForANE;
      v20 = (v34 + 1);
      LODWORD(v34) = v34 + 1;
      v15 = v32 + 1;
      v32 = v15;
      if (v15 == a5)
      {
        v23 = v33;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v20 = 0;
    v23 = v35;
LABEL_13:
    v24 = mlir::ValueRange::ValueRange(&v31, v23, v20);
    result = mlir::anec::inferElementwiseReturnTypes(v24, v25, v26, a4, a5, v27, v28, v29, v31, v32, a11);
  }

  if (v33 != v35)
  {
    v30 = result;
    free(v33);
    return v30;
  }

  return result;
}

void mlir::anec::Ceil::build(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), a6 + v12, 16);
    LODWORD(v12) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    LODWORD(v12) = *(a2 + 120);
  }

  *(a2 + 120) = v12 + a6;
  __src = v27;
  v26 = 0x200000000;
  v13 = *a1;
  v14 = *a2;
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v17 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(v13, v14, 1, a3, a4, Dictionary, v17, v18, v24[0], v24[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v19);
  }

  v20 = __src;
  v21 = v26;
  v22 = *(a2 + 72);
  v23 = v22 + v26;
  if (v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v23, 8);
    LODWORD(v22) = *(a2 + 72);
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v22), v20, 8 * v21);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v21;
  if (__src != v27)
  {
    free(__src);
  }
}

void mlir::anec::ChannelToSpace::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v18 = a3;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v22);
  __src = v23;
  v22 = 0x200000000;
  v7 = *a1;
  v8 = *a2;
  mlir::ValueRange::ValueRange(v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v19, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ChannelToSpace>::inferReturnTypes(v7, v8, 1, v20[0], v20[1], Dictionary, v11, v12, v19[0], v19[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v13);
  }

  v14 = __src;
  v15 = v22;
  v16 = *(a2 + 72);
  v17 = v16 + v22;
  if (v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v17, 8);
    LODWORD(v16) = *(a2 + 72);
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v15);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v23)
  {
    free(__src);
  }
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ChannelToSpace>::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = v31;
  v30 = 0x600000000;
  v27 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v27, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v30;
      if (v30 >= HIDWORD(v30))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v30;
      }

      *(v29 + v21) = RankPromotionTypeForANE;
      v22 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      v17 = v28 + 1;
      v28 = v17;
      if (v17 == a5)
      {
        v25 = v29;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v25 = v31;
LABEL_13:
    mlir::ValueRange::ValueRange(&v27, v25, v22);
    result = mlir::anec::ChannelToSpace::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v27, v28, a11);
  }

  if (v29 != v31)
  {
    v26 = result;
    free(v29);
    return v26;
  }

  return result;
}

void mlir::anec::ClampedRelu::build(mlir::Float16Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v28 = a3;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  v9 = *(*(*(a2 + 8) + 96) + 8);
  F16Type = mlir::Builder::getF16Type(a1, v10);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F16Type, a4);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, v9, FloatAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v32);
  v13 = **(*(a2 + 8) + 96);
  v15 = mlir::Builder::getF16Type(a1, v14);
  v16 = mlir::Builder::getFloatAttr(a1, v15, a5);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, v13, v16);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v32);
  __src = v33;
  v32 = 0x200000000;
  v17 = *a1;
  v18 = *a2;
  mlir::ValueRange::ValueRange(v30, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v21 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v29, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(v17, v18, 1, v30[0], v30[1], Dictionary, v21, v22, v29[0], v29[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v23);
  }

  v24 = __src;
  v25 = v32;
  v26 = *(a2 + 72);
  v27 = v26 + v32;
  if (v27 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v27, 8);
    LODWORD(v26) = *(a2 + 72);
  }

  if (v25)
  {
    memcpy((*(a2 + 64) + 8 * v26), v24, 8 * v25);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + v25;
  if (__src != v33)
  {
    free(__src);
  }
}

BOOL mlir::anec::ClampedRelu::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x1E69E9840];
  v27[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v27);
  if (!v3)
  {
LABEL_5:
    v25[0] = "requires attribute 'max_value'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v33;
      v9 = __p;
      if (v33 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v33 = v7;
      operator delete(v9);
    }

    v10 = v30;
    if (v30)
    {
      v11 = v31;
      v12 = v30;
      if (v31 != v30)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
LABEL_41:
        v12 = v30;
      }

LABEL_42:
      v31 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v28 != &v29)
    {
      free(v28);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != **(*(*this + 6) + 96))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v25[0] = "requires attribute 'min_value'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v33;
      v18 = __p;
      if (v33 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v33 = v16;
      operator delete(v18);
    }

    v10 = v30;
    if (v30)
    {
      v19 = v31;
      v12 = v30;
      if (v31 != v30)
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

        while (v19 != v10);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = v4[1];
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  if (!mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v4[1], "min_value", 9) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v15, "max_value", 9) || !mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v22 = *this - 16;
  }

  else
  {
    v22 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(uint64_t *a1, const char *a2, const char *a3, const char *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v21[0] = a2;
    v6 = a1;
    v23[0] = mlir::AffineMapAttr::getValue(v21);
    isF16 = mlir::Type::isF16(v23);
    a1 = v6;
    if (isF16)
    {
      return 1;
    }
  }

  v22 = 257;
  mlir::Operation::emitOpError(a1, v21, v23);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "attribute '");
  if (*v9)
  {
    v22 = 261;
    v21[0] = a3;
    v21[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v21);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: 16-bit float attribute");
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v29;
      v14 = __p;
      if (v29 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v29 = v12;
      operator delete(v14);
    }

    v15 = v26;
    if (v26)
    {
      v16 = v27;
      v17 = v26;
      if (v27 != v26)
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
        v17 = v26;
      }

      v27 = v15;
      operator delete(v17);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v8;
}

uint64_t mlir::anec::Concat::getInterleaveAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Concat>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = v31;
  v30 = 0x600000000;
  v27 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v27, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v30;
      if (v30 >= HIDWORD(v30))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v30;
      }

      *(v29 + v21) = RankPromotionTypeForANE;
      v22 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      v17 = v28 + 1;
      v28 = v17;
      if (v17 == a5)
      {
        v25 = v29;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v25 = v31;
LABEL_13:
    mlir::ValueRange::ValueRange(&v27, v25, v22);
    result = mlir::anec::Concat::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v27, v28, a11);
  }

  if (v29 != v31)
  {
    v26 = result;
    free(v29);
    return v26;
  }

  return result;
}

void mlir::anec::Concat::build(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v31[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  v10 = **(*(a2 + 8) + 96);
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a5);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, v10, IntegerAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v30);
  if (a6)
  {
    v14 = *(*(*(a2 + 8) + 96) + 8);
    UnitAttr = mlir::Builder::getUnitAttr(a1, v13);
    ZinMirCacheTensors::ZinMirCacheTensors(&__src, v14, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v30);
  }

  __src = v31;
  v30 = 0x200000000;
  v16 = *a1;
  v17 = *a2;
  mlir::ValueRange::ValueRange(v28, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v20 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v27, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Concat>::inferReturnTypes(v16, v17, 1, v28[0], v28[1], Dictionary, v20, v21, v27[0], v27[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v22);
  }

  v23 = __src;
  v24 = v30;
  v25 = *(a2 + 72);
  v26 = v25 + v30;
  if (v26 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v26, 8);
    LODWORD(v25) = *(a2 + 72);
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v25), v23, 8 * v24);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + v24;
  if (__src != v31)
  {
    free(__src);
  }
}

uint64_t mlir::anec::Concat::verifyInvariantsImpl(mlir::Operation **this)
{
  v98 = *MEMORY[0x1E69E9840];
  v89[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v89);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (1)
    {
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
      v7 = *this;
      if (CompressedBytes == **(*(*this + 6) + 96))
      {
        break;
      }

      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 1);
    for (i = 0; v5; v5 -= 16)
    {
      v25 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
      v7 = *this;
      if (v25 == *(*(*(*this + 6) + 96) + 8))
      {
        i = *(v4 + 1);
      }

      v4 = (v4 + 16);
    }

    if (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(v7, v17, "axis", 4) && mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, i, "interleave", 0xA))
    {
      v19 = *this;
      if ((*(*this + 46) & 0x80) != 0)
      {
        v20 = *(v19 + 17);
        if (v20)
        {
          v21 = 0;
          v22 = *(v19 + 9);
          v23 = &v97;
          v24 = v91;
          while (1)
          {
            v26 = *this;
            v27 = (*(*(v22 + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
            if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
            {
              break;
            }

            v28 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
            v89[0] = v27;
            v89[1] = v28;
            isSplat = mlir::ElementsAttr::isSplat(v89);
            if (!mlir::Type::isF16(&isSplat) && !mlir::Type::isSignedInteger(&isSplat, 8) && !mlir::Type::isUnsignedInteger(&isSplat, 8) && !mlir::Type::isSignedInteger(&isSplat, 4))
            {
              break;
            }

            v29 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
            v81 = v27;
            v82 = v29;
            if (!mlir::ElementsAttr::getShapedType(&v81))
            {
              break;
            }

            v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
            v86 = v27;
            v87 = v30;
            mlir::ShapedType::getShape(&v86);
            if (v31 != 4)
            {
              v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
              v84[0] = v27;
              v84[1] = v32;
              mlir::ShapedType::getShape(v84);
              if (v33 != 5)
              {
                break;
              }
            }

LABEL_31:
            if (++v21 == v20)
            {
              v19 = *this;
              goto LABEL_88;
            }
          }

          v83 = 261;
          v81 = "operand";
          v82 = 7;
          mlir::Operation::emitOpError(v26, &v81, v89);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v89, " #");
          if (!*v34)
          {
LABEL_49:
            v56 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
            if (v89[0])
            {
              mlir::InFlightDiagnostic::report(v89);
            }

            if (v97 == 1)
            {
              if (v96 != v23)
              {
                free(v96);
              }

              v57 = __p;
              if (__p)
              {
                v58 = v95;
                v59 = __p;
                if (v95 != __p)
                {
                  do
                  {
                    v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
                  }

                  while (v58 != v57);
                  v59 = __p;
                }

                v95 = v57;
                operator delete(v59);
              }

              v60 = v92;
              if (v92)
              {
                v61 = v93;
                v62 = v92;
                if (v93 != v92)
                {
                  do
                  {
                    v64 = *--v61;
                    v63 = v64;
                    *v61 = 0;
                    if (v64)
                    {
                      MEMORY[0x1AC55A040](v63, 0x1000C8077774924);
                    }
                  }

                  while (v61 != v60);
                  v62 = v92;
                }

                v93 = v60;
                operator delete(v62);
              }

              if (v90 != v24)
              {
                free(v90);
              }
            }

            if (!v56)
            {
              return 0;
            }

            goto LABEL_31;
          }

          v36 = v34 + 24;
          v35 = *(v34 + 24);
          LODWORD(v86) = 5;
          v87 = v21;
          v37 = *(v34 + 32);
          if (v37 >= *(v34 + 36))
          {
            if (v35 <= &v86 && v35 + 24 * v37 > &v86)
            {
              v67 = v22;
              v68 = v20;
              v69 = v24;
              v70 = v23;
              v71 = &v86 - v35;
              v72 = v34;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v34 + 24, (v34 + 40), v37 + 1, 24);
              v34 = v72;
              v35 = *(v72 + 24);
              v38 = &v71[v35];
              v23 = v70;
              v24 = v69;
              v20 = v68;
              v22 = v67;
LABEL_43:
              v39 = v35 + 24 * *(v34 + 32);
              v40 = *v38;
              *(v39 + 16) = *(v38 + 2);
              *v39 = v40;
              v41 = (*(v34 + 32) + 1);
              *(v34 + 32) = v41;
              if (!*v34)
              {
                goto LABEL_49;
              }

              LODWORD(v86) = 3;
              v87 = " must be variadic of 4D/5D memref of 16-bit float or 8-bit signed integer or 8-bit unsigned integer or 4-bit signed integer values, but got ";
              v88 = 140;
              v42 = *(v34 + 24);
              if (v41 >= *(v34 + 36))
              {
                if (v42 <= &v86 && v42 + 24 * v41 > &v86)
                {
                  v73 = v22;
                  v74 = v20;
                  v75 = v24;
                  v76 = v23;
                  v77 = &v86 - v42;
                  v78 = v34;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v36, (v34 + 40), v41 + 1, 24);
                  v34 = v78;
                  v42 = *(v78 + 24);
                  v43 = &v77[v42];
                  v23 = v76;
                  v24 = v75;
                  v20 = v74;
                  v22 = v73;
LABEL_46:
                  v44 = v42 + 24 * *(v34 + 32);
                  v45 = *v43;
                  *(v44 + 16) = *(v43 + 2);
                  *v44 = v45;
                  ++*(v34 + 32);
                  if (*v34)
                  {
                    v46 = v22;
                    v47 = v20;
                    v48 = v24;
                    v49 = v23;
                    v50 = &v86;
                    v51 = v34;
                    mlir::DiagnosticArgument::DiagnosticArgument(&v86, v27);
                    v34 = v51;
                    v52 = *(v51 + 32);
                    v53 = *(v51 + 24);
                    if (v52 >= *(v51 + 36))
                    {
                      if (v53 <= &v86 && v53 + 24 * v52 > &v86)
                      {
                        v79 = &v86 - v53;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(v36, (v51 + 40), v52 + 1, 24);
                        v34 = v51;
                        v53 = *(v51 + 24);
                        v50 = &v79[v53];
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(v36, (v51 + 40), v52 + 1, 24);
                        v34 = v51;
                        v53 = *(v51 + 24);
                        v50 = &v86;
                      }
                    }

                    v54 = v53 + 24 * *(v34 + 32);
                    v55 = *v50;
                    *(v54 + 16) = *(v50 + 2);
                    *v54 = v55;
                    ++*(v34 + 32);
                    v23 = v49;
                    v24 = v48;
                    v20 = v47;
                    v22 = v46;
                  }

                  goto LABEL_49;
                }

                v66 = v34;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v36, (v34 + 40), v41 + 1, 24);
                v34 = v66;
                v42 = *(v66 + 24);
              }

              v43 = &v86;
              goto LABEL_46;
            }

            v65 = v34;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v34 + 24, (v34 + 40), v37 + 1, 24);
            v34 = v65;
            v35 = *(v65 + 24);
          }

          v38 = &v86;
          goto LABEL_43;
        }
      }

LABEL_88:
      mlir::anec::Concat::verifyInvariantsImpl(v19, this, v89);
      return LOBYTE(v89[0]);
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v81 = "requires attribute 'axis'";
    v83 = 259;
    mlir::OpState::emitOpError(this, &v81, v89);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v89);
    if (v89[0])
    {
      mlir::InFlightDiagnostic::report(v89);
    }

    if (v97 == 1)
    {
      if (v96 != &v97)
      {
        free(v96);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v95;
        v11 = __p;
        if (v95 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v95 = v9;
        operator delete(v11);
      }

      v12 = v92;
      if (v92)
      {
        v13 = v93;
        v14 = v92;
        if (v93 != v92)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              MEMORY[0x1AC55A040](v15, 0x1000C8077774924);
            }
          }

          while (v13 != v12);
          v14 = v92;
        }

        v93 = v12;
        operator delete(v14);
      }

      if (v90 != v91)
      {
        free(v90);
      }
    }
  }

  return v8;
}

uint64_t mlir::anec::Convolution::getPaddingModeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 64));
  if (result)
  {
    v6 = result;
    if (mlir::anec::PaddingModeAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Convolution::getGroupsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 16));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Convolution::getKernelScaleAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 40));
  if (result)
  {
    v6 = result;
    if (mlir::DenseFPElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Convolution::getKernelZeroPointAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 48));
  if (result)
  {
    v6 = result;
    if (mlir::DenseIntElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::anec::Convolution::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v36 = a5;
  v37 = a4;
  mlir::OperationState::addOperands(a2, &v37, 1uLL);
  mlir::OperationState::addOperands(a2, &v36, 1uLL);
  v47 = &v49;
  v50 = 1;
  v49 = xmmword_1A7600FB0;
  v48 = 0x300000003;
  v44 = v46;
  v45 = 0x300000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, 6uLL, 8);
  v8 = v45;
  v9 = v44 + 8 * v45;
  *v9 = 0u;
  v9[1] = 0u;
  v9[2] = 0u;
  LODWORD(v45) = v8 + 6;
  v43 = 3;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  v11 = mlir::RankedTensorType::get(&v43, 1, IntegerType, 0);
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

  v14 = mlir::DenseElementsAttr::getFromRawBuffer(v11, v13, v47, 8 * v48);
  Context = mlir::Attribute::getContext(a2);
  v40 = 261;
  v38 = "stride";
  v39 = 6;
  v16 = mlir::StringAttr::get(Context, &v38);
  ZinMirCacheTensors::ZinMirCacheTensors(&v41, v16, v14);
  mlir::NamedAttrList::push_back(a2 + 112, v41, v42);
  v43 = 3;
  v17 = mlir::Builder::getIntegerType(a1, 64, 0);
  v18 = mlir::RankedTensorType::get(&v43, 1, v17, 0);
  if (v18)
  {
    v19 = v18;
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v18 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = mlir::DenseElementsAttr::getFromRawBuffer(v18, v20, v47, 8 * v48);
  v22 = mlir::Attribute::getContext(a2);
  v40 = 261;
  v38 = "dilation";
  v39 = 8;
  v23 = mlir::StringAttr::get(v22, &v38);
  ZinMirCacheTensors::ZinMirCacheTensors(&v41, v23, v21);
  mlir::NamedAttrList::push_back(a2 + 112, v41, v42);
  v43 = 6;
  v24 = mlir::Builder::getIntegerType(a1, 64, 0);
  v25 = mlir::RankedTensorType::get(&v43, 1, v24, 0);
  if (v25)
  {
    v26 = v25;
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
    v25 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, v44, 8 * v45);
  v29 = mlir::Attribute::getContext(a2);
  v40 = 261;
  v38 = "padding";
  v39 = 7;
  v30 = mlir::StringAttr::get(v29, &v38);
  ZinMirCacheTensors::ZinMirCacheTensors(&v41, v30, v28);
  mlir::NamedAttrList::push_back(a2 + 112, v41, v42);
  v31 = mlir::Builder::getIntegerType(a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v31, 1);
  v33 = mlir::Attribute::getContext(a2);
  v40 = 261;
  v38 = "groups";
  v39 = 6;
  v34 = mlir::StringAttr::get(v33, &v38);
  ZinMirCacheTensors::ZinMirCacheTensors(&v41, v34, IntegerAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v41, v42);
  v35 = *(a2 + 72);
  if (v35 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v35 + 1, 8);
    LODWORD(v35) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v35) = a3;
  ++*(a2 + 72);
  if (v44 != v46)
  {
    free(v44);
  }

  if (v47 != &v49)
  {
    free(v47);
  }
}

void mlir::anec::Convolution::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v31 = a4;
  v32 = a3;
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 72), a5);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v36);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 8), a6);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v36);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 56), a7);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v36);
  if (a8)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 64), a8);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v36);
  }

  if (a9)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 16), a9);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v36);
  }

  if (a10)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&__src, **(*(a2 + 8) + 96), a10);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v36);
  }

  if (a11)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 40), a11);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v36);
  }

  if (a12)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 48), a12);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v36);
  }

  if (a13)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 32), a13);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v36);
  }

  if (a14)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 24), a14);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v36);
  }

  __src = v37;
  v36 = 0x200000000;
  v20 = *a1;
  v21 = *a2;
  mlir::ValueRange::ValueRange(v34, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v24 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v33, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Convolution>::inferReturnTypes(v20, v21, 1, v34[0], v34[1], Dictionary, v24, v25, v33[0], v33[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v26);
  }

  v27 = __src;
  v28 = v36;
  v29 = *(a2 + 72);
  v30 = v29 + v36;
  if (v30 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v30, 8);
    LODWORD(v29) = *(a2 + 72);
  }

  if (v28)
  {
    memcpy((*(a2 + 64) + 8 * v29), v27, 8 * v28);
    LODWORD(v29) = *(a2 + 72);
  }

  *(a2 + 72) = v29 + v28;
  if (__src != v37)
  {
    free(__src);
  }
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Convolution>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = v31;
  v30 = 0x600000000;
  v27 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v27, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v30;
      if (v30 >= HIDWORD(v30))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v30;
      }

      *(v29 + v21) = RankPromotionTypeForANE;
      v22 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      v17 = v28 + 1;
      v28 = v17;
      if (v17 == a5)
      {
        v25 = v29;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v25 = v31;
LABEL_13:
    mlir::ValueRange::ValueRange(&v27, v25, v22);
    result = mlir::anec::Convolution::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v27, v28, a11);
  }

  if (v29 != v31)
  {
    v26 = result;
    free(v29);
    return v26;
  }

  return result;
}

void mlir::anec::Convolution::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v40 = a4;
  v41 = a3;
  mlir::OperationState::addOperands(a2, &v41, 1uLL);
  mlir::OperationState::addOperands(a2, &v40, 1uLL);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 72), a5);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v45);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 8), a6);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v45);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 56), a7);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v45);
  v20 = *(*(*(a2 + 8) + 96) + 64);
  v21 = mlir::IntegerType::get(*a1, 0x40u, 0);
  v22 = mlir::IntegerAttr::get(v21, a8);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, v20, v22);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v45);
  v23 = *(*(*(a2 + 8) + 96) + 16);
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a9);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, v23, IntegerAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v45);
  if (a10)
  {
    v27 = **(*(a2 + 8) + 96);
    UnitAttr = mlir::Builder::getUnitAttr(a1, v26);
    ZinMirCacheTensors::ZinMirCacheTensors(&__src, v27, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v45);
  }

  if (a11)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 40), a11);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v45);
  }

  if (a12)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 48), a12);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v45);
  }

  if (a13)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 32), a13);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v45);
  }

  if (a14)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 24), a14);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v45);
  }

  __src = v46;
  v45 = 0x200000000;
  v29 = *a1;
  v30 = *a2;
  mlir::ValueRange::ValueRange(v43, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v33 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v42, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Convolution>::inferReturnTypes(v29, v30, 1, v43[0], v43[1], Dictionary, v33, v34, v42[0], v42[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v35);
  }

  v36 = __src;
  v37 = v45;
  v38 = *(a2 + 72);
  v39 = v38 + v45;
  if (v39 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v39, 8);
    LODWORD(v38) = *(a2 + 72);
  }

  if (v37)
  {
    memcpy((*(a2 + 64) + 8 * v38), v36, 8 * v37);
    LODWORD(v38) = *(a2 + 72);
  }

  *(a2 + 72) = v38 + v37;
  if (__src != v46)
  {
    free(__src);
  }
}

uint64_t mlir::anec::Convolution::populateDefaultAttrs(mlir::anec::Convolution *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  v13 = Context;
  if (!mlir::NamedAttrList::get(a2, v4[8]))
  {
    v6 = v4[8];
    v7 = mlir::IntegerType::get(Context, 0x40u, 0);
    v8 = mlir::IntegerAttr::get(v7, 0);
    ZinMirCacheTensors::ZinMirCacheTensors(&v14, v6, v8);
    mlir::NamedAttrList::push_back(a2, v14, v15);
  }

  result = mlir::NamedAttrList::get(a2, v4[2]);
  if (!result)
  {
    v10 = v4[2];
    IntegerType = mlir::Builder::getIntegerType(&v13, 64, 0);
    IntegerAttr = mlir::Builder::getIntegerAttr(&v13, IntegerType, 1);
    ZinMirCacheTensors::ZinMirCacheTensors(&v14, v10, IntegerAttr);
    return mlir::NamedAttrList::push_back(a2, v14, v15);
  }

  return result;
}

BOOL mlir::anec::Convolution::verifyInvariantsImpl(mlir::Operation **this)
{
  v53 = *MEMORY[0x1E69E9840];
  v44[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v44);
  if (!v3)
  {
LABEL_7:
    v42[0] = "requires attribute 'dilation'";
    v43 = 259;
    mlir::OpState::emitOpError(this, v42, v44);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
    if (v44[0])
    {
      mlir::InFlightDiagnostic::report(v44);
    }

    if (v52 != 1)
    {
      return v7;
    }

    if (v51 != &v52)
    {
      free(v51);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v50;
      v10 = __p;
      if (v50 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v50 = v8;
      operator delete(v10);
    }

    v11 = v47;
    if (!v47)
    {
      goto LABEL_77;
    }

    v12 = v48;
    v13 = v47;
    if (v48 == v47)
    {
      goto LABEL_76;
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
    goto LABEL_75;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(v4) == **(*(*this + 6) + 96))
    {
      v5 = *(v4 + 1);
    }

    v4 = (v4 + 16);
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_37:
    v42[0] = "requires attribute 'padding'";
    v43 = 259;
    mlir::OpState::emitOpError(this, v42, v44);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
    if (v44[0])
    {
      mlir::InFlightDiagnostic::report(v44);
    }

    if (v52 != 1)
    {
      return v7;
    }

    if (v51 != &v52)
    {
      free(v51);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v50;
      v24 = __p;
      if (v50 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v50 = v22;
      operator delete(v24);
    }

    v11 = v47;
    if (!v47)
    {
      goto LABEL_77;
    }

    v25 = v48;
    v13 = v47;
    if (v48 == v47)
    {
      goto LABEL_76;
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

    while (v25 != v11);
LABEL_75:
    v13 = v47;
    goto LABEL_76;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v40 = *(v4 + 1);
  v41 = 0;
  while (1)
  {
    v21 = (v4 + v16);
    if (ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v16)) == *(*(*(*this + 6) + 96) + 56))
    {
      break;
    }

    if (ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v16)) == *(*(*(*this + 6) + 96) + 16))
    {
      v17 = *(v4 + v16 + 8);
    }

    else if (ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v16)) == *(*(*(*this + 6) + 96) + 24))
    {
      v18 = *(v4 + v16 + 8);
    }

    else if (ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v16)) == *(*(*(*this + 6) + 96) + 32))
    {
      v19 = *(v4 + v16 + 8);
    }

    else if (ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v16)) == *(*(*(*this + 6) + 96) + 40))
    {
      v20 = *(v4 + v16 + 8);
    }

    else if (ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v16)) == *(*(*(*this + 6) + 96) + 48))
    {
      v41 = *(v4 + v16 + 8);
    }

    v16 += 16;
    if (v6 == v16)
    {
      goto LABEL_37;
    }
  }

  v28 = v6 - v16;
  if (!v28)
  {
LABEL_59:
    v42[0] = "requires attribute 'stride'";
    v43 = 259;
    mlir::OpState::emitOpError(this, v42, v44);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
    if (v44[0])
    {
      mlir::InFlightDiagnostic::report(v44);
    }

    if (v52 != 1)
    {
      return v7;
    }

    if (v51 != &v52)
    {
      free(v51);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v50;
      v33 = __p;
      if (v50 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v50 = v31;
      operator delete(v33);
    }

    v11 = v47;
    if (v47)
    {
      v34 = v48;
      v13 = v47;
      if (v48 != v47)
      {
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

        while (v34 != v11);
        goto LABEL_75;
      }

LABEL_76:
      v48 = v11;
      operator delete(v13);
    }

LABEL_77:
    if (v45 != &v46)
    {
      free(v45);
    }

    return v7;
  }

  v29 = 0;
  v30 = v21[1];
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v21) != *(*(*(*this + 6) + 96) + 72))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(v21) == *(*(*(*this + 6) + 96) + 64))
    {
      v29 = v21[1];
    }

    v21 += 2;
    v28 -= 16;
    if (!v28)
    {
      goto LABEL_59;
    }
  }

  if (!mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v21[1], "stride", 6) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v40, "dilation", 8) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps9(*this, v30, "padding", 7) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps14(*this, v29, "padding_mode", 0xC) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v17, "groups", 6) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, v5, "channel_wise", 0xC) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps15(*this, v20, "kernel_scale", 12) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps16(*this, v41, "kernel_zero_point", 17) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps17(*this, v19, "kernel_palettized_LUT", 0x15) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps18(*this, v18, "kernel_mutable_palettized_LUT", 0x1D) || !mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::anec::__mlir_ods_local_type_constraint_ANECOps6(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v38 = *this - 16;
  }

  else
  {
    v38 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v38, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps14(uint64_t *a1, uint64_t a2, const char *a3, const char *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a2 || (mlir::anec::PaddingModeAttr::classof(a2) & 1) != 0)
  {
    return 1;
  }

  v21 = 257;
  mlir::Operation::emitOpError(a1, v20, v22);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v22, "attribute '");
  if (*v9)
  {
    v21 = 261;
    v20[0] = a3;
    v20[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v20);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: valid PaddingMode");
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v28;
      v14 = __p;
      if (v28 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v28 = v12;
      operator delete(v14);
    }

    v15 = v25;
    if (v25)
    {
      v16 = v26;
      v17 = v25;
      if (v26 != v25)
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
        v17 = v25;
      }

      v26 = v15;
      operator delete(v17);
    }

    if (v23 != &v24)
    {
      free(v23);
    }
  }

  return v7;
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps15(uint64_t *a1, const char *a2, const char *a3, uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseFPElementsAttr::classof(a2))
  {
    goto LABEL_15;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v45 = a2;
  v46 = v8;
  Type = mlir::ElementsAttr::getType(&v45);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v48[0] = v10;
  v48[1] = Type;
  mlir::ShapedType::getShape(v48);
  if (!v11)
  {
    goto LABEL_40;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v43[0] = a2;
  v43[1] = v12;
  v13 = mlir::ElementsAttr::getType(v43);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v44[0] = v14;
  v44[1] = v13;
  mlir::ShapedType::getShape(v44);
  if (v15 == 1)
  {
    goto LABEL_40;
  }

  v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v41[0] = a2;
  v41[1] = v16;
  v17 = mlir::ElementsAttr::getType(v41);
  v18 = v17;
  if (v17)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  v42[0] = v18;
  v42[1] = v17;
  mlir::ShapedType::getShape(v42);
  if (v19 == 4)
  {
LABEL_40:
    v38 = a2;
    v39[0] = mlir::ArrayAttr::getValue(&v38);
    v39[1] = v20;
    isSplat = mlir::ElementsAttr::isSplat(v39);
    if (mlir::Type::isF16(&isSplat))
    {
      return 1;
    }

    v35 = a2;
    v36[0] = mlir::ArrayAttr::getValue(&v35);
    v36[1] = v21;
    v37 = mlir::ElementsAttr::isSplat(v36);
    if (mlir::Type::isF32(&v37))
    {
      return 1;
    }
  }

LABEL_15:
  v47 = 257;
  mlir::Operation::emitOpError(a1, &v45, v48);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v48, "attribute '");
  if (*v23)
  {
    v47 = 261;
    v45 = a3;
    v46 = a4;
    v24 = v23;
    mlir::Diagnostic::operator<<((v23 + 1), &v45);
    v23 = v24;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "' failed to satisfy constraint: f16 or f32 elements attribute of rank 0/1/4");
  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v48[0])
  {
    mlir::InFlightDiagnostic::report(v48);
  }

  if (v56 == 1)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v54;
      v28 = __p;
      if (v54 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v54 = v26;
      operator delete(v28);
    }

    v29 = v51;
    if (v51)
    {
      v30 = v52;
      v31 = v51;
      if (v52 != v51)
      {
        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
          }
        }

        while (v30 != v29);
        v31 = v51;
      }

      v52 = v29;
      operator delete(v31);
    }

    if (v49 != &v50)
    {
      free(v49);
    }
  }

  return v22;
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps16(uint64_t *a1, const char *a2, const char *a3, uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_15;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v45 = a2;
  v46 = v8;
  Type = mlir::ElementsAttr::getType(&v45);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v48[0] = v10;
  v48[1] = Type;
  mlir::ShapedType::getShape(v48);
  if (!v11)
  {
    goto LABEL_40;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v43[0] = a2;
  v43[1] = v12;
  v13 = mlir::ElementsAttr::getType(v43);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v44[0] = v14;
  v44[1] = v13;
  mlir::ShapedType::getShape(v44);
  if (v15 == 1)
  {
    goto LABEL_40;
  }

  v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v41[0] = a2;
  v41[1] = v16;
  v17 = mlir::ElementsAttr::getType(v41);
  v18 = v17;
  if (v17)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  v42[0] = v18;
  v42[1] = v17;
  mlir::ShapedType::getShape(v42);
  if (v19 == 4)
  {
LABEL_40:
    v38 = a2;
    v39[0] = mlir::ArrayAttr::getValue(&v38);
    v39[1] = v20;
    isSplat = mlir::ElementsAttr::isSplat(v39);
    if (mlir::Type::isSignedInteger(&isSplat, 8))
    {
      return 1;
    }

    v35 = a2;
    v36[0] = mlir::ArrayAttr::getValue(&v35);
    v36[1] = v21;
    v37 = mlir::ElementsAttr::isSplat(v36);
    if (mlir::Type::isUnsignedInteger(&v37, 8))
    {
      return 1;
    }
  }

LABEL_15:
  v47 = 257;
  mlir::Operation::emitOpError(a1, &v45, v48);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v48, "attribute '");
  if (*v23)
  {
    v47 = 261;
    v45 = a3;
    v46 = a4;
    v24 = v23;
    mlir::Diagnostic::operator<<((v23 + 1), &v45);
    v23 = v24;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "' failed to satisfy constraint: si8 or ui8 elements attribute of rank 0/1/4");
  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v48[0])
  {
    mlir::InFlightDiagnostic::report(v48);
  }

  if (v56 == 1)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v54;
      v28 = __p;
      if (v54 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v54 = v26;
      operator delete(v28);
    }

    v29 = v51;
    if (v51)
    {
      v30 = v52;
      v31 = v51;
      if (v52 != v51)
      {
        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
          }
        }

        while (v30 != v29);
        v31 = v51;
      }

      v52 = v29;
      operator delete(v31);
    }

    if (v49 != &v50)
    {
      free(v49);
    }
  }

  return v22;
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps17(uint64_t *a1, const char *a2, const char *a3, const char *a4)
{
  v83 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseElementsAttr::classof(a2))
  {
    goto LABEL_26;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v70 = a2;
  v71 = v8;
  Type = mlir::ElementsAttr::getType(&v70);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v74[0] = v10;
  v74[1] = Type;
  mlir::ShapedType::getShape(v74);
  if (!v11)
  {
    goto LABEL_57;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v68[0] = a2;
  v68[1] = v12;
  v13 = mlir::ElementsAttr::getType(v68);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v69[0] = v14;
  v69[1] = v13;
  mlir::ShapedType::getShape(v69);
  if (v15 == 1)
  {
    goto LABEL_57;
  }

  v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v66[0] = a2;
  v66[1] = v16;
  v17 = mlir::ElementsAttr::getType(v66);
  v18 = v17;
  if (v17)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  v67[0] = v18;
  v67[1] = v17;
  mlir::ShapedType::getShape(v67);
  if (v19 == 2)
  {
    goto LABEL_57;
  }

  v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v64[0] = a2;
  v64[1] = v20;
  v21 = mlir::ElementsAttr::getType(v64);
  v22 = v21;
  if (v21)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  v65[0] = v22;
  v65[1] = v21;
  mlir::ShapedType::getShape(v65);
  if (v23 == 3)
  {
    goto LABEL_57;
  }

  v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v62[0] = a2;
  v62[1] = v24;
  v25 = mlir::ElementsAttr::getType(v62);
  v26 = v25;
  if (v25)
  {
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
  }

  v63[0] = v26;
  v63[1] = v25;
  mlir::ShapedType::getShape(v63);
  if (v27 == 4)
  {
    goto LABEL_57;
  }

  v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v60[0] = a2;
  v60[1] = v28;
  v29 = mlir::ElementsAttr::getType(v60);
  v30 = v29;
  if (v29)
  {
    v29 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  v61[0] = v30;
  v61[1] = v29;
  mlir::ShapedType::getShape(v61);
  if (v31 == 5)
  {
    goto LABEL_57;
  }

  v32 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v58[0] = a2;
  v58[1] = v32;
  v33 = mlir::ElementsAttr::getType(v58);
  v34 = v33;
  if (v33)
  {
    v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
  }

  v59[0] = v34;
  v59[1] = v33;
  mlir::ShapedType::getShape(v59);
  if (v35 == 6)
  {
LABEL_57:
    v55 = a2;
    v56[0] = mlir::ArrayAttr::getValue(&v55);
    v56[1] = v36;
    isSplat = mlir::ElementsAttr::isSplat(v56);
    if (mlir::Type::isF16(&isSplat))
    {
      return 1;
    }
  }

LABEL_26:
  v73 = 257;
  mlir::Operation::emitOpError(a1, &v70, v74);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v74, "attribute '");
  if (*v38)
  {
    v73 = 261;
    v70 = a3;
    v71 = a4;
    v39 = v38;
    mlir::Diagnostic::operator<<(v38 + 8, &v70);
    v38 = v39;
    if (*v39)
    {
      v40 = *(v39 + 24);
      LODWORD(v70) = 3;
      v71 = "' failed to satisfy constraint: dense elements attribute for palettized LUT of rank 0/1/2/3/4/5/6";
      v72 = 97;
      v41 = *(v39 + 32);
      v42 = &v70;
      if (v41 >= *(v39 + 36))
      {
        if (v40 <= &v70 && v40 + 24 * v41 > &v70)
        {
          v54 = &v70 - v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39 + 24, (v39 + 40), v41 + 1, 24);
          v38 = v39;
          v40 = *(v39 + 24);
          v42 = &v54[v40];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39 + 24, (v39 + 40), v41 + 1, 24);
          v38 = v39;
          v40 = *(v39 + 24);
          v42 = &v70;
        }
      }

      v43 = v40 + 24 * *(v38 + 32);
      v44 = *v42;
      *(v43 + 16) = v42[2];
      *v43 = v44;
      ++*(v38 + 32);
    }
  }

  v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
  if (v74[0])
  {
    mlir::InFlightDiagnostic::report(v74);
  }

  if (v82 == 1)
  {
    if (v81 != &v82)
    {
      free(v81);
    }

    v45 = __p;
    if (__p)
    {
      v46 = v80;
      v47 = __p;
      if (v80 != __p)
      {
        do
        {
          v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
        }

        while (v46 != v45);
        v47 = __p;
      }

      v80 = v45;
      operator delete(v47);
    }

    v48 = v77;
    if (v77)
    {
      v49 = v78;
      v50 = v77;
      if (v78 != v77)
      {
        do
        {
          v52 = *--v49;
          v51 = v52;
          *v49 = 0;
          if (v52)
          {
            MEMORY[0x1AC55A040](v51, 0x1000C8077774924);
          }
        }

        while (v49 != v48);
        v50 = v77;
      }

      v78 = v48;
      operator delete(v50);
    }

    if (v75 != &v76)
    {
      free(v75);
    }
  }

  return v37;
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps18(uint64_t *a1, uint64_t a2, const char *a3, const char *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    return 1;
  }

  v20 = 257;
  mlir::Operation::emitOpError(a1, v19, v21);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v21, "attribute '");
  if (*v6)
  {
    v20 = 261;
    v19[0] = a3;
    v19[1] = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<((v6 + 1), v19);
    v6 = v7;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v6, "' failed to satisfy constraint: dictionary of named attribute values");
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v8);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v9;
}

BOOL mlir::anec::__mlir_ods_local_type_constraint_ANECOps6(uint64_t *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v59[0] = a2;
    v59[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v59);
    if (mlir::Type::isF32(&isSplat) || mlir::Type::isF16(&isSplat) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 2) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 6) || mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v51 = a2;
      v52 = v11;
      if (mlir::ElementsAttr::getShapedType(&v51))
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v56 = a2;
        v57 = v12;
        mlir::ShapedType::getShape(&v56);
        if (v13 == 4)
        {
          return 1;
        }

        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v54[0] = a2;
        v54[1] = v14;
        mlir::ShapedType::getShape(v54);
        if (v15 == 5)
        {
          return 1;
        }
      }
    }
  }

  v53 = 261;
  v51 = a3;
  v52 = a4;
  mlir::Operation::emitOpError(a1, &v51, v59);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v59, " #");
  if (*v17)
  {
    v19 = v17 + 24;
    v18 = *(v17 + 24);
    LODWORD(v56) = 5;
    v57 = a5;
    v20 = *(v17 + 32);
    v21 = &v56;
    if (v20 >= *(v17 + 36))
    {
      if (v18 <= &v56 && v18 + 24 * v20 > &v56)
      {
        v46 = &v56 - v18;
        v47 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, (v17 + 40), v20 + 1, 24);
        v17 = v47;
        v18 = *(v47 + 24);
        v21 = &v46[v18];
      }

      else
      {
        v44 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, (v17 + 40), v20 + 1, 24);
        v17 = v44;
        v18 = *(v44 + 24);
        v21 = &v56;
      }
    }

    v22 = v18 + 24 * *(v17 + 32);
    v23 = *v21;
    *(v22 + 16) = v21[2];
    *v22 = v23;
    v24 = (*(v17 + 32) + 1);
    *(v17 + 32) = v24;
    if (*v17)
    {
      LODWORD(v56) = 3;
      v57 = " must be 4D/5D memref of 32-bit float or 16-bit float or 8-bit signed integer or 8-bit unsigned integer or 2/4/6/8-bit unsigned integer values, but got ";
      v58 = 152;
      v25 = *(v17 + 24);
      v26 = &v56;
      if (v24 >= *(v17 + 36))
      {
        if (v25 <= &v56 && v25 + 24 * v24 > &v56)
        {
          v48 = &v56 - v25;
          v49 = v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19, (v17 + 40), v24 + 1, 24);
          v17 = v49;
          v25 = *(v49 + 24);
          v26 = &v48[v25];
        }

        else
        {
          v45 = v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19, (v17 + 40), v24 + 1, 24);
          v17 = v45;
          v25 = *(v45 + 24);
          v26 = &v56;
        }
      }

      v27 = v25 + 24 * *(v17 + 32);
      v28 = *v26;
      *(v27 + 16) = v26[2];
      *v27 = v28;
      ++*(v17 + 32);
      if (*v17)
      {
        v29 = &v56;
        v30 = v17;
        mlir::DiagnosticArgument::DiagnosticArgument(&v56, a2);
        v17 = v30;
        v31 = *(v30 + 32);
        v32 = *(v30 + 24);
        if (v31 >= *(v30 + 36))
        {
          if (v32 <= &v56 && v32 + 24 * v31 > &v56)
          {
            v50 = &v56 - v32;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v19, (v30 + 40), v31 + 1, 24);
            v17 = v30;
            v32 = *(v30 + 24);
            v29 = &v50[v32];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v19, (v30 + 40), v31 + 1, 24);
            v17 = v30;
            v32 = *(v30 + 24);
            v29 = &v56;
          }
        }

        v33 = v32 + 24 * *(v17 + 32);
        v34 = *v29;
        *(v33 + 16) = v29[2];
        *v33 = v34;
        ++*(v17 + 32);
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
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

    v35 = __p;
    if (__p)
    {
      v36 = v65;
      v37 = __p;
      if (v65 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v65 = v35;
      operator delete(v37);
    }

    v38 = v62;
    if (v62)
    {
      v39 = v63;
      v40 = v62;
      if (v63 != v62)
      {
        do
        {
          v42 = *--v39;
          v41 = v42;
          *v39 = 0;
          if (v42)
          {
            MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
          }
        }

        while (v39 != v38);
        v40 = v62;
      }

      v63 = v38;
      operator delete(v40);
    }

    if (v60 != &v61)
    {
      free(v60);
    }
  }

  return v16;
}

uint64_t llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_0>(uint64_t *a1)
{
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v10, *a1, 0);
  v2 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v8, v2, NumElements);
  v12 = v10;
  v13 = v11;
  v4 = v9;
  if (v11 == v9)
  {
    return 1;
  }

  while (1)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v12, &v14);
    v6 = v15;
    v15 = 0;
    if (v6 <= 0x40)
    {
      break;
    }

    v7 = *v14;
    if (!v14)
    {
      goto LABEL_6;
    }

    MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
    if (v15 >= 0x41 && v14)
    {
      MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
LABEL_6:
      if (v7 >= 3)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if (v7 > 2)
    {
      return 0;
    }

LABEL_7:
    *&v13 = v13 + 1;
    if (v13 == v4)
    {
      return 1;
    }
  }

  if (!v6 || ((v14 << -v6) >> -v6) < 3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(uint64_t *a1)
{
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v10, *a1, 0);
  v2 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v8, v2, NumElements);
  v12 = v10;
  v13 = v11;
  v4 = v9;
  if (v11 == v9)
  {
    return 1;
  }

  while (1)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v12, &v14);
    v6 = v15;
    v15 = 0;
    if (v6 <= 0x40)
    {
      break;
    }

    v7 = *v14;
    if (!v14)
    {
      goto LABEL_6;
    }

    MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
    if (v15 >= 0x41 && v14)
    {
      MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
LABEL_6:
      if (v7 >= 2)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if (v7 > 1)
    {
      return 0;
    }

LABEL_7:
    *&v13 = v13 + 1;
    if (v13 == v4)
    {
      return 1;
    }
  }

  if (!v6 || ((v14 << -v6) >> -v6) < 2)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_2>(uint64_t *a1)
{
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v10, *a1, 0);
  v2 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v8, v2, NumElements);
  v12 = v10;
  v13 = v11;
  v4 = v9;
  if (v11 == v9)
  {
    return 1;
  }

  while (1)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v12, &v14);
    v6 = v15;
    v15 = 0;
    if (v6 <= 0x40)
    {
      break;
    }

    v7 = *v14;
    if (!v14)
    {
      goto LABEL_6;
    }

    MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
    if (v15 >= 0x41 && v14)
    {
      MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
LABEL_6:
      if (v7 >= 6)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if (v7 > 5)
    {
      return 0;
    }

LABEL_7:
    *&v13 = v13 + 1;
    if (v13 == v4)
    {
      return 1;
    }
  }

  if (!v6 || ((v14 << -v6) >> -v6) < 6)
  {
    goto LABEL_7;
  }

  return 0;
}