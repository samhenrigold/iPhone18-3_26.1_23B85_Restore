BOOL mlir::mps::Conv2DWeightsGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a1[3])
  {
    v55 = "'mps.conv_2d_weights_gradient' op requires attribute 'data_layout'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v67;
      v23 = __p;
      if (v67 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v67 = v21;
      operator delete(v23);
    }

    v24 = v64;
    if (v64)
    {
      v25 = v65;
      v26 = v64;
      if (v65 != v64)
      {
        do
        {
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
          }
        }

        while (v25 != v24);
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  v54 = a1[4];
  if (!v54)
  {
    v55 = "'mps.conv_2d_weights_gradient' op requires attribute 'dilation_rates'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v67;
      v31 = __p;
      if (v67 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v67 = v29;
      operator delete(v31);
    }

    v24 = v64;
    if (v64)
    {
      v32 = v65;
      v26 = v64;
      if (v65 != v64)
      {
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

        while (v32 != v24);
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  v53 = a1[5];
  if (!v53)
  {
    v55 = "'mps.conv_2d_weights_gradient' op requires attribute 'explicit_padding'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v67;
      v37 = __p;
      if (v67 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v67 = v35;
      operator delete(v37);
    }

    v24 = v64;
    if (v64)
    {
      v38 = v65;
      v26 = v64;
      if (v65 != v64)
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

        while (v38 != v24);
        goto LABEL_87;
      }

LABEL_88:
      v65 = v24;
      operator delete(v26);
    }

LABEL_89:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v20;
  }

  v3 = a1[6];
  if (!v3)
  {
    v55 = "'mps.conv_2d_weights_gradient' op requires attribute 'groups'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v67;
      v43 = __p;
      if (v67 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v67 = v41;
      operator delete(v43);
    }

    v24 = v64;
    if (v64)
    {
      v44 = v65;
      v26 = v64;
      if (v65 != v64)
      {
        do
        {
          v46 = *--v44;
          v45 = v46;
          *v44 = 0;
          if (v46)
          {
            MEMORY[0x1AC55A040](v45, 0x1000C8077774924);
          }
        }

        while (v44 != v24);
LABEL_87:
        v26 = v64;
        goto LABEL_88;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  if (a1[7])
  {
    v52 = a1[8];
    if (v52)
    {
      if (a1[9])
      {
        v55 = v3;
        Value = mlir::AffineMapAttr::getValue(&v55);
        if (mlir::Type::isUnsignedInteger(&Value, 64))
        {
          v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v52);
          v56 = v4;
          v49[0] = mlir::ElementsAttr::getType(&v55);
          Value = mlir::BaseMemRefType::operator mlir::ShapedType(v49);
          v61 = v5;
          Shape = mlir::ShapedType::getShape(&Value);
          Type = 4;
          if (v7 == 1 && *Shape == Type && (v50 = v52, *&v58 = mlir::ArrayAttr::getValue(&v50), *(&v58 + 1) = v8, isSplat = mlir::ElementsAttr::isSplat(&v58), mlir::Type::isUnsignedInteger(&isSplat, 64)))
          {
            v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v54);
            v56 = v9;
            v49[0] = mlir::ElementsAttr::getType(&v55);
            Value = mlir::BaseMemRefType::operator mlir::ShapedType(v49);
            v61 = v10;
            v11 = mlir::ShapedType::getShape(&Value);
            Type = 4;
            if (v12 == 1 && *v11 == Type && (v50 = v54, *&v58 = mlir::ArrayAttr::getValue(&v50), *(&v58 + 1) = v13, isSplat = mlir::ElementsAttr::isSplat(&v58), mlir::Type::isUnsignedInteger(&isSplat, 64)))
            {
              v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v53);
              v56 = v14;
              Type = mlir::ElementsAttr::getType(&v55);
              Value = mlir::BaseMemRefType::operator mlir::ShapedType(&Type);
              v61 = v15;
              v16 = mlir::ShapedType::getShape(&Value);
              v58 = xmmword_1A7595C20;
              if (v17 == 2 && *v16 == v58 && v16[1] == *(&v58 + 1))
              {
                v50 = v53;
                v49[0] = mlir::ArrayAttr::getValue(&v50);
                v49[1] = v19;
                isSplat = mlir::ElementsAttr::isSplat(v49);
                if (mlir::Type::isUnsignedInteger(&isSplat, 64))
                {
                  return 1;
                }
              }

              v47 = "'mps.conv_2d_weights_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
            }

            else
            {
              v47 = "'mps.conv_2d_weights_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            }
          }

          else
          {
            v47 = "'mps.conv_2d_weights_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
          }
        }

        else
        {
          v47 = "'mps.conv_2d_weights_gradient' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v47 = "'mps.conv_2d_weights_gradient' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v47 = "'mps.conv_2d_weights_gradient' op requires attribute 'strides'";
    }

    v55 = v47;
    v57 = 259;
    mlir::emitError(a2, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
    return v20;
  }

  v55 = "'mps.conv_2d_weights_gradient' op requires attribute 'padding_style'";
  v57 = 259;
  mlir::emitError(a2, &v55, &Value);
  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v69 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v61);
  }

  return v20;
}

void mlir::mps::getSpatialPaddingValues(uint64_t a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  v4 = a3 + 2;
  v5 = 48;
  v6 = 64;
  if (a2 != 7)
  {
    v6 = 48;
  }

  v7 = 56;
  v8 = 72;
  if (a2 != 7)
  {
    v8 = 56;
  }

  v9 = 32;
  *a3 = v4;
  if (a2 != 7)
  {
    v5 = 32;
    v7 = 40;
    v9 = 16;
  }

  v10 = *(a1 + v6);
  v11 = *(a1 + v8);
  if (a2 == 7)
  {
    v12 = 40;
  }

  else
  {
    v12 = 24;
  }

  v13 = *(a1 + v5);
  v14 = *(a1 + v7);
  a3[1] = 0x500000000;
  v15 = *(a1 + v9);
  v16 = *(a1 + v12);
  llvm::SmallVectorBase<unsigned int>::grow_pod(a3, v4, 6uLL, 8);
  v17 = (*a3 + 8 * *(a3 + 2));
  *v17 = v10;
  v17[1] = v11;
  v17[2] = v13;
  v17[3] = v14;
  v17[4] = v15;
  v17[5] = v16;
  *(a3 + 2) += 6;
}

void mlir::mps::computeSpatialPaddings(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X4>, uint64_t *a5@<X6>, uint64_t a6@<X8>, void *__src, unint64_t a8, int a9)
{
  if (a9 <= 1)
  {
    v10 = (a6 + 16);
    if (!a9)
    {
      *a6 = v10;
      *(a6 + 8) = 0x600000000;
      v11 = (8 * a8) >> 3;
      if (v11 < 7)
      {
        v12 = 0;
        v13 = 8 * a8;
        if (!a8)
        {
LABEL_24:
          *(a6 + 8) = v12 + (v13 >> 3);
          return;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a6, v10, v11, 8);
        v12 = *(a6 + 8);
        v13 = 8 * a8;
        if (!a8)
        {
          goto LABEL_24;
        }
      }

      memcpy((*a6 + 8 * v12), __src, v13);
      v12 = *(a6 + 8);
      goto LABEL_24;
    }

    *a6 = v10;
    *(a6 + 12) = 6;
    if (a8 < 7)
    {
      if (!a8)
      {
LABEL_28:
        *(a6 + 8) = a8;
        return;
      }

      v20 = (a6 + 16);
      v21 = 8 * a8;
    }

    else
    {
      *(a6 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a6, v10, a8, 8);
      v20 = *a6;
      v21 = 8 * a8;
    }

    bzero(v20, v21);
    goto LABEL_28;
  }

  v19 = (a6 + 16);
  *a6 = a6 + 16;
  *(a6 + 12) = 6;
  if (a8 < 7)
  {
    if (!a8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(a6 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a6, (a6 + 16), a8, 8);
    v19 = *a6;
  }

  bzero(v19, 8 * a8);
LABEL_12:
  *(a6 + 8) = a8;
  if (a2)
  {
    v22 = 8 * a2;
    for (i = a1; *i; ++i)
    {
      v22 -= 8;
      if (!v22)
      {
        v24 = v19 + 1;
        do
        {
          v26 = *a3++;
          v25 = v26;
          v27 = *a5++;
          v28 = (v25 - 1) * v27;
          v30 = *a1++;
          v29 = v30;
          v32 = *a4++;
          v31 = v32;
          v33 = v29 % v32;
          if (!v33)
          {
            v33 = v31;
          }

          v34 = (v28 - v33 + 1) & ~((v28 - v33 + 1) >> 63);
          v35 = v34 >> 1;
          v36 = v34 - (v34 >> 1);
          *(v24 - 1) = v35;
          *v24 = v36;
          if (a9 == 4)
          {
            *(v24 - 1) = v36;
            *v24 = v35;
          }

          v24 += 2;
          --a2;
        }

        while (a2);
        return;
      }
    }
  }
}

void mlir::mps::computeConvResultSpatialShape(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X4>, void *a5@<X6>, void *a6@<X8>, uint64_t a7)
{
  v7 = a2;
  *a6 = a6 + 2;
  a6[1] = 0x300000000;
  if (!a2)
  {
    return;
  }

  if (a2 < 4)
  {
    v13 = 0;
    v14 = a7;
    v15 = a2;
    goto LABEL_6;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 2, a2, 8);
  v13 = *(a6 + 2);
  v14 = a7;
  v15 = v7 - v13;
  if (v7 != v13)
  {
LABEL_6:
    bzero((*a6 + 8 * v13), 8 * v15);
  }

  *(a6 + 2) = v7;
  v16 = *a6;
  v17 = (v14 + 8);
  do
  {
    v19 = *a3++;
    v18 = v19;
    v21 = *a1++;
    v20 = v21;
    v22 = v21 == 0x8000000000000000 || v18 == 0x8000000000000000;
    v23 = 0x8000000000000000;
    if (!v22)
    {
      v23 = (*(v17 - 1) + v20 + *v17 + *a4 + ~(*a5 * (v18 - 1))) / *a4;
    }

    *v16++ = v23;
    v17 += 2;
    ++a5;
    ++a4;
    --v7;
  }

  while (v7);
}

void mlir::mps::convertNCDHWShapeToLayout(void *result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 != 7)
  {
    v11 = result[4];
    v12 = result[1];
    v13 = *(result + 1);
    *(a4 + 16) = *result;
    *a4 = a4 + 16;
    *(a4 + 24) = v13;
    *(a4 + 40) = v11;
    *(a4 + 48) = v12;
    *(a4 + 8) = 0x500000005;
    return;
  }

  *a4 = a4 + 16;
  *(a4 + 8) = 0x500000000;
  v6 = (8 * a2) >> 3;
  if (v6 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v6, 8);
    v8 = a2;
    v9 = *(a4 + 8);
    v10 = 8 * a2;
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = 0;
  v10 = 8 * a2;
  if (a2)
  {
LABEL_7:
    memcpy((*a4 + 8 * v9), result, v10);
    v9 = *(a4 + 8);
  }

LABEL_8:
  *(a4 + 8) = v9 + (v10 >> 3);
}

uint64_t mlir::mps::Conv3DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v124 = *MEMORY[0x1E69E9840];
  v122 = a4;
  v123 = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = a7[2];
    v17 = *(a7 + 6);
  }

  else
  {
    v17 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v111 = a6;
  LOBYTE(v112) = 0;
  v113 = 0;
  v114 = v14;
  v115 = v15;
  v116 = v16;
  v117 = v17;
  v118 = a9;
  v18 = a5;
  v119 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v111);
    if (v113 == 1)
    {
      v113 = 0;
    }

    mlir::OperationName::OperationName(&v112, "mps.conv_3d", 11, Context);
    v113 = 1;
    v18 = v123;
  }

  v120 = a4;
  v121 = a5;
  if (v18 < 2 || (v20 = mlir::UnknownLoc::get(this, a2), !mlir::mps::Conv3DOpAdaptor::verify(&v111, v20)))
  {
    v71 = mlir::Float32Type::get(this, a2);
    v72 = mlir::UnrankedTensorType::get(v71);
    v73 = *(a11 + 8);
    if (v73 >= *(a11 + 12))
    {
LABEL_51:
      v75 = v72;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v73 + 1, 8);
      v72 = v75;
      LODWORD(v73) = *(a11 + 8);
    }

LABEL_48:
    *(*a11 + 8 * v73) = v72;
    ++*(a11 + 8);
    return 1;
  }

  v21 = mlir::ValueRange::dereference_iterator(&v122, 0);
  v22 = mlir::ValueRange::dereference_iterator(&v122, 1);
  v23 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
  v84 = (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
  v85 = v23;
  mlir::ValueRange::ValueRange(&v90, &v84, 2uLL);
  v77[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
  v77[1] = v25;
  v76[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
  v76[1] = v26;
  if (!v77[0] || !mlir::ElementsAttr::getShapedType(v77) || (mlir::ShapedType::getShape(v77), v27 < 5) || !v76[0] || !mlir::ElementsAttr::getShapedType(v76) || (mlir::ShapedType::getShape(v76), v28 != 5))
  {
    v72 = mlir::UnrankedTensorType::get(v24);
    v73 = *(a11 + 8);
    if (v73 >= *(a11 + 12))
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  Shape = mlir::ShapedType::getShape(v77);
  v30 = *(v114 + 8) - 7;
  v32 = Shape + 8 * v31;
  v33 = *(v32 + qword_1A76003D0[v30]);
  v34 = *(v32 + qword_1A76003F0[v30]);
  v35 = *(v32 + qword_1A7600410[v30]);
  v108 = v110;
  v110[0] = v33;
  v110[1] = v34;
  v110[2] = v35;
  *v109 = 0x300000003;
  v36 = mlir::ShapedType::getShape(v76);
  v37 = *(v117 + 8) - 7;
  v39 = v36 + 8 * v38;
  v40 = *(v39 + qword_1A76003D0[v37]);
  v41 = *(v39 + qword_1A76003F0[v37]);
  v42 = *(v39 + qword_1A7600410[v37]);
  v105 = v107;
  v107[0] = v40;
  v107[1] = v41;
  v107[2] = v42;
  *v106 = 0x300000003;
  v102 = v104;
  v103 = 0x500000000;
  v90 = *(&v116 + 1);
  v43 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v90);
  mlir::getIntValues<long long>(v43, v44, &v102, 1);
  v45 = *(v114 + 8) - 7;
  v46 = v102 + 8 * v103;
  v47 = *&v46[qword_1A76003D0[v45]];
  v48 = *&v46[qword_1A76003F0[v45]];
  v49 = *&v46[qword_1A7600410[v45]];
  v99 = v101;
  v101[0] = v47;
  v101[1] = v48;
  v101[2] = v49;
  *v100 = 0x300000003;
  v96 = v98;
  v97 = 0x500000000;
  v90 = *(&v114 + 1);
  v50 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v90);
  mlir::getIntValues<long long>(v50, v51, &v96, 1);
  v52 = *(v114 + 8) - 7;
  v53 = v96 + 8 * v97;
  v54 = *&v53[qword_1A76003D0[v52]];
  v55 = *&v53[qword_1A76003F0[v52]];
  v56 = *&v53[qword_1A7600410[v52]];
  v93 = v95;
  v95[0] = v54;
  v95[1] = v55;
  v95[2] = v56;
  *v94 = 0x300000003;
  v90 = v92;
  v91 = 0xA00000000;
  v84 = v115;
  v57 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v84);
  mlir::getIntValues<long long>(v57, v58, &v90, 1);
  mlir::mps::getSpatialPaddingValues(v90, *(v114 + 8), &__src);
  mlir::mps::computeSpatialPaddings(v108, v109[0], v105, v99, v93, &v84, __src, v88, *(v116 + 8));
  llvm::SmallVectorImpl<mlir::Value>::operator=(&__src, &v84);
  if (v84 != v86)
  {
    free(v84);
  }

  mlir::mps::computeConvResultSpatialShape(v108, v109[0], v105, v99, v93, &v82, __src);
  v59 = mlir::ShapedType::getShape(v77);
  v61 = *(v59 + 8 * v60 - 40);
  v62 = mlir::ShapedType::getShape(v76);
  v64 = -40;
  if (*(v117 + 8) == 10)
  {
    v64 = -8;
  }

  v65 = *(v62 + 8 * v63 + v64);
  v80[0] = v61;
  v80[1] = v65;
  v81[0] = *(v82 + 2);
  v81[1] = *(v82 + 1);
  v81[2] = *v82;
  llvm::SmallVector<long long,5u>::SmallVector<long long,void>(&v84, v80, 5);
  mlir::mps::convertNCDHWShapeToLayout(v84, v85, *(v114 + 8), v80);
  llvm::SmallVectorImpl<mlir::Value>::operator=(&v84, v80);
  if (v80[0] != v81)
  {
    free(v80[0]);
  }

  mlir::ShapedType::getShape(v77);
  if (v66 >= 6)
  {
    llvm::SmallVector<long long,5u>::SmallVector(v80, &v84);
    v67 = mlir::ShapedType::getShape(v77);
    v68 = mlir::ShapedType::getShape(v77);
    llvm::SmallVector<long long,5u>::SmallVector<long long const*,void>(v78, v67, (v68 + 8 * v69 - 40));
    llvm::SmallVectorImpl<mlir::Value>::operator=(&v84, v78);
    if (v78[0] != &v79)
    {
      free(v78[0]);
    }

    llvm::SmallVectorImpl<long long>::append(&v84, v80);
    if (v80[0] != v81)
    {
      free(v80[0]);
    }
  }

  v70 = mlir::RankedTensorType::get(v84, v85, v24, 0);
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v70);
  if (v84 != v86)
  {
    free(v84);
  }

  if (v82 != &v83)
  {
    free(v82);
  }

  if (__src != &v89)
  {
    free(__src);
  }

  if (v90 != v92)
  {
    free(v90);
  }

  if (v93 != v95)
  {
    free(v93);
  }

  if (v96 != v98)
  {
    free(v96);
  }

  if (v99 != v101)
  {
    free(v99);
  }

  if (v102 != v104)
  {
    free(v102);
  }

  if (v105 != v107)
  {
    free(v105);
  }

  if (v108 != v110)
  {
    free(v108);
  }

  return 1;
}

BOOL mlir::mps::Conv3DOpAdaptor::verify(void *a1, uint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  if (!v3)
  {
    v58 = "'mps.conv_3d' op requires attribute 'data_layout'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v70;
      v25 = __p;
      if (v70 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v70 = v23;
      operator delete(v25);
    }

    v26 = v67;
    if (v67)
    {
      v27 = v68;
      v28 = v67;
      if (v68 != v67)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v57 = a1[4];
  if (!v57)
  {
    v58 = "'mps.conv_3d' op requires attribute 'dilation_rates'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v70;
      v33 = __p;
      if (v70 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v70 = v31;
      operator delete(v33);
    }

    v26 = v67;
    if (v67)
    {
      v34 = v68;
      v28 = v67;
      if (v68 != v67)
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

        while (v34 != v26);
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v56 = a1[5];
  if (!v56)
  {
    v58 = "'mps.conv_3d' op requires attribute 'explicit_padding'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v70;
      v39 = __p;
      if (v70 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v70 = v37;
      operator delete(v39);
    }

    v26 = v67;
    if (v67)
    {
      v40 = v68;
      v28 = v67;
      if (v68 != v67)
      {
        do
        {
          v42 = *--v40;
          v41 = v42;
          *v40 = 0;
          if (v42)
          {
            MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
          }
        }

        while (v40 != v26);
        goto LABEL_91;
      }

LABEL_92:
      v68 = v26;
      operator delete(v28);
    }

LABEL_93:
    if (v65 != &v66)
    {
      free(v65);
    }

    return v22;
  }

  v4 = a1[6];
  if (!v4)
  {
    v58 = "'mps.conv_3d' op requires attribute 'groups'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v26 = v67;
    if (v67)
    {
      v46 = v68;
      v28 = v67;
      if (v68 != v67)
      {
        do
        {
          v48 = *--v46;
          v47 = v48;
          *v46 = 0;
          if (v48)
          {
            MEMORY[0x1AC55A040](v47, 0x1000C8077774924);
          }
        }

        while (v46 != v26);
LABEL_91:
        v28 = v67;
        goto LABEL_92;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  if (a1[7])
  {
    v55 = a1[8];
    if (v55)
    {
      v5 = a1[9];
      if (v5)
      {
        v58 = v4;
        Value = mlir::AffineMapAttr::getValue(&v58);
        if (mlir::Type::isUnsignedInteger(&Value, 64))
        {
          v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v55);
          v59 = v6;
          v51[0] = mlir::ElementsAttr::getType(&v58);
          Value = mlir::BaseMemRefType::operator mlir::ShapedType(v51);
          v64 = v7;
          Shape = mlir::ShapedType::getShape(&Value);
          Type = 5;
          if (v9 == 1 && *Shape == Type && (isSplat = v55, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::Location)::$_0>(&isSplat)) && (v52 = v55, *&v61 = mlir::ArrayAttr::getValue(&v52), *(&v61 + 1) = v10, v53 = mlir::ElementsAttr::isSplat(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
          {
            v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v57);
            v59 = v11;
            v51[0] = mlir::ElementsAttr::getType(&v58);
            Value = mlir::BaseMemRefType::operator mlir::ShapedType(v51);
            v64 = v12;
            v13 = mlir::ShapedType::getShape(&Value);
            Type = 5;
            if (v14 == 1 && *v13 == Type && (isSplat = v57, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::Location)::$_0>(&isSplat)) && (v52 = v57, *&v61 = mlir::ArrayAttr::getValue(&v52), *(&v61 + 1) = v15, v53 = mlir::ElementsAttr::isSplat(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
            {
              v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v56);
              v59 = v16;
              Type = mlir::ElementsAttr::getType(&v58);
              Value = mlir::BaseMemRefType::operator mlir::ShapedType(&Type);
              v64 = v17;
              v18 = mlir::ShapedType::getShape(&Value);
              v61 = xmmword_1A75EA150;
              if (v19 == 2 && (*v18 == v61 ? (v20 = v18[1] == *(&v61 + 1)) : (v20 = 0), v20 && (v53 = v56, v51[0] = mlir::ArrayAttr::getValue(&v53), v51[1] = v21, isSplat = mlir::ElementsAttr::isSplat(v51), mlir::Type::isUnsignedInteger(&isSplat, 64))))
              {
                if ((*(v3 + 8) - 7) >= 2)
                {
                  v49 = "'mps.conv_3d' op attribute 'data_layout' failed to satisfy constraint: valid TensorDataLayout is one of NDHWC or NCDHW";
                }

                else
                {
                  if ((*(v5 + 8) - 9) < 2)
                  {
                    return 1;
                  }

                  v49 = "'mps.conv_3d' op attribute 'weights_layout' failed to satisfy constraint: valid TensorDataLayout is one of DHWIO or OIDHW";
                }
              }

              else
              {
                v49 = "'mps.conv_3d' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {5, 2}";
              }
            }

            else
            {
              v49 = "'mps.conv_3d' op attribute 'dilation_rates' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
            }
          }

          else
          {
            v49 = "'mps.conv_3d' op attribute 'strides' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
          }
        }

        else
        {
          v49 = "'mps.conv_3d' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v49 = "'mps.conv_3d' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v49 = "'mps.conv_3d' op requires attribute 'strides'";
    }

    v58 = v49;
    v60 = 259;
    mlir::emitError(a2, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
    return v22;
  }

  v58 = "'mps.conv_3d' op requires attribute 'padding_style'";
  v60 = 259;
  mlir::emitError(a2, &v58, &Value);
  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v72 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v64);
  }

  return v22;
}

void *llvm::SmallVector<long long,5u>::SmallVector(void *result, uint64_t a2)
{
  v2 = result + 2;
  *result = result + 2;
  result[1] = 0x500000000;
  if (result != a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      if (v3 < 6)
      {
        v4 = result;
        v6 = *(a2 + 8);
      }

      else
      {
        v4 = result;
        v5 = a2;
        llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 2, v3, 8);
        v6 = *(v5 + 8);
        if (!v6)
        {
LABEL_8:
          result = v4;
          *(v4 + 2) = v3;
          return result;
        }

        a2 = v5;
        v2 = *v4;
      }

      memcpy(v2, *a2, 8 * v6);
      goto LABEL_8;
    }
  }

  return result;
}

void llvm::SmallVectorImpl<long long>::append(unsigned int *result, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = result[2];
  if (v5 + v4 > result[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v5 + v4, 8);
    LODWORD(v5) = result[2];
  }

  if (v4)
  {
    memcpy((*result + 8 * v5), v3, 8 * v4);
    LODWORD(v5) = result[2];
  }

  result[2] = v5 + v4;
}

BOOL mlir::mps::verifyConvolutionInputChannels(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v35 = *MEMORY[0x1E69E9840];
  result = 1;
  if (a3 && a6)
  {
    v10 = -8;
    if (a4 == 7)
    {
      v10 = -32;
    }

    v11 = *(a2 + 8 * a3 + v10);
    if (v11 != 0x8000000000000000)
    {
      v12 = 8;
      if (a7 == 10)
      {
        v12 = 24;
      }

      v13 = *(a5 + v12);
      if (v13 != 0x8000000000000000 && v13 * a8 != v11)
      {
        v24 = "failed: inputChannels must be equal to groups * inputWeightChannels";
        v25 = 259;
        mlir::Operation::emitOpError(a1, &v24, v26);
        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
        v15 = result;
        if (v26[0])
        {
          mlir::InFlightDiagnostic::report(v26);
          result = v15;
        }

        if (v34 == 1)
        {
          if (v33 != &v34)
          {
            free(v33);
            result = v15;
          }

          v16 = __p;
          if (__p)
          {
            v17 = v32;
            v18 = __p;
            if (v32 != __p)
            {
              do
              {
                v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
              }

              while (v17 != v16);
              v18 = __p;
            }

            v32 = v16;
            operator delete(v18);
            result = v15;
          }

          v19 = v29;
          if (v29)
          {
            v20 = v30;
            v21 = v29;
            if (v30 != v29)
            {
              do
              {
                v23 = *--v20;
                v22 = v23;
                *v20 = 0;
                if (v23)
                {
                  MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
                }
              }

              while (v20 != v19);
              v21 = v29;
            }

            v30 = v19;
            operator delete(v21);
            result = v15;
          }

          if (v27 != &v28)
          {
            free(v27);
            return v15;
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::verifyConvolutionOutputChannels(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, unint64_t a8)
{
  v40 = *MEMORY[0x1E69E9840];
  result = 1;
  if (a3)
  {
    if (a6)
    {
      v10 = *(a5 + 32 * (a7 == 10));
      if (v10 != 0x8000000000000000)
      {
        v11 = -8;
        if (a4 == 7)
        {
          v11 = -32;
        }

        v12 = *(a2 + 8 * a3 + v11);
        if (v12 == 0x8000000000000000 || v10 == v12)
        {
          if (v10 % a8)
          {
            v29[0] = "failed: weights output channels needs to be divisible by groups";
            v30 = 259;
            mlir::Operation::emitOpError(a1, v29, v31);
            result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
            v14 = result;
            if (v31[0])
            {
              mlir::InFlightDiagnostic::report(v31);
              result = v14;
            }

            if (v39 == 1)
            {
              if (v38 != &v39)
              {
                free(v38);
                result = v14;
              }

              v15 = __p;
              if (__p)
              {
                v16 = v37;
                v17 = __p;
                if (v37 != __p)
                {
                  do
                  {
                    v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
                  }

                  while (v16 != v15);
                  v17 = __p;
                }

                v37 = v15;
                operator delete(v17);
                result = v14;
              }

              v18 = v34;
              if (!v34)
              {
                goto LABEL_46;
              }

              v19 = v35;
              v20 = v34;
              if (v35 == v34)
              {
                goto LABEL_45;
              }

              do
              {
                v22 = *--v19;
                v21 = v22;
                *v19 = 0;
                if (v22)
                {
                  MEMORY[0x1AC55A040](v21, 0x1000C8077774924);
                }
              }

              while (v19 != v18);
              goto LABEL_44;
            }
          }
        }

        else
        {
          v29[0] = "failed: weights output channels are inconsistent with those of the operands or result";
          v30 = 259;
          mlir::Operation::emitOpError(a1, v29, v31);
          result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
          v14 = result;
          if (v31[0])
          {
            mlir::InFlightDiagnostic::report(v31);
            result = v14;
          }

          if (v39 == 1)
          {
            if (v38 != &v39)
            {
              free(v38);
              result = v14;
            }

            v23 = __p;
            if (__p)
            {
              v24 = v37;
              v25 = __p;
              if (v37 != __p)
              {
                do
                {
                  v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
                }

                while (v24 != v23);
                v25 = __p;
              }

              v37 = v23;
              operator delete(v25);
              result = v14;
            }

            v18 = v34;
            if (!v34)
            {
              goto LABEL_46;
            }

            v26 = v35;
            v20 = v34;
            if (v35 == v34)
            {
LABEL_45:
              v35 = v18;
              operator delete(v20);
              result = v14;
LABEL_46:
              if (v32 != &v33)
              {
                free(v32);
                return v14;
              }

              return result;
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

            while (v26 != v18);
LABEL_44:
            v20 = v34;
            goto LABEL_45;
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::Conv3DOp::verify(uint64_t **this)
{
  v123[6] = *MEMORY[0x1E69E9840];
  v122[0] = v123;
  v122[1] = 0x600000000;
  v112 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
  v2 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v112);
  mlir::getIntValues<long long>(v2, v3, v122, 1);
  v4 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v5 = *(v4[12] + 8);
  if (v5 != 3)
  {
    if (v5)
    {
      goto LABEL_29;
    }

    v6 = *v122[0];
    if (*(v4[8] + 8) == 7)
    {
      if (!v6 && !*(v122[0] + 1) && !*(v122[0] + 2))
      {
        v7 = 24;
        goto LABEL_12;
      }
    }

    else if (!v6 && !*(v122[0] + 1) && !*(v122[0] + 8))
    {
      v7 = 72;
LABEL_12:
      if (*(v122[0] + v7))
      {
        goto LABEL_13;
      }

LABEL_29:
      v110[0] = v111;
      v110[1] = 0x600000000;
      v112 = v4[13];
      v17 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v112);
      mlir::getIntValues<long long>(v17, v18, v110, 1);
      if (*v110[0] != 1)
      {
        goto LABEL_46;
      }

      v19 = *this + 8;
      v20 = (*(*this + 11) >> 23) & 1;
      v21 = 32;
      if (*(v19[2 * v20] + 8) == 7)
      {
        v21 = 8;
      }

      if (*(v110[0] + v21) != 1)
      {
LABEL_46:
        v108[0] = "failed: strides incompatible with given tensor data layout.";
        v109[8] = 259;
        mlir::OpState::emitOpError(this, v108, &v112);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
        if (v112)
        {
          mlir::InFlightDiagnostic::report(&v112);
        }

        if (v121 != 1)
        {
          goto LABEL_86;
        }

        if (v120 != &v121)
        {
          free(v120);
        }

        v36 = __p;
        if (__p)
        {
          v37 = v119;
          v38 = __p;
          if (v119 != __p)
          {
            do
            {
              v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
            }

            while (v37 != v36);
            v38 = __p;
          }

          v119 = v36;
          operator delete(v38);
        }

        v39 = v116;
        if (v116)
        {
          v40 = v117;
          v41 = v116;
          if (v117 != v116)
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
            v41 = v116;
          }

          v117 = v39;
          operator delete(v41);
        }

        v53 = v114;
        if (v114 == v115)
        {
LABEL_86:
          v44 = v110[0];
          if (v110[0] == v111)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        }

LABEL_85:
        free(v53);
        goto LABEL_86;
      }

      v108[0] = v109;
      v108[1] = 0x600000000;
      v112 = v19[2 * v20 + 1];
      v22 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v112);
      mlir::getIntValues<long long>(v22, v23, v108, 1);
      if (*v108[0] != 1)
      {
        goto LABEL_66;
      }

      v24 = 32;
      if (*((*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + 8) == 7)
      {
        v24 = 8;
      }

      if (*&v108[0][v24] != 1)
      {
LABEL_66:
        v105[0] = "failed: dilation values incompatible with given tensor layout.";
        v106 = 259;
        mlir::OpState::emitOpError(this, v105, &v112);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
        if (v112)
        {
          mlir::InFlightDiagnostic::report(&v112);
        }

        if (v121 == 1)
        {
          if (v120 != &v121)
          {
            free(v120);
          }

          v45 = __p;
          if (__p)
          {
            v46 = v119;
            v47 = __p;
            if (v119 != __p)
            {
              do
              {
                v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
              }

              while (v46 != v45);
              v47 = __p;
            }

            v119 = v45;
            operator delete(v47);
          }

          v48 = v116;
          if (v116)
          {
            v49 = v117;
            v50 = v116;
            if (v117 != v116)
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
              v50 = v116;
            }

            v117 = v48;
            operator delete(v50);
          }

          if (v114 != v115)
          {
            free(v114);
          }
        }

LABEL_142:
        v53 = v108[0];
        if (v108[0] == v109)
        {
          goto LABEL_86;
        }

        goto LABEL_85;
      }

      v25 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v25)
      {
        goto LABEL_99;
      }

      v26 = *v25;
      {
        v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        if (v29)
        {
          goto LABEL_40;
        }
      }

      else
      {
        mlir::Builder::getI32VectorAttr();
        v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        if (v29)
        {
LABEL_40:
          v30 = v28;
          v31 = v29;
          do
          {
            v32 = v31 >> 1;
            v33 = &v30[2 * (v31 >> 1)];
            v35 = *v33;
            v34 = v33 + 2;
            v31 += ~(v31 >> 1);
            if (v35 < v27)
            {
              v30 = v34;
            }

            else
            {
              v31 = v32;
            }
          }

          while (v31);
LABEL_97:
          if (v30 != &v28[2 * v29] && *v30 == v27)
          {
            v55 = v30[1];
LABEL_100:
            v105[0] = v25;
            v105[1] = v55;
            v56 = (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
            if (!v56)
            {
              goto LABEL_114;
            }

            v57 = *v56;
            {
              v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v59 = *(v57 + 8);
              v60 = *(v57 + 16);
              if (v60)
              {
                goto LABEL_103;
              }
            }

            else
            {
              mlir::Builder::getI32VectorAttr();
              v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v59 = *(v57 + 8);
              v60 = *(v57 + 16);
              if (v60)
              {
LABEL_103:
                v61 = v59;
                v62 = v60;
                do
                {
                  v63 = v62 >> 1;
                  v64 = &v61[2 * (v62 >> 1)];
                  v66 = *v64;
                  v65 = v64 + 2;
                  v62 += ~(v62 >> 1);
                  if (v66 < v58)
                  {
                    v61 = v65;
                  }

                  else
                  {
                    v62 = v63;
                  }
                }

                while (v62);
LABEL_112:
                if (v61 != &v59[2 * v60] && *v61 == v58)
                {
                  v67 = v61[1];
LABEL_115:
                  v104[0] = v56;
                  v104[1] = v67;
                  v102 = *this;
                  Shape = mlir::ShapedType::getShape(v105);
                  v70 = v69;
                  v71 = *((*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + 8);
                  v72 = mlir::ShapedType::getShape(v104);
                  v74 = v73;
                  v75 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
                  v76 = *(v75[14] + 8);
                  v103[0] = v75[11];
                  mlir::IntegerAttr::getValue(v103, &v112);
                  if (v113 > 0x40)
                  {
                    v77 = *v112;
                    MEMORY[0x1AC55A040](v112);
                  }

                  else
                  {
                    v77 = v112;
                  }

                  if (!mlir::mps::verifyConvolutionInputChannels(v102, Shape, v70, v71, v72, v74, v76, v77))
                  {
                    v8 = 0;
                    goto LABEL_142;
                  }

                  if (*(*this + 9))
                  {
                    v78 = *this - 2;
                  }

                  else
                  {
                    v78 = 0;
                  }

                  v79 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v78, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
                  if (!v79)
                  {
                    goto LABEL_137;
                  }

                  v80 = *v79;
                  {
                    v81 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v82 = *(v80 + 8);
                    v83 = *(v80 + 16);
                    if (v83)
                    {
                      goto LABEL_125;
                    }
                  }

                  else
                  {
                    mlir::Builder::getI32VectorAttr();
                    v81 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v82 = *(v80 + 8);
                    v83 = *(v80 + 16);
                    if (v83)
                    {
LABEL_125:
                      v84 = v82;
                      v85 = v83;
                      do
                      {
                        v86 = v85 >> 1;
                        v87 = &v84[2 * (v85 >> 1)];
                        v89 = *v87;
                        v88 = v87 + 2;
                        v85 += ~(v85 >> 1);
                        if (v89 < v81)
                        {
                          v84 = v88;
                        }

                        else
                        {
                          v85 = v86;
                        }
                      }

                      while (v85);
LABEL_135:
                      if (v84 != &v82[2 * v83] && *v84 == v81)
                      {
                        v90 = v84[1];
                        goto LABEL_138;
                      }

LABEL_137:
                      v90 = 0;
LABEL_138:
                      v103[0] = v79;
                      v103[1] = v90;
                      v91 = *this;
                      v92 = mlir::ShapedType::getShape(v103);
                      v94 = v93;
                      v95 = *((*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + 8);
                      v96 = mlir::ShapedType::getShape(v104);
                      v98 = v97;
                      v99 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
                      v100 = *(v99[14] + 8);
                      v107 = v99[11];
                      mlir::IntegerAttr::getValue(&v107, &v112);
                      if (v113 > 0x40)
                      {
                        v101 = *v112;
                        MEMORY[0x1AC55A040]();
                      }

                      else
                      {
                        v101 = v112;
                      }

                      v8 = mlir::mps::verifyConvolutionOutputChannels(v91, v92, v94, v95, v96, v98, v100, v101);
                      goto LABEL_142;
                    }
                  }

                  v83 = 0;
                  v84 = v82;
                  goto LABEL_135;
                }

LABEL_114:
                v67 = 0;
                goto LABEL_115;
              }
            }

            v60 = 0;
            v61 = v59;
            goto LABEL_112;
          }

LABEL_99:
          v55 = 0;
          goto LABEL_100;
        }
      }

      v29 = 0;
      v30 = v28;
      goto LABEL_97;
    }
  }

LABEL_13:
  v110[0] = "failed: explicit padding incompatible with with given tensor data layout.";
  v111[8] = 259;
  mlir::OpState::emitOpError(this, v110, &v112);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
  if (v112)
  {
    mlir::InFlightDiagnostic::report(&v112);
  }

  if (v121 == 1)
  {
    if (v120 != &v121)
    {
      free(v120);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v119;
      v11 = __p;
      if (v119 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v119 = v9;
      operator delete(v11);
    }

    v12 = v116;
    if (v116)
    {
      v13 = v117;
      v14 = v116;
      if (v117 != v116)
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
        v14 = v116;
      }

      v117 = v12;
      operator delete(v14);
    }

    v44 = v114;
    if (v114 != v115)
    {
LABEL_87:
      free(v44);
    }
  }

LABEL_88:
  if (v122[0] != v123)
  {
    free(v122[0]);
  }

  return v8;
}

void mlir::mps::computeConv3DTransposeResultSpatialShape(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X4>, void *a5@<X6>, void *a6@<X8>, uint64_t a7)
{
  v7 = a2;
  *a6 = a6 + 2;
  a6[1] = 0x300000000;
  if (!a2)
  {
    return;
  }

  if (a2 < 4)
  {
    v13 = 0;
    v14 = a7;
    v15 = a2;
    goto LABEL_6;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 2, a2, 8);
  v13 = *(a6 + 2);
  v14 = a7;
  v15 = v7 - v13;
  if (v7 != v13)
  {
LABEL_6:
    bzero((*a6 + 8 * v13), 8 * v15);
  }

  *(a6 + 2) = v7;
  v16 = *a6;
  v17 = (v14 + 8);
  do
  {
    v19 = *a3++;
    v18 = v19;
    v21 = *a1++;
    v20 = v21;
    v22 = v21 == 0x8000000000000000 || v18 == 0x8000000000000000;
    v23 = 0x8000000000000000;
    if (!v22)
    {
      v23 = *a4 * (v20 - 1) + *a5 * (v18 - 1) - (*(v17 - 1) + *v17) + 1;
    }

    *v16++ = v23;
    v17 += 2;
    ++a5;
    ++a4;
    --v7;
  }

  while (v7);
}

uint64_t mlir::mps::Conv3DDataGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v140 = *MEMORY[0x1E69E9840];
  v138 = a4;
  v139 = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = a7[2];
    v17 = *(a7 + 6);
  }

  else
  {
    v17 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v127 = a6;
  LOBYTE(v128) = 0;
  v129 = 0;
  v130 = v14;
  v131 = v15;
  v132 = v16;
  v133 = v17;
  v134 = a9;
  v18 = a5;
  v135 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v127);
    if (v129 == 1)
    {
      v129 = 0;
    }

    mlir::OperationName::OperationName(&v128, "mps.conv_3d_data_gradient", 25, Context);
    v129 = 1;
    v18 = v139;
  }

  v136 = a4;
  v137 = a5;
  if (v18 >= 2)
  {
    v20 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::Conv3DDataGradientOpAdaptor::verify(&v127, v20))
    {
      v21 = mlir::ValueRange::dereference_iterator(&v138, 0);
      v22 = mlir::ValueRange::dereference_iterator(&v138, 1);
      v23 = 0;
      if (v139 >= 3)
      {
        v23 = mlir::ValueRange::dereference_iterator(&v138, 2);
      }

      v24 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
      v97 = (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
      v98 = v24;
      mlir::ValueRange::ValueRange(&v103, &v97, 2uLL);
      v124 = v126;
      v125 = 0x500000000;
      if (v23 && (mlir::matchConstantWithIntVector<long long>(v23, &v124) & 1) != 0)
      {
        v26 = v124;
        v27 = v125;
        if (!v125)
        {
          goto LABEL_73;
        }

        v28 = (v125 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        v29 = v124;
        if (v28 >= 3)
        {
          v30 = v28 + 1;
          v29 = v124 + 8 * (v30 & 0x3FFFFFFFFFFFFFFCLL);
          v31 = (v124 + 16);
          v32.i64[0] = -1;
          v32.i64[1] = -1;
          v33 = v30 & 0x3FFFFFFFFFFFFFFCLL;
          while (1)
          {
            v34 = vmovn_s64(vceqq_s64(v31[-1], v32));
            if (v34.i8[0])
            {
              v31[-1].i64[0] = 0x8000000000000000;
              if ((v34.i8[4] & 1) == 0)
              {
LABEL_20:
                v35 = vmovn_s64(vceqq_s64(*v31, v32));
                if ((v35.i8[0] & 1) == 0)
                {
                  goto LABEL_21;
                }

                goto LABEL_25;
              }
            }

            else if ((v34.i8[4] & 1) == 0)
            {
              goto LABEL_20;
            }

            v31[-1].i64[1] = 0x8000000000000000;
            v35 = vmovn_s64(vceqq_s64(*v31, v32));
            if ((v35.i8[0] & 1) == 0)
            {
LABEL_21:
              if (v35.i8[4])
              {
                goto LABEL_26;
              }

              goto LABEL_17;
            }

LABEL_25:
            v31->i64[0] = 0x8000000000000000;
            if (v35.i8[4])
            {
LABEL_26:
              v31->i64[1] = 0x8000000000000000;
            }

LABEL_17:
            v31 += 2;
            v33 -= 4;
            if (!v33)
            {
              if (v30 == (v30 & 0x3FFFFFFFFFFFFFFCLL))
              {
                goto LABEL_73;
              }

              goto LABEL_77;
            }
          }
        }

        do
        {
LABEL_77:
          if (*v29 == -1)
          {
            *v29 = 0x8000000000000000;
          }

          ++v29;
        }

        while (v29 != (v26 + 8 * v27));
LABEL_73:
        v87 = mlir::RankedTensorType::get(v26, v27, v25, 0);
        v88 = *(a11 + 8);
        if (v88 < *(a11 + 12))
        {
          goto LABEL_69;
        }
      }

      else
      {
        v92[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
        v92[1] = v40;
        v91[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
        v91[1] = v41;
        if (v92[0])
        {
          if (mlir::ElementsAttr::getShapedType(v92))
          {
            mlir::ShapedType::getShape(v92);
            if (v42 >= 5)
            {
              if (v91[0])
              {
                if (mlir::ElementsAttr::getShapedType(v91))
                {
                  mlir::ShapedType::getShape(v91);
                  if (v43 == 5)
                  {
                    Shape = mlir::ShapedType::getShape(v92);
                    v45 = *(v130 + 8) - 7;
                    v47 = Shape + 8 * v46;
                    v48 = *(v47 + qword_1A76003D0[v45]);
                    v49 = *(v47 + qword_1A76003F0[v45]);
                    v50 = *(v47 + qword_1A7600410[v45]);
                    v121 = v123;
                    v123[0] = v48;
                    v123[1] = v49;
                    v123[2] = v50;
                    *v122 = 0x300000003;
                    v51 = mlir::ShapedType::getShape(v91);
                    v52 = *(v133 + 8) - 7;
                    v54 = v51 + 8 * v53;
                    v55 = *(v54 + qword_1A76003D0[v52]);
                    v56 = *(v54 + qword_1A76003F0[v52]);
                    v57 = *(v54 + qword_1A7600410[v52]);
                    v118 = v120;
                    v120[0] = v55;
                    v120[1] = v56;
                    v120[2] = v57;
                    *v119 = 0x300000003;
                    v115 = v117;
                    v116 = 0x500000000;
                    v103 = *(&v132 + 1);
                    v58 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v103);
                    mlir::getIntValues<long long>(v58, v59, &v115, 1);
                    v60 = *(v130 + 8) - 7;
                    v61 = v115 + 8 * v116;
                    v62 = *&v61[qword_1A76003D0[v60]];
                    v63 = *&v61[qword_1A76003F0[v60]];
                    v64 = *&v61[qword_1A7600410[v60]];
                    v112 = v114;
                    v114[0] = v62;
                    v114[1] = v63;
                    v114[2] = v64;
                    *v113 = 0x300000003;
                    v109 = v111;
                    v110 = 0x500000000;
                    v103 = *(&v130 + 1);
                    v65 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v103);
                    mlir::getIntValues<long long>(v65, v66, &v109, 1);
                    v67 = *(v130 + 8) - 7;
                    v68 = v109 + 8 * v110;
                    v69 = *&v68[qword_1A76003D0[v67]];
                    v70 = *&v68[qword_1A76003F0[v67]];
                    v71 = *&v68[qword_1A7600410[v67]];
                    v106 = v108;
                    v108[0] = v69;
                    v108[1] = v70;
                    v108[2] = v71;
                    *v107 = 0x300000003;
                    v103 = v105;
                    v104 = 0xA00000000;
                    v97 = v131;
                    v72 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v97);
                    mlir::getIntValues<long long>(v72, v73, &v103, 1);
                    mlir::mps::getSpatialPaddingValues(v103, *(v130 + 8), &__src);
                    mlir::mps::computeSpatialPaddings(v121, v122[0], v118, v112, v106, &v97, __src, v101, *(v132 + 8));
                    llvm::SmallVectorImpl<mlir::Value>::operator=(&__src, &v97);
                    if (v97 != v99)
                    {
                      free(v97);
                    }

                    v97 = v99;
                    v98 = 0x500000000;
                    mlir::mps::computeConv3DTransposeResultSpatialShape(v121, v122[0], v118, v112, v106, v95, __src);
                    llvm::SmallVectorImpl<mlir::Value>::operator=(&v97, v95);
                    if (v95[0] != v96)
                    {
                      free(v95[0]);
                    }

                    v74 = mlir::ShapedType::getShape(v92);
                    v76 = *(v74 + 8 * v75 - 40);
                    v77 = mlir::ShapedType::getShape(v91);
                    v79 = -32;
                    if (*(v133 + 8) == 10)
                    {
                      v79 = -16;
                    }

                    v80 = *(v77 + 8 * v78 + v79);
                    Groups = mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::getGroups(&v127);
                    v95[0] = v76;
                    v95[1] = (Groups * v80);
                    v96[0] = *(v97 + 2);
                    v96[1] = *(v97 + 1);
                    v96[2] = *v97;
                    llvm::SmallVector<long long,5u>::operator=(&v124, v95, 5);
                    mlir::mps::convertNCDHWShapeToLayout(v124, v125, *(v130 + 8), v95);
                    llvm::SmallVectorImpl<mlir::Value>::operator=(&v124, v95);
                    if (v95[0] != v96)
                    {
                      free(v95[0]);
                    }

                    mlir::ShapedType::getShape(v92);
                    if (v82 >= 6)
                    {
                      llvm::SmallVector<long long,5u>::SmallVector(v95, &v124);
                      v83 = mlir::ShapedType::getShape(v92);
                      v84 = mlir::ShapedType::getShape(v92);
                      llvm::SmallVector<long long,5u>::SmallVector<long long const*,void>(v93, v83, (v84 + 8 * v85 - 40));
                      llvm::SmallVectorImpl<mlir::Value>::operator=(&v124, v93);
                      if (v93[0] != &v94)
                      {
                        free(v93[0]);
                      }

                      llvm::SmallVectorImpl<long long>::append(&v124, v95);
                      if (v95[0] != v96)
                      {
                        free(v95[0]);
                      }
                    }

                    v86 = mlir::RankedTensorType::get(v124, v125, v25, 0);
                    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v86);
                    if (v97 != v99)
                    {
                      free(v97);
                    }

                    if (__src != &v102)
                    {
                      free(__src);
                    }

                    if (v103 != v105)
                    {
                      free(v103);
                    }

                    if (v106 != v108)
                    {
                      free(v106);
                    }

                    if (v109 != v111)
                    {
                      free(v109);
                    }

                    if (v112 != v114)
                    {
                      free(v112);
                    }

                    if (v115 != v117)
                    {
                      free(v115);
                    }

                    if (v118 != v120)
                    {
                      free(v118);
                    }

                    if (v121 != v123)
                    {
                      free(v121);
                    }

                    goto LABEL_70;
                  }
                }
              }
            }
          }
        }

        v87 = mlir::UnrankedTensorType::get(v25);
        v88 = *(a11 + 8);
        if (v88 < *(a11 + 12))
        {
LABEL_69:
          *(*a11 + 8 * v88) = v87;
          ++*(a11 + 8);
LABEL_70:
          if (v124 != v126)
          {
            free(v124);
          }

          return 1;
        }
      }

      v89 = v87;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v88 + 1, 8);
      v87 = v89;
      LODWORD(v88) = *(a11 + 8);
      goto LABEL_69;
    }
  }

  v36 = mlir::Float32Type::get(this, a2);
  v37 = mlir::UnrankedTensorType::get(v36);
  v38 = *(a11 + 8);
  if (v38 >= *(a11 + 12))
  {
    v90 = v37;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v38 + 1, 8);
    v37 = v90;
    LODWORD(v38) = *(a11 + 8);
  }

  *(*a11 + 8 * v38) = v37;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::Conv3DDataGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  if (!v3)
  {
    v58 = "'mps.conv_3d_data_gradient' op requires attribute 'data_layout'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v70;
      v25 = __p;
      if (v70 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v70 = v23;
      operator delete(v25);
    }

    v26 = v67;
    if (v67)
    {
      v27 = v68;
      v28 = v67;
      if (v68 != v67)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v57 = a1[4];
  if (!v57)
  {
    v58 = "'mps.conv_3d_data_gradient' op requires attribute 'dilation_rates'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v70;
      v33 = __p;
      if (v70 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v70 = v31;
      operator delete(v33);
    }

    v26 = v67;
    if (v67)
    {
      v34 = v68;
      v28 = v67;
      if (v68 != v67)
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

        while (v34 != v26);
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v56 = a1[5];
  if (!v56)
  {
    v58 = "'mps.conv_3d_data_gradient' op requires attribute 'explicit_padding'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v70;
      v39 = __p;
      if (v70 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v70 = v37;
      operator delete(v39);
    }

    v26 = v67;
    if (v67)
    {
      v40 = v68;
      v28 = v67;
      if (v68 != v67)
      {
        do
        {
          v42 = *--v40;
          v41 = v42;
          *v40 = 0;
          if (v42)
          {
            MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
          }
        }

        while (v40 != v26);
        goto LABEL_91;
      }

LABEL_92:
      v68 = v26;
      operator delete(v28);
    }

LABEL_93:
    if (v65 != &v66)
    {
      free(v65);
    }

    return v22;
  }

  v4 = a1[6];
  if (!v4)
  {
    v58 = "'mps.conv_3d_data_gradient' op requires attribute 'groups'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v26 = v67;
    if (v67)
    {
      v46 = v68;
      v28 = v67;
      if (v68 != v67)
      {
        do
        {
          v48 = *--v46;
          v47 = v48;
          *v46 = 0;
          if (v48)
          {
            MEMORY[0x1AC55A040](v47, 0x1000C8077774924);
          }
        }

        while (v46 != v26);
LABEL_91:
        v28 = v67;
        goto LABEL_92;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  if (a1[7])
  {
    v55 = a1[8];
    if (v55)
    {
      v5 = a1[9];
      if (v5)
      {
        v58 = v4;
        Value = mlir::AffineMapAttr::getValue(&v58);
        if (mlir::Type::isUnsignedInteger(&Value, 64))
        {
          v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v55);
          v59 = v6;
          v51[0] = mlir::ElementsAttr::getType(&v58);
          Value = mlir::BaseMemRefType::operator mlir::ShapedType(v51);
          v64 = v7;
          Shape = mlir::ShapedType::getShape(&Value);
          Type = 5;
          if (v9 == 1 && *Shape == Type && (isSplat = v55, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::Location)::$_0>(&isSplat)) && (v52 = v55, *&v61 = mlir::ArrayAttr::getValue(&v52), *(&v61 + 1) = v10, v53 = mlir::ElementsAttr::isSplat(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
          {
            v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v57);
            v59 = v11;
            v51[0] = mlir::ElementsAttr::getType(&v58);
            Value = mlir::BaseMemRefType::operator mlir::ShapedType(v51);
            v64 = v12;
            v13 = mlir::ShapedType::getShape(&Value);
            Type = 5;
            if (v14 == 1 && *v13 == Type && (isSplat = v57, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::Location)::$_0>(&isSplat)) && (v52 = v57, *&v61 = mlir::ArrayAttr::getValue(&v52), *(&v61 + 1) = v15, v53 = mlir::ElementsAttr::isSplat(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
            {
              v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v56);
              v59 = v16;
              Type = mlir::ElementsAttr::getType(&v58);
              Value = mlir::BaseMemRefType::operator mlir::ShapedType(&Type);
              v64 = v17;
              v18 = mlir::ShapedType::getShape(&Value);
              v61 = xmmword_1A75EA150;
              if (v19 == 2 && (*v18 == v61 ? (v20 = v18[1] == *(&v61 + 1)) : (v20 = 0), v20 && (v53 = v56, v51[0] = mlir::ArrayAttr::getValue(&v53), v51[1] = v21, isSplat = mlir::ElementsAttr::isSplat(v51), mlir::Type::isUnsignedInteger(&isSplat, 64))))
              {
                if ((*(v3 + 8) - 7) >= 2)
                {
                  v49 = "'mps.conv_3d_data_gradient' op attribute 'data_layout' failed to satisfy constraint: valid TensorDataLayout is one of NDHWC or NCDHW";
                }

                else
                {
                  if ((*(v5 + 8) - 9) < 2)
                  {
                    return 1;
                  }

                  v49 = "'mps.conv_3d_data_gradient' op attribute 'weights_layout' failed to satisfy constraint: valid TensorDataLayout is one of DHWIO or OIDHW";
                }
              }

              else
              {
                v49 = "'mps.conv_3d_data_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {5, 2}";
              }
            }

            else
            {
              v49 = "'mps.conv_3d_data_gradient' op attribute 'dilation_rates' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
            }
          }

          else
          {
            v49 = "'mps.conv_3d_data_gradient' op attribute 'strides' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
          }
        }

        else
        {
          v49 = "'mps.conv_3d_data_gradient' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v49 = "'mps.conv_3d_data_gradient' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v49 = "'mps.conv_3d_data_gradient' op requires attribute 'strides'";
    }

    v58 = v49;
    v60 = 259;
    mlir::emitError(a2, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
    return v22;
  }

  v58 = "'mps.conv_3d_data_gradient' op requires attribute 'padding_style'";
  v60 = 259;
  mlir::emitError(a2, &v58, &Value);
  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v72 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v64);
  }

  return v22;
}

uint64_t *mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::getGroups(mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase *this)
{
  v5 = *(this + 6);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x1AC55A040]();
  return v2;
}

uint64_t llvm::SmallVector<long long,5u>::operator=(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = 0;
  *(a1 + 8) = 0;
  v6 = (8 * a3) >> 3;
  if (v6 > *(a1 + 12))
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8);
    a2 = v7;
    v5 = *(a1 + 8);
  }

  if (a3)
  {
    memcpy((*a1 + 8 * v5), a2, 8 * a3);
    v5 = *(a1 + 8);
  }

  *(a1 + 8) = v5 + a3;
  return a1;
}

BOOL mlir::mps::verifyConvolutionBatches(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = 1;
  if (!a3 || !a5)
  {
    return v5;
  }

  if (a3 == a5)
  {
    v6 = a3 - 4;
    if (a3 != 4)
    {
      while (1)
      {
        v8 = *a2++;
        v7 = v8;
        v37 = v8;
        v10 = *a4++;
        v9 = v10;
        v36 = v10;
        v11 = v37 == 0x8000000000000000 || v9 == 0x8000000000000000;
        if (!v11 && v7 != v9)
        {
          break;
        }

        if (!--v6)
        {
          return 1;
        }
      }

      v29[0] = "failed: input batch {0} differs from output batch {1}";
      v29[1] = 53;
      v29[2] = v33;
      v29[3] = 2;
      LOBYTE(v30) = 1;
      v31[0] = &unk_1F1A177C0;
      v31[1] = &v37;
      v32[0] = &unk_1F1A177C0;
      v32[1] = &v36;
      v33[0] = v31;
      v33[1] = v32;
      v35 = 263;
      v34 = v29;
      mlir::Operation::emitOpError(a1, &v34, v38);
      v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
      v5 = v21;
      if (v38[0])
      {
        mlir::InFlightDiagnostic::report(v38);
      }

      if (v46 == 1)
      {
        if (v45 != &v46)
        {
          free(v45);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v44;
          v24 = __p;
          if (v44 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v44 = v22;
          operator delete(v24);
        }

        v16 = v41;
        if (!v41)
        {
          goto LABEL_49;
        }

        v25 = v42;
        v18 = v41;
        if (v42 == v41)
        {
LABEL_48:
          v42 = v16;
          operator delete(v18);
LABEL_49:
          if (v39 != &v40)
          {
            free(v39);
          }

          return v5;
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

        while (v25 != v16);
LABEL_47:
        v18 = v41;
        goto LABEL_48;
      }
    }
  }

  else
  {
    v29[0] = "failed: number of batches are inconsistent between input and output";
    v30 = 259;
    mlir::Operation::emitOpError(a1, v29, v38);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v44;
        v15 = __p;
        if (v44 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v44 = v13;
        operator delete(v15);
      }

      v16 = v41;
      if (!v41)
      {
        goto LABEL_49;
      }

      v17 = v42;
      v18 = v41;
      if (v42 == v41)
      {
        goto LABEL_48;
      }

      do
      {
        v20 = *--v17;
        v19 = v20;
        *v17 = 0;
        if (v20)
        {
          MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
        }
      }

      while (v17 != v16);
      goto LABEL_47;
    }
  }

  return v5;
}

BOOL mlir::mps::Conv3DDataGradientOp::verify(uint64_t **this)
{
  v141[6] = *MEMORY[0x1E69E9840];
  v140[0] = v141;
  v140[1] = 0x600000000;
  v129 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
  v2 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v129);
  mlir::getIntValues<long long>(v2, v3, v140, 1);
  v4 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v5 = *(v4[12] + 8);
  if (v5 != 3)
  {
    if (v5)
    {
      goto LABEL_29;
    }

    v6 = *v140[0];
    if (*(v4[8] + 8) == 7)
    {
      if (!v6 && !*(v140[0] + 1) && !*(v140[0] + 2))
      {
        v7 = 24;
        goto LABEL_12;
      }
    }

    else if (!v6 && !*(v140[0] + 1) && !*(v140[0] + 8))
    {
      v7 = 72;
LABEL_12:
      if (*(v140[0] + v7))
      {
        goto LABEL_13;
      }

LABEL_29:
      v127[0] = v128;
      v127[1] = 0x600000000;
      v129 = v4[13];
      v17 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v129);
      mlir::getIntValues<long long>(v17, v18, v127, 1);
      if (*v127[0] != 1)
      {
        goto LABEL_46;
      }

      v19 = *this + 8;
      v20 = (*(*this + 11) >> 23) & 1;
      v21 = 32;
      if (*(v19[2 * v20] + 8) == 7)
      {
        v21 = 8;
      }

      if (*(v127[0] + v21) != 1)
      {
LABEL_46:
        v125[0] = "failed: strides incompatible with given tensor data layout.";
        v126[8] = 259;
        mlir::OpState::emitOpError(this, v125, &v129);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v129);
        if (v129)
        {
          mlir::InFlightDiagnostic::report(&v129);
        }

        if (v139 != 1)
        {
          goto LABEL_86;
        }

        if (v138 != &v139)
        {
          free(v138);
        }

        v36 = __p;
        if (__p)
        {
          v37 = v137;
          v38 = __p;
          if (v137 != __p)
          {
            do
            {
              v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
            }

            while (v37 != v36);
            v38 = __p;
          }

          v137 = v36;
          operator delete(v38);
        }

        v39 = v134;
        if (v134)
        {
          v40 = v135;
          v41 = v134;
          if (v135 != v134)
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
            v41 = v134;
          }

          v135 = v39;
          operator delete(v41);
        }

        v53 = v132;
        if (v132 == v133)
        {
LABEL_86:
          v44 = v127[0];
          if (v127[0] == v128)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        }

LABEL_85:
        free(v53);
        goto LABEL_86;
      }

      v125[0] = v126;
      v125[1] = 0x600000000;
      v129 = v19[2 * v20 + 1];
      v22 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v129);
      mlir::getIntValues<long long>(v22, v23, v125, 1);
      if (*v125[0] != 1)
      {
        goto LABEL_66;
      }

      v24 = 32;
      if (*((*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + 8) == 7)
      {
        v24 = 8;
      }

      if (*&v125[0][v24] != 1)
      {
LABEL_66:
        v121 = "failed: dilation values incompatible with given tensor layout.";
        v123 = 259;
        mlir::OpState::emitOpError(this, &v121, &v129);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v129);
        if (v129)
        {
          mlir::InFlightDiagnostic::report(&v129);
        }

        if (v139 != 1)
        {
LABEL_155:
          v53 = v125[0];
          if (v125[0] == v126)
          {
            goto LABEL_86;
          }

          goto LABEL_85;
        }

        if (v138 != &v139)
        {
          free(v138);
        }

        v45 = __p;
        if (__p)
        {
          v46 = v137;
          v47 = __p;
          if (v137 != __p)
          {
            do
            {
              v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
            }

            while (v46 != v45);
            v47 = __p;
          }

          v137 = v45;
          operator delete(v47);
        }

        v48 = v134;
        if (v134)
        {
          v49 = v135;
          v50 = v134;
          if (v135 != v134)
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
            v50 = v134;
          }

          v135 = v48;
          operator delete(v50);
        }

        v55 = v132;
        v56 = v133;
LABEL_153:
        if (v55 != v56)
        {
          free(v55);
        }

        goto LABEL_155;
      }

      v25 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v25)
      {
        goto LABEL_98;
      }

      v26 = *v25;
      {
        v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        if (v29)
        {
          goto LABEL_40;
        }
      }

      else
      {
        mlir::Builder::getI32VectorAttr();
        v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        if (v29)
        {
LABEL_40:
          v30 = v28;
          v31 = v29;
          do
          {
            v32 = v31 >> 1;
            v33 = &v30[2 * (v31 >> 1)];
            v35 = *v33;
            v34 = v33 + 2;
            v31 += ~(v31 >> 1);
            if (v35 < v27)
            {
              v30 = v34;
            }

            else
            {
              v31 = v32;
            }
          }

          while (v31);
LABEL_96:
          if (v30 != &v28[2 * v29] && *v30 == v27)
          {
            v57 = v30[1];
LABEL_99:
            v120[0] = v25;
            v120[1] = v57;
            v58 = (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
            if (!v58)
            {
              goto LABEL_113;
            }

            v59 = *v58;
            {
              v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v61 = *(v59 + 8);
              v62 = *(v59 + 16);
              if (v62)
              {
                goto LABEL_102;
              }
            }

            else
            {
              mlir::Builder::getI32VectorAttr();
              v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v61 = *(v59 + 8);
              v62 = *(v59 + 16);
              if (v62)
              {
LABEL_102:
                v63 = v61;
                v64 = v62;
                do
                {
                  v65 = v64 >> 1;
                  v66 = &v63[2 * (v64 >> 1)];
                  v68 = *v66;
                  v67 = v66 + 2;
                  v64 += ~(v64 >> 1);
                  if (v68 < v60)
                  {
                    v63 = v67;
                  }

                  else
                  {
                    v64 = v65;
                  }
                }

                while (v64);
LABEL_111:
                if (v63 != &v61[2 * v62] && *v63 == v60)
                {
                  v69 = v63[1];
LABEL_114:
                  v119[0] = v58;
                  v119[1] = v69;
                  if (*(*this + 9))
                  {
                    v70 = *this - 2;
                  }

                  else
                  {
                    v70 = 0;
                  }

                  v71 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v70, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
                  if (!v71)
                  {
                    goto LABEL_131;
                  }

                  v72 = *v71;
                  {
                    v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v74 = *(v72 + 8);
                    v75 = *(v72 + 16);
                    if (v75)
                    {
                      goto LABEL_120;
                    }
                  }

                  else
                  {
                    mlir::Builder::getI32VectorAttr();
                    v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v74 = *(v72 + 8);
                    v75 = *(v72 + 16);
                    if (v75)
                    {
LABEL_120:
                      v76 = v74;
                      v77 = v75;
                      do
                      {
                        v78 = v77 >> 1;
                        v79 = &v76[2 * (v77 >> 1)];
                        v81 = *v79;
                        v80 = v79 + 2;
                        v77 += ~(v77 >> 1);
                        if (v81 < v73)
                        {
                          v76 = v80;
                        }

                        else
                        {
                          v77 = v78;
                        }
                      }

                      while (v77);
LABEL_129:
                      if (v76 != &v74[2 * v75] && *v76 == v73)
                      {
                        v82 = v76[1];
                        goto LABEL_132;
                      }

LABEL_131:
                      v82 = 0;
LABEL_132:
                      v118[0] = v71;
                      v118[1] = v82;
                      Shape = mlir::ShapedType::getShape(v118);
                      v84 = mlir::ShapedType::getShape(v118);
                      v86 = (v84 + 8 * v85);
                      v129 = &v131;
                      v130 = 0x500000000;
                      v87 = (v86 - Shape) >> 3;
                      if (v87 < 6)
                      {
                        v88 = 0;
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, &v131, v87, 8);
                        v88 = v130;
                      }

                      if (v86 != Shape)
                      {
                        memcpy(v129 + 8 * v88, Shape, v86 - Shape);
                        v88 = v130;
                      }

                      LODWORD(v130) = v88 + ((v86 - Shape) >> 3);
                      v117 = 0;
                      if (*(*this + 17) != 2)
                      {
                        v89 = *((*this)[9] + 88);
                        if (v89)
                        {
                          v124 = &v117;
                          v121 = v89;
                          DefiningOp = mlir::Value::getDefiningOp(&v121);
                          if (DefiningOp)
                          {
                            if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v124, DefiningOp))
                            {
                              LODWORD(v130) = 0;
                              v91 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v117);
                              mlir::getIntValues<long long>(v91, v92, &v129, 1);
                            }
                          }
                        }
                      }

                      v93 = *this;
                      v115 = v129;
                      v94 = v130;
                      v95 = *(v93[2 * ((*(v93 + 11) >> 23) & 1) + 8] + 8);
                      v96 = mlir::ShapedType::getShape(v119);
                      v98 = v97;
                      v99 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
                      v100 = *(v99[14] + 8);
                      v124 = v99[11];
                      mlir::IntegerAttr::getValue(&v124, &v121);
                      if (v122 > 0x40)
                      {
                        v101 = *v121;
                        MEMORY[0x1AC55A040]();
                      }

                      else
                      {
                        v101 = v121;
                      }

                      if (!mlir::mps::verifyConvolutionInputChannels(v93, v115, v94, v95, v96, v98, v100, v101))
                      {
                        goto LABEL_151;
                      }

                      v116 = *this;
                      v102 = mlir::ShapedType::getShape(v120);
                      v104 = v103;
                      v105 = *((*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + 8);
                      v106 = mlir::ShapedType::getShape(v119);
                      v108 = v107;
                      v109 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
                      v110 = *(v109[14] + 8);
                      v124 = v109[11];
                      mlir::IntegerAttr::getValue(&v124, &v121);
                      if (v122 > 0x40)
                      {
                        v111 = *v121;
                        MEMORY[0x1AC55A040]();
                      }

                      else
                      {
                        v111 = v121;
                      }

                      if (mlir::mps::verifyConvolutionOutputChannels(v116, v102, v104, v105, v106, v108, v110, v111))
                      {
                        v112 = *this;
                        v113 = mlir::ShapedType::getShape(v120);
                        v8 = mlir::mps::verifyConvolutionBatches(v112, v113, v114, v129, v130);
                      }

                      else
                      {
LABEL_151:
                        v8 = 0;
                      }

                      v56 = &v131;
                      v55 = v129;
                      goto LABEL_153;
                    }
                  }

                  v75 = 0;
                  v76 = v74;
                  goto LABEL_129;
                }

LABEL_113:
                v69 = 0;
                goto LABEL_114;
              }
            }

            v62 = 0;
            v63 = v61;
            goto LABEL_111;
          }

LABEL_98:
          v57 = 0;
          goto LABEL_99;
        }
      }

      v29 = 0;
      v30 = v28;
      goto LABEL_96;
    }
  }

LABEL_13:
  v127[0] = "failed: explicit padding incompatible with with given tensor data layout.";
  v128[8] = 259;
  mlir::OpState::emitOpError(this, v127, &v129);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v129);
  if (v129)
  {
    mlir::InFlightDiagnostic::report(&v129);
  }

  if (v139 == 1)
  {
    if (v138 != &v139)
    {
      free(v138);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v137;
      v11 = __p;
      if (v137 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v137 = v9;
      operator delete(v11);
    }

    v12 = v134;
    if (v134)
    {
      v13 = v135;
      v14 = v134;
      if (v135 != v134)
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
        v14 = v134;
      }

      v135 = v12;
      operator delete(v14);
    }

    v44 = v132;
    if (v132 != v133)
    {
LABEL_87:
      free(v44);
    }
  }

LABEL_88:
  if (v140[0] != v141)
  {
    free(v140[0]);
  }

  return v8;
}

uint64_t mlir::mps::Conv3DWeightsGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v59[2] = *MEMORY[0x1E69E9840];
  v59[0] = a4;
  v59[1] = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = a7[2];
    v17 = *(a7 + 6);
  }

  else
  {
    v17 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v48 = a6;
  LOBYTE(v49) = 0;
  v50 = 0;
  v51 = v14;
  v52 = v15;
  v53 = v16;
  v54 = v17;
  v55 = a9;
  v56 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v48);
    if (v50 == 1)
    {
      v50 = 0;
    }

    mlir::OperationName::OperationName(&v49, "mps.conv_3d_weights_gradient", 28, Context);
    v50 = 1;
  }

  v57 = a4;
  v58 = a5;
  v43 = 0;
  if (a5 < 3 || (v19 = mlir::UnknownLoc::get(this, a2), !mlir::mps::Conv3DWeightsGradientOpAdaptor::verify(&v48, v19)))
  {
    v35 = mlir::Float32Type::get(this, a2);
    v36 = mlir::UnrankedTensorType::get(v35);
    v37 = *(a11 + 8);
    if (v37 >= *(a11 + 12))
    {
LABEL_29:
      v39 = v36;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v37 + 1, 8);
      v36 = v39;
      LODWORD(v37) = *(a11 + 8);
    }

LABEL_26:
    *(*a11 + 8 * v37) = v36;
    ++*(a11 + 8);
    return 1;
  }

  v47[0] = (*(mlir::ValueRange::dereference_iterator(v59, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v47[1] = (*(mlir::ValueRange::dereference_iterator(v59, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ValueRange::ValueRange(&v44, v47, 2uLL);
  v44 = v57;
  v45 = 2;
  v44 = mlir::ValueRange::offset_base(&v44, 2);
  v45 = 0;
  v21 = mlir::ValueRange::dereference_iterator(&v44, 0);
  v47[0] = &v43;
  v44 = v21;
  DefiningOp = mlir::Value::getDefiningOp(&v44);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v47, DefiningOp) & 1) == 0)
  {
    v36 = mlir::UnrankedTensorType::get(v20);
    v37 = *(a11 + 8);
    if (v37 >= *(a11 + 12))
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v44 = v46;
  v45 = 0x500000000;
  v23 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v43);
  mlir::getIntValues<long long>(v23, v24, &v44, 1);
  v25 = v44;
  v26 = v45;
  if (!v45)
  {
    goto LABEL_31;
  }

  v27 = (v45 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v28 = v44;
  if (v27 >= 3)
  {
    v29 = v27 + 1;
    v28 = v44 + 8 * (v29 & 0x3FFFFFFFFFFFFFFCLL);
    v30 = (v44 + 16);
    v31.i64[0] = -1;
    v31.i64[1] = -1;
    v32 = v29 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v33 = vmovn_s64(vceqq_s64(v30[-1], v31));
      if (v33.i8[0])
      {
        v30[-1].i64[0] = 0x8000000000000000;
        if ((v33.i8[4] & 1) == 0)
        {
LABEL_18:
          v34 = vmovn_s64(vceqq_s64(*v30, v31));
          if ((v34.i8[0] & 1) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }
      }

      else if ((v33.i8[4] & 1) == 0)
      {
        goto LABEL_18;
      }

      v30[-1].i64[1] = 0x8000000000000000;
      v34 = vmovn_s64(vceqq_s64(*v30, v31));
      if ((v34.i8[0] & 1) == 0)
      {
LABEL_19:
        if (v34.i8[4])
        {
          goto LABEL_24;
        }

        goto LABEL_15;
      }

LABEL_23:
      v30->i64[0] = 0x8000000000000000;
      if (v34.i8[4])
      {
LABEL_24:
        v30->i64[1] = 0x8000000000000000;
      }

LABEL_15:
      v30 += 2;
      v32 -= 4;
      if (!v32)
      {
        if (v29 == (v29 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_31;
        }

        goto LABEL_37;
      }
    }
  }

  do
  {
LABEL_37:
    if (*v28 == -1)
    {
      *v28 = 0x8000000000000000;
    }

    ++v28;
  }

  while (v28 != (v25 + 8 * v26));
LABEL_31:
  v40 = mlir::RankedTensorType::get(v25, v26, v20, 0);
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
  if (v44 != v46)
  {
    free(v44);
  }

  return 1;
}

BOOL mlir::mps::Conv3DWeightsGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  if (!v3)
  {
    v58 = "'mps.conv_3d_weights_gradient' op requires attribute 'data_layout'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v70;
      v25 = __p;
      if (v70 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v70 = v23;
      operator delete(v25);
    }

    v26 = v67;
    if (v67)
    {
      v27 = v68;
      v28 = v67;
      if (v68 != v67)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v57 = a1[4];
  if (!v57)
  {
    v58 = "'mps.conv_3d_weights_gradient' op requires attribute 'dilation_rates'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v70;
      v33 = __p;
      if (v70 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v70 = v31;
      operator delete(v33);
    }

    v26 = v67;
    if (v67)
    {
      v34 = v68;
      v28 = v67;
      if (v68 != v67)
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

        while (v34 != v26);
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v56 = a1[5];
  if (!v56)
  {
    v58 = "'mps.conv_3d_weights_gradient' op requires attribute 'explicit_padding'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v70;
      v39 = __p;
      if (v70 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v70 = v37;
      operator delete(v39);
    }

    v26 = v67;
    if (v67)
    {
      v40 = v68;
      v28 = v67;
      if (v68 != v67)
      {
        do
        {
          v42 = *--v40;
          v41 = v42;
          *v40 = 0;
          if (v42)
          {
            MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
          }
        }

        while (v40 != v26);
        goto LABEL_91;
      }

LABEL_92:
      v68 = v26;
      operator delete(v28);
    }

LABEL_93:
    if (v65 != &v66)
    {
      free(v65);
    }

    return v22;
  }

  v4 = a1[6];
  if (!v4)
  {
    v58 = "'mps.conv_3d_weights_gradient' op requires attribute 'groups'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v26 = v67;
    if (v67)
    {
      v46 = v68;
      v28 = v67;
      if (v68 != v67)
      {
        do
        {
          v48 = *--v46;
          v47 = v48;
          *v46 = 0;
          if (v48)
          {
            MEMORY[0x1AC55A040](v47, 0x1000C8077774924);
          }
        }

        while (v46 != v26);
LABEL_91:
        v28 = v67;
        goto LABEL_92;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  if (a1[7])
  {
    v55 = a1[8];
    if (v55)
    {
      v5 = a1[9];
      if (v5)
      {
        v58 = v4;
        Value = mlir::AffineMapAttr::getValue(&v58);
        if (mlir::Type::isUnsignedInteger(&Value, 64))
        {
          v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v55);
          v59 = v6;
          v51[0] = mlir::ElementsAttr::getType(&v58);
          Value = mlir::BaseMemRefType::operator mlir::ShapedType(v51);
          v64 = v7;
          Shape = mlir::ShapedType::getShape(&Value);
          Type = 5;
          if (v9 == 1 && *Shape == Type && (isSplat = v55, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::Location)::$_0>(&isSplat)) && (v52 = v55, *&v61 = mlir::ArrayAttr::getValue(&v52), *(&v61 + 1) = v10, v53 = mlir::ElementsAttr::isSplat(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
          {
            v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v57);
            v59 = v11;
            v51[0] = mlir::ElementsAttr::getType(&v58);
            Value = mlir::BaseMemRefType::operator mlir::ShapedType(v51);
            v64 = v12;
            v13 = mlir::ShapedType::getShape(&Value);
            Type = 5;
            if (v14 == 1 && *v13 == Type && (isSplat = v57, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::Location)::$_0>(&isSplat)) && (v52 = v57, *&v61 = mlir::ArrayAttr::getValue(&v52), *(&v61 + 1) = v15, v53 = mlir::ElementsAttr::isSplat(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
            {
              v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v56);
              v59 = v16;
              Type = mlir::ElementsAttr::getType(&v58);
              Value = mlir::BaseMemRefType::operator mlir::ShapedType(&Type);
              v64 = v17;
              v18 = mlir::ShapedType::getShape(&Value);
              v61 = xmmword_1A75EA150;
              if (v19 == 2 && (*v18 == v61 ? (v20 = v18[1] == *(&v61 + 1)) : (v20 = 0), v20 && (v53 = v56, v51[0] = mlir::ArrayAttr::getValue(&v53), v51[1] = v21, isSplat = mlir::ElementsAttr::isSplat(v51), mlir::Type::isUnsignedInteger(&isSplat, 64))))
              {
                if ((*(v3 + 8) - 7) >= 2)
                {
                  v49 = "'mps.conv_3d_weights_gradient' op attribute 'data_layout' failed to satisfy constraint: valid TensorDataLayout is one of NDHWC or NCDHW";
                }

                else
                {
                  if ((*(v5 + 8) - 9) < 2)
                  {
                    return 1;
                  }

                  v49 = "'mps.conv_3d_weights_gradient' op attribute 'weights_layout' failed to satisfy constraint: valid TensorDataLayout is one of DHWIO or OIDHW";
                }
              }

              else
              {
                v49 = "'mps.conv_3d_weights_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {5, 2}";
              }
            }

            else
            {
              v49 = "'mps.conv_3d_weights_gradient' op attribute 'dilation_rates' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
            }
          }

          else
          {
            v49 = "'mps.conv_3d_weights_gradient' op attribute 'strides' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
          }
        }

        else
        {
          v49 = "'mps.conv_3d_weights_gradient' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v49 = "'mps.conv_3d_weights_gradient' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v49 = "'mps.conv_3d_weights_gradient' op requires attribute 'strides'";
    }

    v58 = v49;
    v60 = 259;
    mlir::emitError(a2, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
    return v22;
  }

  v58 = "'mps.conv_3d_weights_gradient' op requires attribute 'padding_style'";
  v60 = 259;
  mlir::emitError(a2, &v58, &Value);
  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v72 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v64);
  }

  return v22;
}

BOOL mlir::mps::Conv3DWeightsGradientOp::verify(uint64_t **this)
{
  v146[6] = *MEMORY[0x1E69E9840];
  v145[0] = v146;
  v145[1] = 0x600000000;
  v134 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
  v2 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v134);
  mlir::getIntValues<long long>(v2, v3, v145, 1);
  v4 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v5 = *(v4[12] + 8);
  if (v5 != 3)
  {
    if (v5)
    {
      goto LABEL_29;
    }

    v6 = *v145[0];
    if (*(v4[8] + 8) == 7)
    {
      if (!v6 && !*(v145[0] + 1) && !*(v145[0] + 2))
      {
        v7 = 24;
        goto LABEL_12;
      }
    }

    else if (!v6 && !*(v145[0] + 1) && !*(v145[0] + 8))
    {
      v7 = 72;
LABEL_12:
      if (*(v145[0] + v7))
      {
        goto LABEL_13;
      }

LABEL_29:
      v132[0] = v133;
      v132[1] = 0x600000000;
      v134 = v4[13];
      v17 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v134);
      mlir::getIntValues<long long>(v17, v18, v132, 1);
      if (*v132[0] != 1)
      {
        goto LABEL_49;
      }

      v19 = *this + 8;
      v20 = (*(*this + 11) >> 23) & 1;
      v21 = 32;
      if (*(v19[2 * v20] + 8) == 7)
      {
        v21 = 8;
      }

      if (*(v132[0] + v21) != 1)
      {
LABEL_49:
        v130[0] = "failed: strides incompatible with given tensor data layout.";
        v131[8] = 259;
        mlir::OpState::emitOpError(this, v130, &v134);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v134);
        if (v134)
        {
          mlir::InFlightDiagnostic::report(&v134);
        }

        if (v144 != 1)
        {
          goto LABEL_89;
        }

        if (v143 != &v144)
        {
          free(v143);
        }

        v40 = __p;
        if (__p)
        {
          v41 = v142;
          v42 = __p;
          if (v142 != __p)
          {
            do
            {
              v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
            }

            while (v41 != v40);
            v42 = __p;
          }

          v142 = v40;
          operator delete(v42);
        }

        v43 = v139;
        if (v139)
        {
          v44 = v140;
          v45 = v139;
          if (v140 != v139)
          {
            do
            {
              v47 = *--v44;
              v46 = v47;
              *v44 = 0;
              if (v47)
              {
                MEMORY[0x1AC55A040](v46, 0x1000C8077774924);
              }
            }

            while (v44 != v43);
            v45 = v139;
          }

          v140 = v43;
          operator delete(v45);
        }

        v57 = v137;
        if (v137 == v138)
        {
LABEL_89:
          v48 = v132[0];
          if (v132[0] == v133)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }

LABEL_88:
        free(v57);
        goto LABEL_89;
      }

      v130[0] = v131;
      v130[1] = 0x600000000;
      v134 = v19[2 * v20 + 1];
      v22 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v134);
      mlir::getIntValues<long long>(v22, v23, v130, 1);
      if (*v130[0] != 1)
      {
        goto LABEL_69;
      }

      v24 = *this;
      v25 = 32;
      if (*((*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + 8) == 7)
      {
        v25 = 8;
      }

      if (*&v130[0][v25] != 1)
      {
LABEL_69:
        v126 = "failed: dilation values incompatible with given tensor layout.";
        v128 = 259;
        mlir::OpState::emitOpError(this, &v126, &v134);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v134);
        if (v134)
        {
          mlir::InFlightDiagnostic::report(&v134);
        }

        if (v144 != 1)
        {
LABEL_153:
          v57 = v130[0];
          if (v130[0] == v131)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        if (v143 != &v144)
        {
          free(v143);
        }

        v49 = __p;
        if (__p)
        {
          v50 = v142;
          v51 = __p;
          if (v142 != __p)
          {
            do
            {
              v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
            }

            while (v50 != v49);
            v51 = __p;
          }

          v142 = v49;
          operator delete(v51);
        }

        v52 = v139;
        if (v139)
        {
          v53 = v140;
          v54 = v139;
          if (v140 != v139)
          {
            do
            {
              v56 = *--v53;
              v55 = v56;
              *v53 = 0;
              if (v56)
              {
                MEMORY[0x1AC55A040](v55, 0x1000C8077774924);
              }
            }

            while (v53 != v52);
            v54 = v139;
          }

          v140 = v52;
          operator delete(v54);
        }

        v59 = v137;
        v60 = v138;
LABEL_151:
        if (v59 != v60)
        {
          free(v59);
        }

        goto LABEL_153;
      }

      v26 = *(v24 + 9);
      v27 = v24 - 2;
      if (v26)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v29)
      {
        goto LABEL_101;
      }

      v30 = *v29;
      {
        v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        if (v33)
        {
          goto LABEL_43;
        }
      }

      else
      {
        mlir::Builder::getI32VectorAttr();
        v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        if (v33)
        {
LABEL_43:
          v34 = v32;
          v35 = v33;
          do
          {
            v36 = v35 >> 1;
            v37 = &v34[2 * (v35 >> 1)];
            v39 = *v37;
            v38 = v37 + 2;
            v35 += ~(v35 >> 1);
            if (v39 < v31)
            {
              v34 = v38;
            }

            else
            {
              v35 = v36;
            }
          }

          while (v35);
LABEL_99:
          if (v34 != &v32[2 * v33] && *v34 == v31)
          {
            v61 = v34[1];
LABEL_102:
            v125[0] = v29;
            v125[1] = v61;
            Shape = mlir::ShapedType::getShape(v125);
            v63 = mlir::ShapedType::getShape(v125);
            v65 = (v63 + 8 * v64);
            v134 = &v136;
            v135 = 0x500000000;
            v66 = (v65 - Shape) >> 3;
            if (v66 < 6)
            {
              v67 = 0;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, &v136, v66, 8);
              v67 = v135;
            }

            if (v65 != Shape)
            {
              memcpy(v134 + 8 * v67, Shape, v65 - Shape);
              v67 = v135;
            }

            LODWORD(v135) = v67 + ((v65 - Shape) >> 3);
            v124 = 0;
            v68 = *((*this)[9] + 88);
            v123[0] = &v124;
            v126 = v68;
            DefiningOp = mlir::Value::getDefiningOp(&v126);
            if (DefiningOp && mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v123, DefiningOp))
            {
              LODWORD(v135) = 0;
              v70 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v124);
              mlir::getIntValues<long long>(v70, v71, &v134, 1);
            }

            v72 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
            if (!v72)
            {
              goto LABEL_124;
            }

            v73 = *v72;
            {
              v74 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v75 = *(v73 + 8);
              v76 = *(v73 + 16);
              if (v76)
              {
                goto LABEL_113;
              }
            }

            else
            {
              mlir::Builder::getI32VectorAttr();
              v74 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v75 = *(v73 + 8);
              v76 = *(v73 + 16);
              if (v76)
              {
LABEL_113:
                v77 = v75;
                v78 = v76;
                do
                {
                  v79 = v78 >> 1;
                  v80 = &v77[2 * (v78 >> 1)];
                  v82 = *v80;
                  v81 = v80 + 2;
                  v78 += ~(v78 >> 1);
                  if (v82 < v74)
                  {
                    v77 = v81;
                  }

                  else
                  {
                    v78 = v79;
                  }
                }

                while (v78);
LABEL_122:
                if (v77 != &v75[2 * v76] && *v77 == v74)
                {
                  v83 = v77[1];
LABEL_125:
                  v123[0] = v72;
                  v123[1] = v83;
                  v84 = (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
                  if (!v84)
                  {
                    goto LABEL_139;
                  }

                  v85 = *v84;
                  {
                    v86 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v87 = *(v85 + 8);
                    v88 = *(v85 + 16);
                    if (v88)
                    {
                      goto LABEL_128;
                    }
                  }

                  else
                  {
                    mlir::Builder::getI32VectorAttr();
                    v86 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v87 = *(v85 + 8);
                    v88 = *(v85 + 16);
                    if (v88)
                    {
LABEL_128:
                      v89 = v87;
                      v90 = v88;
                      do
                      {
                        v91 = v90 >> 1;
                        v92 = &v89[2 * (v90 >> 1)];
                        v94 = *v92;
                        v93 = v92 + 2;
                        v90 += ~(v90 >> 1);
                        if (v94 < v86)
                        {
                          v89 = v93;
                        }

                        else
                        {
                          v90 = v91;
                        }
                      }

                      while (v90);
LABEL_137:
                      if (v89 != &v87[2 * v88] && *v89 == v86)
                      {
                        v95 = v89[1];
                        goto LABEL_140;
                      }

LABEL_139:
                      v95 = 0;
LABEL_140:
                      v122[0] = v84;
                      v122[1] = v95;
                      v120 = *this;
                      v96 = mlir::ShapedType::getShape(v123);
                      v98 = v97;
                      v99 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
                      v100 = *(v99[8] + 8);
                      v101 = v134;
                      v102 = v135;
                      v103 = *(v99[14] + 8);
                      v129 = v99[11];
                      mlir::IntegerAttr::getValue(&v129, &v126);
                      if (v127 > 0x40)
                      {
                        v104 = *v126;
                        MEMORY[0x1AC55A040]();
                      }

                      else
                      {
                        v104 = v126;
                      }

                      if (!mlir::mps::verifyConvolutionOutputChannels(v120, v96, v98, v100, v101, v102, v103, v104))
                      {
                        goto LABEL_149;
                      }

                      v121 = *this;
                      v105 = mlir::ShapedType::getShape(v122);
                      v107 = v106;
                      v108 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
                      v109 = *(v108[8] + 8);
                      v110 = v134;
                      v111 = v135;
                      v112 = *(v108[14] + 8);
                      v129 = v108[11];
                      mlir::IntegerAttr::getValue(&v129, &v126);
                      if (v127 > 0x40)
                      {
                        v113 = *v126;
                        MEMORY[0x1AC55A040]();
                      }

                      else
                      {
                        v113 = v126;
                      }

                      if (mlir::mps::verifyConvolutionInputChannels(v121, v105, v107, v109, v110, v111, v112, v113))
                      {
                        v114 = *this;
                        v115 = mlir::ShapedType::getShape(v122);
                        v117 = v116;
                        v118 = mlir::ShapedType::getShape(v123);
                        v8 = mlir::mps::verifyConvolutionBatches(v114, v115, v117, v118, v119);
                      }

                      else
                      {
LABEL_149:
                        v8 = 0;
                      }

                      v60 = &v136;
                      v59 = v134;
                      goto LABEL_151;
                    }
                  }

                  v88 = 0;
                  v89 = v87;
                  goto LABEL_137;
                }

LABEL_124:
                v83 = 0;
                goto LABEL_125;
              }
            }

            v76 = 0;
            v77 = v75;
            goto LABEL_122;
          }

LABEL_101:
          v61 = 0;
          goto LABEL_102;
        }
      }

      v33 = 0;
      v34 = v32;
      goto LABEL_99;
    }
  }

LABEL_13:
  v132[0] = "failed: explicit padding incompatible with with given tensor data layout.";
  v133[8] = 259;
  mlir::OpState::emitOpError(this, v132, &v134);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v134);
  if (v134)
  {
    mlir::InFlightDiagnostic::report(&v134);
  }

  if (v144 == 1)
  {
    if (v143 != &v144)
    {
      free(v143);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v142;
      v11 = __p;
      if (v142 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v142 = v9;
      operator delete(v11);
    }

    v12 = v139;
    if (v139)
    {
      v13 = v140;
      v14 = v139;
      if (v140 != v139)
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
        v14 = v139;
      }

      v140 = v12;
      operator delete(v14);
    }

    v48 = v137;
    if (v137 != v138)
    {
LABEL_90:
      free(v48);
    }
  }

LABEL_91:
  if (v145[0] != v146)
  {
    free(v145[0]);
  }

  return v8;
}

uint64_t mlir::mps::DepthwiseConv2DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = *MEMORY[0x1E69E9840];
  v35 = a4;
  v36 = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = a7[2];
  }

  else
  {
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v25 = a6;
  LOBYTE(v26) = 0;
  v27 = 0;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v17 = a5;
  v31 = a9;
  v32 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v25);
    if (v27 == 1)
    {
      v27 = 0;
    }

    mlir::OperationName::OperationName(&v26, "mps.depthwise_conv_2d", 21, Context);
    v27 = 1;
    v17 = v36;
  }

  v33 = a4;
  v34 = a5;
  if (v17 >= 2)
  {
    v19 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::DepthwiseConv2DOpAdaptor::verify(&v25, v19))
    {
      mlir::ValueRange::dereference_iterator(&v35, 0);
      mlir::ValueRange::dereference_iterator(&v35, 1);
      operator new();
    }
  }

  v20 = mlir::Float32Type::get(this, a2);
  v21 = mlir::UnrankedTensorType::get(v20);
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
  return 1;
}

BOOL mlir::mps::DepthwiseConv2DOpAdaptor::verify(void *a1, uint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a1[3])
  {
    v54 = "'mps.depthwise_conv_2d' op requires attribute 'data_layout'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v66;
      v22 = __p;
      if (v66 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v66 = v20;
      operator delete(v22);
    }

    v23 = v63;
    if (v63)
    {
      v24 = v64;
      v25 = v63;
      if (v64 != v63)
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
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v53 = a1[4];
  if (!v53)
  {
    v54 = "'mps.depthwise_conv_2d' op requires attribute 'dilation_rates'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v66;
      v30 = __p;
      if (v66 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v66 = v28;
      operator delete(v30);
    }

    v23 = v63;
    if (v63)
    {
      v31 = v64;
      v25 = v63;
      if (v64 != v63)
      {
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

        while (v31 != v23);
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v52 = a1[5];
  if (!v52)
  {
    v54 = "'mps.depthwise_conv_2d' op requires attribute 'explicit_padding'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v66;
      v36 = __p;
      if (v66 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v66 = v34;
      operator delete(v36);
    }

    v23 = v63;
    if (v63)
    {
      v37 = v64;
      v25 = v63;
      if (v64 != v63)
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

        while (v37 != v23);
        goto LABEL_85;
      }

LABEL_86:
      v64 = v23;
      operator delete(v25);
    }

LABEL_87:
    if (v61 != &v62)
    {
      free(v61);
    }

    return v19;
  }

  if (!a1[6])
  {
    v54 = "'mps.depthwise_conv_2d' op requires attribute 'padding_style'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v66;
      v42 = __p;
      if (v66 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v66 = v40;
      operator delete(v42);
    }

    v23 = v63;
    if (v63)
    {
      v43 = v64;
      v25 = v63;
      if (v64 != v63)
      {
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

        while (v43 != v23);
LABEL_85:
        v25 = v63;
        goto LABEL_86;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v51 = a1[7];
  if (v51)
  {
    if (a1[8])
    {
      v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v51);
      v55 = v3;
      v48[0] = mlir::ElementsAttr::getType(&v54);
      v59 = mlir::BaseMemRefType::operator mlir::ShapedType(v48);
      v60 = v4;
      Shape = mlir::ShapedType::getShape(&v59);
      Type = 4;
      if (v6 == 1 && *Shape == Type && (v49 = v51, *&v57 = mlir::ArrayAttr::getValue(&v49), *(&v57 + 1) = v7, isSplat = mlir::ElementsAttr::isSplat(&v57), mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
        v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v53);
        v55 = v8;
        v48[0] = mlir::ElementsAttr::getType(&v54);
        v59 = mlir::BaseMemRefType::operator mlir::ShapedType(v48);
        v60 = v9;
        v10 = mlir::ShapedType::getShape(&v59);
        Type = 4;
        if (v11 == 1 && *v10 == Type && (v49 = v53, *&v57 = mlir::ArrayAttr::getValue(&v49), *(&v57 + 1) = v12, isSplat = mlir::ElementsAttr::isSplat(&v57), mlir::Type::isUnsignedInteger(&isSplat, 64)))
        {
          v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v52);
          v55 = v13;
          Type = mlir::ElementsAttr::getType(&v54);
          v59 = mlir::BaseMemRefType::operator mlir::ShapedType(&Type);
          v60 = v14;
          v15 = mlir::ShapedType::getShape(&v59);
          v57 = xmmword_1A7595C20;
          if (v16 == 2 && *v15 == v57 && v15[1] == *(&v57 + 1))
          {
            v49 = v52;
            v48[0] = mlir::ArrayAttr::getValue(&v49);
            v48[1] = v18;
            isSplat = mlir::ElementsAttr::isSplat(v48);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }

          v46 = "'mps.depthwise_conv_2d' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
        }

        else
        {
          v46 = "'mps.depthwise_conv_2d' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
        }
      }

      else
      {
        v46 = "'mps.depthwise_conv_2d' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
      }
    }

    else
    {
      v46 = "'mps.depthwise_conv_2d' op requires attribute 'weights_layout'";
    }

    v54 = v46;
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
    return v19;
  }

  v54 = "'mps.depthwise_conv_2d' op requires attribute 'strides'";
  v56 = 259;
  mlir::emitError(a2, &v54, &v59);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
  if (v59)
  {
    mlir::InFlightDiagnostic::report(&v59);
  }

  if (v68 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v60);
  }

  return v19;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v42[2] = *MEMORY[0x1E69E9840];
  v42[0] = a4;
  v42[1] = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v32 = a6;
  LOBYTE(v33) = 0;
  v34 = 0;
  v35 = v16;
  v36 = v17;
  v37 = v18;
  v38 = a9;
  v39 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v32);
    if (v34 == 1)
    {
      v34 = 0;
    }

    mlir::OperationName::OperationName(&v33, "mps.depthwise_conv_2d_data_gradient", 35, Context);
    v34 = 1;
  }

  v40 = a4;
  v41 = a5;
  if (a5 < 3 || (v20 = mlir::UnknownLoc::get(this, a2), !mlir::mps::DepthwiseConv2DDataGradientOpAdaptor::verify(&v32, v20)))
  {
    v26 = mlir::Float32Type::get(this, a2);
    v27 = mlir::UnrankedTensorType::get(v26);
    v28 = *(a11 + 8);
    if (v28 >= *(a11 + 12))
    {
      v30 = v27;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v28 + 1, 8);
      v27 = v30;
      LODWORD(v28) = *(a11 + 8);
    }

    *(*a11 + 8 * v28) = v27;
    goto LABEL_17;
  }

  v21 = mlir::ValueRange::dereference_iterator(v42, 0);
  v22 = mlir::ValueRange::dereference_iterator(v42, 1);
  v23 = mlir::ValueRange::dereference_iterator(v42, 2);
  v31 = 0;
  {
    v24 = v31;
    v25 = *(a11 + 8);
    if (v25 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v25 + 1, 8);
      LODWORD(v25) = *(a11 + 8);
    }

    *(*a11 + 8 * v25) = v24;
LABEL_17:
    ++*(a11 + 8);
    return 1;
  }

  return 0;
}

BOOL mlir::mps::DepthwiseConv2DDataGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a1[3])
  {
    v54 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'data_layout'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v66;
      v22 = __p;
      if (v66 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v66 = v20;
      operator delete(v22);
    }

    v23 = v63;
    if (v63)
    {
      v24 = v64;
      v25 = v63;
      if (v64 != v63)
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
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v53 = a1[4];
  if (!v53)
  {
    v54 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'dilation_rates'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v66;
      v30 = __p;
      if (v66 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v66 = v28;
      operator delete(v30);
    }

    v23 = v63;
    if (v63)
    {
      v31 = v64;
      v25 = v63;
      if (v64 != v63)
      {
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

        while (v31 != v23);
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v52 = a1[5];
  if (!v52)
  {
    v54 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'explicit_padding'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v66;
      v36 = __p;
      if (v66 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v66 = v34;
      operator delete(v36);
    }

    v23 = v63;
    if (v63)
    {
      v37 = v64;
      v25 = v63;
      if (v64 != v63)
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

        while (v37 != v23);
        goto LABEL_85;
      }

LABEL_86:
      v64 = v23;
      operator delete(v25);
    }

LABEL_87:
    if (v61 != &v62)
    {
      free(v61);
    }

    return v19;
  }

  if (!a1[6])
  {
    v54 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'padding_style'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v66;
      v42 = __p;
      if (v66 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v66 = v40;
      operator delete(v42);
    }

    v23 = v63;
    if (v63)
    {
      v43 = v64;
      v25 = v63;
      if (v64 != v63)
      {
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

        while (v43 != v23);
LABEL_85:
        v25 = v63;
        goto LABEL_86;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v51 = a1[7];
  if (v51)
  {
    if (a1[8])
    {
      v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v51);
      v55 = v3;
      v48[0] = mlir::ElementsAttr::getType(&v54);
      v59 = mlir::BaseMemRefType::operator mlir::ShapedType(v48);
      v60 = v4;
      Shape = mlir::ShapedType::getShape(&v59);
      Type = 4;
      if (v6 == 1 && *Shape == Type && (v49 = v51, *&v57 = mlir::ArrayAttr::getValue(&v49), *(&v57 + 1) = v7, isSplat = mlir::ElementsAttr::isSplat(&v57), mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
        v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v53);
        v55 = v8;
        v48[0] = mlir::ElementsAttr::getType(&v54);
        v59 = mlir::BaseMemRefType::operator mlir::ShapedType(v48);
        v60 = v9;
        v10 = mlir::ShapedType::getShape(&v59);
        Type = 4;
        if (v11 == 1 && *v10 == Type && (v49 = v53, *&v57 = mlir::ArrayAttr::getValue(&v49), *(&v57 + 1) = v12, isSplat = mlir::ElementsAttr::isSplat(&v57), mlir::Type::isUnsignedInteger(&isSplat, 64)))
        {
          v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v52);
          v55 = v13;
          Type = mlir::ElementsAttr::getType(&v54);
          v59 = mlir::BaseMemRefType::operator mlir::ShapedType(&Type);
          v60 = v14;
          v15 = mlir::ShapedType::getShape(&v59);
          v57 = xmmword_1A7595C20;
          if (v16 == 2 && *v15 == v57 && v15[1] == *(&v57 + 1))
          {
            v49 = v52;
            v48[0] = mlir::ArrayAttr::getValue(&v49);
            v48[1] = v18;
            isSplat = mlir::ElementsAttr::isSplat(v48);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }

          v46 = "'mps.depthwise_conv_2d_data_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
        }

        else
        {
          v46 = "'mps.depthwise_conv_2d_data_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
        }
      }

      else
      {
        v46 = "'mps.depthwise_conv_2d_data_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
      }
    }

    else
    {
      v46 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'weights_layout'";
    }

    v54 = v46;
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
    return v19;
  }

  v54 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'strides'";
  v56 = 259;
  mlir::emitError(a2, &v54, &v59);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
  if (v59)
  {
    mlir::InFlightDiagnostic::report(&v59);
  }

  if (v68 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v60);
  }

  return v19;
}

BOOL mlir::mps::anonymous namespace::inferDepthwiseConv2DDataGradReturnType(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t *a6)
{
  v10 = a2;
  v40[4] = *MEMORY[0x1E69E9840];
  v35 = a3;
  v36 = a4;
  mlir::ValueRange::ValueRange(&__src, &v35, 2uLL);
  v13 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a3);
  if (!v13)
  {
    return mlir::emitOptionalError<char const(&)[41]>(a1, v10, "cannot conv2DDataGrad a non-shaped inputType");
  }

  v14 = v13;
  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a4);
  if (!v15)
  {
    return mlir::emitOptionalError<char const(&)[41]>(a1, v10, "cannot conv2DDataGrad a non-shaped weightsType");
  }

  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    *a6 = mlir::UnrankedTensorType::get(v12);
    return 1;
  }

  __src = v40;
  v39 = 0x400000000;
  if (mlir::matchConstantWithIntVector<long long>(a5, &__src))
  {
    if (v39 == 4)
    {
      v16 = __src;
      if (*__src == -1)
      {
        *__src = 0x8000000000000000;
        if (v16[1] != -1)
        {
LABEL_9:
          if (v16[2] != -1)
          {
            goto LABEL_10;
          }

          goto LABEL_40;
        }
      }

      else if (*(__src + 1) != -1)
      {
        goto LABEL_9;
      }

      v16[1] = 0x8000000000000000;
      if (v16[2] != -1)
      {
LABEL_10:
        if (v16[3] != -1)
        {
LABEL_11:
          v35 = v37;
          v36 = 0x400000000;
          v17 = 4;
          goto LABEL_12;
        }

LABEL_41:
        v16[3] = 0x8000000000000000;
        goto LABEL_11;
      }

LABEL_40:
      v16[2] = 0x8000000000000000;
      if (v16[3] != -1)
      {
        goto LABEL_11;
      }

      goto LABEL_41;
    }

    if (mlir::emitOptionalError<char const(&)[41]>(a1, v10, "unexpected output shape passed"))
    {
      v17 = v39;
      v35 = v37;
      v36 = 0x400000000;
      if (!v39)
      {
LABEL_15:
        v31 = a3;
        Value = mlir::ArrayAttr::getValue(&v31);
        v32 = 0x400000000;
        v30 = v36;
        v31 = &v33;
        if (v36 == 4)
        {
          v21 = Value;
          v22 = &v33;
          v33 = 0u;
          v34 = 0u;
          v33 = *v35;
          v34 = *(v35 + 1);
          LODWORD(v32) = 4;
          if (*v35 == 0x8000000000000000)
          {
            v23 = *v21;
            if (v23 >= 1)
            {
              *&v33 = v23;
            }
          }

          v24 = 4;
        }

        else
        {
          if (!mlir::emitOptionalError<char const(&)[19],unsigned long &,char const(&)[11]>(a1, v10, "conv2D input rank ", &v30, "must be 4 "))
          {
            result = 0;
            v26 = v31;
            if (v31 == &v33)
            {
LABEL_33:
              if (v35 != v37)
              {
                v28 = result;
                free(v35);
                result = v28;
              }

              goto LABEL_35;
            }

LABEL_32:
            v27 = result;
            free(v26);
            result = v27;
            goto LABEL_33;
          }

          v22 = v31;
          v24 = v32;
        }

        *a6 = mlir::RankedTensorType::get(v22, v24, v12, 0);
        result = 1;
        v26 = v31;
        if (v31 == &v33)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      if (v39 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v39, 8);
        v19 = v39;
        if (!v39)
        {
          goto LABEL_14;
        }

        v18 = v35;
LABEL_13:
        memcpy(v18, __src, 8 * v19);
LABEL_14:
        LODWORD(v36) = v17;
        goto LABEL_15;
      }

LABEL_12:
      v18 = v37;
      v19 = v17;
      goto LABEL_13;
    }
  }

  *a6 = mlir::UnrankedTensorType::get(v12);
  result = 1;
LABEL_35:
  if (__src != v40)
  {
    v29 = result;
    free(__src);
    return v29;
  }

  return result;
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v42[2] = *MEMORY[0x1E69E9840];
  v42[0] = a4;
  v42[1] = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v32 = a6;
  LOBYTE(v33) = 0;
  v34 = 0;
  v35 = v16;
  v36 = v17;
  v37 = v18;
  v38 = a9;
  v39 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v32);
    if (v34 == 1)
    {
      v34 = 0;
    }

    mlir::OperationName::OperationName(&v33, "mps.depthwise_conv_2d_weights_gradient", 38, Context);
    v34 = 1;
  }

  v40 = a4;
  v41 = a5;
  if (a5 < 3 || (v20 = mlir::UnknownLoc::get(this, a2), !mlir::mps::DepthwiseConv2DWeightsGradientOpAdaptor::verify(&v32, v20)))
  {
    v26 = mlir::Float32Type::get(this, a2);
    v27 = mlir::UnrankedTensorType::get(v26);
    v28 = *(a11 + 8);
    if (v28 >= *(a11 + 12))
    {
      v30 = v27;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v28 + 1, 8);
      v27 = v30;
      LODWORD(v28) = *(a11 + 8);
    }

    *(*a11 + 8 * v28) = v27;
    goto LABEL_17;
  }

  v21 = mlir::ValueRange::dereference_iterator(v42, 0);
  v22 = mlir::ValueRange::dereference_iterator(v42, 1);
  v23 = mlir::ValueRange::dereference_iterator(v42, 2);
  v31 = 0;
  {
    v24 = v31;
    v25 = *(a11 + 8);
    if (v25 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v25 + 1, 8);
      LODWORD(v25) = *(a11 + 8);
    }

    *(*a11 + 8 * v25) = v24;
LABEL_17:
    ++*(a11 + 8);
    return 1;
  }

  return 0;
}

BOOL mlir::mps::DepthwiseConv2DWeightsGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a1[3])
  {
    v54 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'data_layout'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v66;
      v22 = __p;
      if (v66 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v66 = v20;
      operator delete(v22);
    }

    v23 = v63;
    if (v63)
    {
      v24 = v64;
      v25 = v63;
      if (v64 != v63)
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
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v53 = a1[4];
  if (!v53)
  {
    v54 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'dilation_rates'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v66;
      v30 = __p;
      if (v66 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v66 = v28;
      operator delete(v30);
    }

    v23 = v63;
    if (v63)
    {
      v31 = v64;
      v25 = v63;
      if (v64 != v63)
      {
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

        while (v31 != v23);
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v52 = a1[5];
  if (!v52)
  {
    v54 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'explicit_padding'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v66;
      v36 = __p;
      if (v66 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v66 = v34;
      operator delete(v36);
    }

    v23 = v63;
    if (v63)
    {
      v37 = v64;
      v25 = v63;
      if (v64 != v63)
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

        while (v37 != v23);
        goto LABEL_85;
      }

LABEL_86:
      v64 = v23;
      operator delete(v25);
    }

LABEL_87:
    if (v61 != &v62)
    {
      free(v61);
    }

    return v19;
  }

  if (!a1[6])
  {
    v54 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'padding_style'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v66;
      v42 = __p;
      if (v66 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v66 = v40;
      operator delete(v42);
    }

    v23 = v63;
    if (v63)
    {
      v43 = v64;
      v25 = v63;
      if (v64 != v63)
      {
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

        while (v43 != v23);
LABEL_85:
        v25 = v63;
        goto LABEL_86;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v51 = a1[7];
  if (v51)
  {
    if (a1[8])
    {
      v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v51);
      v55 = v3;
      v48[0] = mlir::ElementsAttr::getType(&v54);
      v59 = mlir::BaseMemRefType::operator mlir::ShapedType(v48);
      v60 = v4;
      Shape = mlir::ShapedType::getShape(&v59);
      Type = 4;
      if (v6 == 1 && *Shape == Type && (v49 = v51, *&v57 = mlir::ArrayAttr::getValue(&v49), *(&v57 + 1) = v7, isSplat = mlir::ElementsAttr::isSplat(&v57), mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
        v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v53);
        v55 = v8;
        v48[0] = mlir::ElementsAttr::getType(&v54);
        v59 = mlir::BaseMemRefType::operator mlir::ShapedType(v48);
        v60 = v9;
        v10 = mlir::ShapedType::getShape(&v59);
        Type = 4;
        if (v11 == 1 && *v10 == Type && (v49 = v53, *&v57 = mlir::ArrayAttr::getValue(&v49), *(&v57 + 1) = v12, isSplat = mlir::ElementsAttr::isSplat(&v57), mlir::Type::isUnsignedInteger(&isSplat, 64)))
        {
          v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v52);
          v55 = v13;
          Type = mlir::ElementsAttr::getType(&v54);
          v59 = mlir::BaseMemRefType::operator mlir::ShapedType(&Type);
          v60 = v14;
          v15 = mlir::ShapedType::getShape(&v59);
          v57 = xmmword_1A7595C20;
          if (v16 == 2 && *v15 == v57 && v15[1] == *(&v57 + 1))
          {
            v49 = v52;
            v48[0] = mlir::ArrayAttr::getValue(&v49);
            v48[1] = v18;
            isSplat = mlir::ElementsAttr::isSplat(v48);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }

          v46 = "'mps.depthwise_conv_2d_weights_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
        }

        else
        {
          v46 = "'mps.depthwise_conv_2d_weights_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
        }
      }

      else
      {
        v46 = "'mps.depthwise_conv_2d_weights_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
      }
    }

    else
    {
      v46 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'weights_layout'";
    }

    v54 = v46;
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
    return v19;
  }

  v54 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'strides'";
  v56 = 259;
  mlir::emitError(a2, &v54, &v59);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
  if (v59)
  {
    mlir::InFlightDiagnostic::report(&v59);
  }

  if (v68 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v60);
  }

  return v19;
}

uint64_t mlir::mps::DepthwiseConv3DOp::verify(uint64_t **this)
{
  v273 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[9];
  v4 = *(v3 + 24);
  v5 = *(v3 + 56);
  v252 = (*this)[14];
  v253 = v2;
  v6 = v2[11];
  v250 = v2[12];
  v251 = v6;
  if (v252)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v252) != 3 || (mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v240, v252, 0), v1 = v252, NumElements = mlir::DenseElementsAttr::getNumElements(&v252), mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v247, v1, NumElements), v242 == v249))
    {
LABEL_4:
      if (!v251)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v240, &v245);
      if (v246 > 0x40)
      {
        if (*v245 <= 0)
        {
          goto LABEL_97;
        }
      }

      else if (!v246 || (v245 << -v246) >> -v246 <= 0)
      {
LABEL_97:
        v260 = 259;
        mlir::OpState::emitOpError(&v253, &v257, &v261);
        if (v246 > 0x40)
        {
          v77 = *v245;
          if (!v261)
          {
            goto LABEL_113;
          }
        }

        else
        {
          if (v246)
          {
            v77 = (v245 << -v246) >> -v246;
          }

          else
          {
            v77 = 0;
          }

          if (!v261)
          {
            goto LABEL_113;
          }
        }

        LODWORD(v254) = 2;
        v255 = v77;
        v79 = v263;
        if (v264 >= v265)
        {
          if (v263 <= &v254 && v263 + 24 * v264 > &v254)
          {
            v96 = &v254 - v263;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v79 = v263;
            v80 = (v263 + v96);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v80 = &v254;
            v79 = v263;
          }
        }

        else
        {
          v80 = &v254;
        }

        v81 = &v79[24 * v264];
        v82 = *v80;
        *(v81 + 2) = v80[2];
        *v81 = v82;
        v83 = ++v264;
        if (v261)
        {
          LODWORD(v254) = 3;
          v255 = ", all values should be positive.";
          v256 = 32;
          v84 = v263;
          if (v83 >= v265)
          {
            if (v263 <= &v254 && v263 + 24 * v83 > &v254)
            {
              v97 = &v254 - v263;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v83 + 1, 24);
              v84 = v263;
              v85 = (v263 + v97);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v83 + 1, 24);
              v85 = &v254;
              v84 = v263;
            }
          }

          else
          {
            v85 = &v254;
          }

          v86 = &v84[24 * v264];
          v87 = *v85;
          *(v86 + 2) = v85[2];
          *v86 = v87;
          ++v264;
        }

LABEL_113:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v261);
        if (v261)
        {
          mlir::InFlightDiagnostic::report(&v261);
        }

        if (v272 == 1)
        {
          if (v271 != &v272)
          {
            free(v271);
          }

          v88 = __p;
          if (__p)
          {
            v89 = v270;
            v90 = __p;
            if (v270 != __p)
            {
              do
              {
                v89 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v89 - 1);
              }

              while (v89 != v88);
              v90 = __p;
            }

            v270 = v88;
            operator delete(v90);
          }

          v91 = v267;
          if (v267)
          {
            v92 = v268;
            v93 = v267;
            if (v268 != v267)
            {
              do
              {
                v95 = *--v92;
                v94 = v95;
                *v92 = 0;
                if (v95)
                {
                  MEMORY[0x1AC55A040](v94, 0x1000C8077774924);
                }
              }

              while (v92 != v91);
              v93 = v267;
            }

            v268 = v91;
            operator delete(v93);
          }

          if (v263 != v266)
          {
            free(v263);
          }
        }

        v78 = 0;
        if (v246 < 0x41)
        {
          goto LABEL_136;
        }

LABEL_134:
        if (v245)
        {
          MEMORY[0x1AC55A040](v245, 0x1000C8000313F17);
        }

        goto LABEL_136;
      }

      v78 = 1;
      if (v246 >= 0x41)
      {
        goto LABEL_134;
      }

LABEL_136:
      if (!v78)
      {
        return v1;
      }

      if (++v242 == v249)
      {
        goto LABEL_4;
      }
    }
  }

  if (!v251)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (mlir::DenseElementsAttr::getNumElements(&v251) == 3)
  {
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v240, v251, 0);
    v8 = v251;
    v9 = mlir::DenseElementsAttr::getNumElements(&v251);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v247, v8, v9);
    while (v242 != v249)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v240, &v245);
      if (v246 > 0x40)
      {
        if (*v245 <= 0)
        {
          goto LABEL_150;
        }
      }

      else if (!v246 || (v245 << -v246) >> -v246 <= 0)
      {
LABEL_150:
        v260 = 259;
        mlir::OpState::emitOpError(&v253, &v257, &v261);
        if (v246 > 0x40)
        {
          v98 = *v245;
          if (!v261)
          {
            goto LABEL_166;
          }
        }

        else
        {
          if (v246)
          {
            v98 = (v245 << -v246) >> -v246;
          }

          else
          {
            v98 = 0;
          }

          if (!v261)
          {
            goto LABEL_166;
          }
        }

        LODWORD(v254) = 2;
        v255 = v98;
        v100 = v263;
        if (v264 >= v265)
        {
          if (v263 <= &v254 && v263 + 24 * v264 > &v254)
          {
            v117 = &v254 - v263;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v100 = v263;
            v101 = (v263 + v117);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v101 = &v254;
            v100 = v263;
          }
        }

        else
        {
          v101 = &v254;
        }

        v102 = &v100[24 * v264];
        v103 = *v101;
        *(v102 + 2) = v101[2];
        *v102 = v103;
        v104 = ++v264;
        if (v261)
        {
          LODWORD(v254) = 3;
          v255 = ", all values should be positive.";
          v256 = 32;
          v105 = v263;
          if (v104 >= v265)
          {
            if (v263 <= &v254 && v263 + 24 * v104 > &v254)
            {
              v118 = &v254 - v263;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v104 + 1, 24);
              v105 = v263;
              v106 = (v263 + v118);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v104 + 1, 24);
              v106 = &v254;
              v105 = v263;
            }
          }

          else
          {
            v106 = &v254;
          }

          v107 = &v105[24 * v264];
          v108 = *v106;
          *(v107 + 2) = v106[2];
          *v107 = v108;
          ++v264;
        }

LABEL_166:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v261);
        if (v261)
        {
          mlir::InFlightDiagnostic::report(&v261);
        }

        if (v272 == 1)
        {
          if (v271 != &v272)
          {
            free(v271);
          }

          v109 = __p;
          if (__p)
          {
            v110 = v270;
            v111 = __p;
            if (v270 != __p)
            {
              do
              {
                v110 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v110 - 1);
              }

              while (v110 != v109);
              v111 = __p;
            }

            v270 = v109;
            operator delete(v111);
          }

          v112 = v267;
          if (v267)
          {
            v113 = v268;
            v114 = v267;
            if (v268 != v267)
            {
              do
              {
                v116 = *--v113;
                v115 = v116;
                *v113 = 0;
                if (v116)
                {
                  MEMORY[0x1AC55A040](v115, 0x1000C8077774924);
                }
              }

              while (v113 != v112);
              v114 = v267;
            }

            v268 = v112;
            operator delete(v114);
          }

          if (v263 != v266)
          {
            free(v263);
          }
        }

        v99 = 0;
        if (v246 < 0x41)
        {
          goto LABEL_189;
        }

LABEL_187:
        if (v245)
        {
          MEMORY[0x1AC55A040](v245, 0x1000C8000313F17);
        }

        goto LABEL_189;
      }

      v99 = 1;
      if (v246 >= 0x41)
      {
        goto LABEL_187;
      }

LABEL_189:
      if (!v99)
      {
        return v1;
      }

      ++v242;
    }
  }

LABEL_9:
  if (v250 && mlir::DenseElementsAttr::getNumElements(&v250) == 6)
  {
    v239 = v4;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v240, v250, 0);
    v10 = v250;
    v11 = mlir::DenseElementsAttr::getNumElements(&v250);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v247, v10, v11);
    if (v242 == v249)
    {
LABEL_12:
      v4 = v239;
      goto LABEL_13;
    }

    v119 = 0x1000C8000313F17;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v240, &v245);
      if (v246 > 0x40)
      {
        break;
      }

      if (v246)
      {
        v121 = (v245 << -v246) >> -v246;
        if (v121 < 0)
        {
          goto LABEL_206;
        }

LABEL_213:
        if (v246 >= 0x41)
        {
LABEL_243:
          if (v245)
          {
            MEMORY[0x1AC55A040](v245, v119);
          }
        }

LABEL_201:
        if (v121 < 0)
        {
          return v1;
        }
      }

      if (++v242 == v249)
      {
        goto LABEL_12;
      }
    }

    v121 = *v245;
    if ((*v245 & 0x8000000000000000) == 0)
    {
      goto LABEL_213;
    }

LABEL_206:
    v257 = v120;
    v260 = 259;
    mlir::OpState::emitOpError(&v253, &v257, &v261);
    if (v246 > 0x40)
    {
      v122 = *v245;
      if (!v261)
      {
        goto LABEL_222;
      }
    }

    else
    {
      if (v246)
      {
        v122 = (v245 << -v246) >> -v246;
      }

      else
      {
        v122 = 0;
      }

      if (!v261)
      {
        goto LABEL_222;
      }
    }

    LODWORD(v254) = 2;
    v255 = v122;
    v123 = v263;
    if (v264 >= v265)
    {
      if (v263 <= &v254 && v263 + 24 * v264 > &v254)
      {
        v142 = &v254 - v263;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
        v123 = v263;
        v124 = (v263 + v142);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
        v124 = &v254;
        v123 = v263;
      }
    }

    else
    {
      v124 = &v254;
    }

    v125 = &v123[24 * v264];
    v126 = *v124;
    *(v125 + 2) = v124[2];
    *v125 = v126;
    v127 = ++v264;
    if (v261)
    {
      LODWORD(v254) = 3;
      v255 = ", all values should be non-negative.";
      v256 = 36;
      v128 = v263;
      if (v127 >= v265)
      {
        if (v263 <= &v254 && v263 + 24 * v127 > &v254)
        {
          v143 = &v254 - v263;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v127 + 1, 24);
          v128 = v263;
          v129 = (v263 + v143);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v127 + 1, 24);
          v129 = &v254;
          v128 = v263;
        }
      }

      else
      {
        v129 = &v254;
      }

      v130 = &v128[24 * v264];
      v131 = *v129;
      *(v130 + 2) = v129[2];
      *v130 = v131;
      ++v264;
    }

LABEL_222:
    v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v261);
    if (v261)
    {
      mlir::InFlightDiagnostic::report(&v261);
    }

    if (v272 == 1)
    {
      if (v271 != &v272)
      {
        free(v271);
      }

      v132 = v120;
      v133 = __p;
      if (__p)
      {
        v134 = v270;
        v135 = __p;
        if (v270 != __p)
        {
          do
          {
            v134 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v134 - 1);
          }

          while (v134 != v133);
          v135 = __p;
        }

        v270 = v133;
        operator delete(v135);
      }

      v136 = v267;
      if (v267)
      {
        v137 = v119;
        v138 = v268;
        v139 = v267;
        if (v268 != v267)
        {
          do
          {
            v141 = *--v138;
            v140 = v141;
            *v138 = 0;
            if (v141)
            {
              MEMORY[0x1AC55A040](v140, 0x1000C8077774924);
            }
          }

          while (v138 != v136);
          v139 = v267;
        }

        v268 = v136;
        operator delete(v139);
        v119 = v137;
      }

      v120 = v132;
      if (v263 != v266)
      {
        free(v263);
      }
    }

    if (v246 >= 0x41)
    {
      goto LABEL_243;
    }

    goto LABEL_201;
  }

LABEL_13:
  v257 = v253[2 * ((*(v253 + 11) >> 23) & 1) + 8];
  mlir::IntegerAttr::getValue(&v257, &v261);
  if (v262[0] > 0x40)
  {
    v12 = *v261;
    MEMORY[0x1AC55A040]();
    if (!v4)
    {
LABEL_43:
      v254 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    if (v262[0])
    {
      v12 = (v261 << -LOBYTE(v262[0])) >> -LOBYTE(v262[0]);
    }

    else
    {
      LODWORD(v12) = 0;
    }

    if (!v4)
    {
      goto LABEL_43;
    }
  }

  v13 = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v13)
  {
    goto LABEL_43;
  }

  v14 = *(*v13 + 136);
  if (v14 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v13 = 0;
  }

  v254 = v13;
  if (v14 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_44;
  }

  mlir::ArrayAttr::getValue(&v254);
  v16 = v15;
  if (v15 > 3)
  {
    if (v12 >= 0)
    {
      v194 = v15;
    }

    else
    {
      v194 = 0;
    }

    if ((v12 - v194) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      v260 = 259;
      mlir::OpState::emitOpError(&v253, &v257, &v261);
      if (v261)
      {
        LODWORD(v240) = 2;
        v241 = v12;
        v195 = &v240;
        v196 = v263;
        if (v264 >= v265)
        {
          if (v263 <= &v240 && v263 + 24 * v264 > &v240)
          {
            v229 = &v240 - v263;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v196 = v263;
            v195 = (v263 + v229);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v195 = &v240;
            v196 = v263;
          }
        }

        v197 = &v196[24 * v264];
        v198 = *v195;
        *(v197 + 2) = v195[2];
        *v197 = v198;
        v199 = ++v264;
        if (v261)
        {
          LODWORD(v240) = 3;
          v241 = " for input rank ";
          v242 = 16;
          v200 = &v240;
          v201 = v263;
          if (v199 >= v265)
          {
            if (v263 <= &v240 && v263 + 24 * v199 > &v240)
            {
              v233 = &v240 - v263;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v199 + 1, 24);
              v201 = v263;
              v200 = (v263 + v233);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v199 + 1, 24);
              v200 = &v240;
              v201 = v263;
            }
          }

          v202 = &v201[24 * v264];
          v203 = *v200;
          *(v202 + 2) = v200[2];
          *v202 = v203;
          v204 = ++v264;
          if (v261)
          {
            LODWORD(v240) = 2;
            v241 = v16;
            v205 = &v240;
            v206 = v263;
            if (v204 >= v265)
            {
              if (v263 <= &v240 && v263 + 24 * v204 > &v240)
              {
                v236 = &v240 - v263;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v204 + 1, 24);
                v206 = v263;
                v205 = (v263 + v236);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v204 + 1, 24);
                v205 = &v240;
                v206 = v263;
              }
            }

            v207 = &v206[24 * v264];
            v208 = *v205;
            *(v207 + 2) = v205[2];
            *v207 = v208;
            v209 = ++v264;
            if (v261)
            {
              LODWORD(v240) = 3;
              v241 = ".";
              v242 = 1;
              v210 = &v240;
              v211 = v263;
              if (v209 >= v265)
              {
                if (v263 <= &v240 && v263 + 24 * v209 > &v240)
                {
                  v238 = &v240 - v263;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v209 + 1, 24);
                  v211 = v263;
                  v210 = (v263 + v238);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v209 + 1, 24);
                  v210 = &v240;
                  v211 = v263;
                }
              }

              v212 = &v211[24 * v264];
              v213 = *v210;
              *(v212 + 2) = v210[2];
              *v212 = v213;
              ++v264;
            }
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v261);
      if (v261)
      {
        mlir::InFlightDiagnostic::report(&v261);
      }

      if (v272 == 1)
      {
        if (v271 != &v272)
        {
          free(v271);
        }

        v214 = __p;
        if (__p)
        {
          v215 = v270;
          v216 = __p;
          if (v270 != __p)
          {
            do
            {
              v215 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v215 - 1);
            }

            while (v215 != v214);
            v216 = __p;
          }

          v270 = v214;
          operator delete(v216);
        }

        v29 = v267;
        if (v267)
        {
          v217 = v268;
          v31 = v267;
          if (v268 != v267)
          {
            do
            {
              v219 = *--v217;
              v218 = v219;
              *v217 = 0;
              if (v219)
              {
                MEMORY[0x1AC55A040](v218, 0x1000C8077774924);
              }
            }

            while (v217 != v29);
            goto LABEL_335;
          }

          goto LABEL_336;
        }

        goto LABEL_337;
      }

      return v1;
    }

LABEL_44:
    v245 = 0;
    if (v5 && (v32 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v33 = *(*v32 + 136);
      if (v33 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v32 = 0;
      }

      v244 = v32;
      if (v33 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        mlir::ArrayAttr::getValue(&v244);
        if (v34 != 4)
        {
          v260 = 259;
          mlir::OpState::emitOpError(&v253, &v257, &v261);
          mlir::ArrayAttr::getValue(&v244);
          if (v261)
          {
            LODWORD(v240) = 5;
            v241 = v35;
            v36 = &v240;
            v37 = v263;
            if (v264 >= v265)
            {
              if (v263 <= &v240 && v263 + 24 * v264 > &v240)
              {
                v223 = &v240 - v263;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
                v37 = v263;
                v36 = (v263 + v223);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
                v36 = &v240;
                v37 = v263;
              }
            }

            v38 = &v37[24 * v264];
            v39 = *v36;
            *(v38 + 2) = v36[2];
            *v38 = v39;
            v40 = ++v264;
            if (v261)
            {
              LODWORD(v240) = 3;
              v241 = ".";
              v242 = 1;
              v41 = &v240;
              v42 = v263;
              if (v40 >= v265)
              {
                if (v263 <= &v240 && v263 + 24 * v40 > &v240)
                {
                  v228 = &v240 - v263;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v40 + 1, 24);
                  v42 = v263;
                  v41 = (v263 + v228);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v40 + 1, 24);
                  v41 = &v240;
                  v42 = v263;
                }
              }

              v43 = &v42[24 * v264];
              v44 = *v41;
              *(v43 + 2) = v41[2];
              *v43 = v44;
              ++v264;
            }
          }

          v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v261);
          if (v261)
          {
            mlir::InFlightDiagnostic::report(&v261);
          }

          if (v272 == 1)
          {
            if (v271 != &v272)
            {
              free(v271);
            }

            v45 = __p;
            if (__p)
            {
              v46 = v270;
              v47 = __p;
              if (v270 != __p)
              {
                do
                {
                  v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
                }

                while (v46 != v45);
                v47 = __p;
              }

              v270 = v45;
              operator delete(v47);
            }

            v29 = v267;
            if (v267)
            {
              v48 = v268;
              v31 = v267;
              if (v268 != v267)
              {
                do
                {
                  v76 = *--v48;
                  v75 = v76;
                  *v48 = 0;
                  if (v76)
                  {
                    MEMORY[0x1AC55A040](v75, 0x1000C8077774924);
                  }
                }

                while (v48 != v29);
LABEL_335:
                v31 = v267;
                goto LABEL_336;
              }

              goto LABEL_336;
            }

            goto LABEL_337;
          }

          return v1;
        }
      }
    }

    else
    {
      v244 = 0;
    }

    v257 = v259;
    v258 = 0x500000000;
    if ((mlir::matchConstantWithIntVector<long long>(0, &v257) & 1) == 0)
    {
      goto LABEL_254;
    }

    if (v5)
    {
      if (!v254 || (v49 = v258, mlir::ArrayAttr::getValue(&v254), v50 == v49))
      {
        if (v245)
        {
          v51 = v258;
          mlir::ArrayAttr::getValue(&v245);
          if (v52 != v51)
          {
            v243 = 259;
            mlir::OpState::emitOpError(&v253, &v240, &v261);
            mlir::ArrayAttr::getValue(&v245);
            if (v261)
            {
              LODWORD(v247) = 5;
              v248 = v53;
              v54 = &v247;
              v55 = v263;
              if (v264 >= v265)
              {
                if (v263 <= &v247 && v263 + 24 * v264 > &v247)
                {
                  v224 = &v247 - v263;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
                  v55 = v263;
                  v54 = v263 + v224;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
                  v54 = &v247;
                  v55 = v263;
                }
              }

              v56 = &v55[24 * v264];
              v57 = *v54;
              *(v56 + 2) = *(v54 + 2);
              *v56 = v57;
              v58 = ++v264;
              if (v261)
              {
                LODWORD(v247) = 3;
                v249 = 38;
                v59 = &v247;
                v60 = v263;
                if (v58 >= v265)
                {
                  if (v263 <= &v247 && v263 + 24 * v58 > &v247)
                  {
                    v230 = &v247 - v263;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v58 + 1, 24);
                    v60 = v263;
                    v59 = v263 + v230;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v58 + 1, 24);
                    v59 = &v247;
                    v60 = v263;
                  }
                }

                v61 = &v60[24 * v264];
                v62 = *v59;
                *(v61 + 2) = *(v59 + 2);
                *v61 = v62;
                v63 = ++v264;
                if (v261)
                {
                  LODWORD(v247) = 5;
                  v248 = v258;
                  v64 = &v247;
                  v65 = v263;
                  if (v63 >= v265)
                  {
                    if (v263 <= &v247 && v263 + 24 * v63 > &v247)
                    {
                      v234 = &v247 - v263;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v63 + 1, 24);
                      v65 = v263;
                      v64 = v263 + v234;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v63 + 1, 24);
                      v64 = &v247;
                      v65 = v263;
                    }
                  }

                  v66 = &v65[24 * v264];
                  v67 = *v64;
                  *(v66 + 2) = *(v64 + 2);
                  *v66 = v67;
                  v68 = ++v264;
                  if (v261)
                  {
                    LODWORD(v247) = 3;
                    v248 = " values.";
                    v249 = 8;
                    v69 = &v247;
                    v70 = v263;
                    if (v68 >= v265)
                    {
                      if (v263 <= &v247 && v263 + 24 * v68 > &v247)
                      {
                        v237 = &v247 - v263;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v68 + 1, 24);
                        v70 = v263;
                        v69 = v263 + v237;
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v68 + 1, 24);
                        v69 = &v247;
                        v70 = v263;
                      }
                    }

                    v71 = &v70[24 * v264];
                    v72 = *v69;
                    *(v71 + 2) = *(v69 + 2);
                    *v71 = v72;
                    ++v264;
                  }
                }
              }
            }

            v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v261);
            if (v261)
            {
              mlir::InFlightDiagnostic::report(&v261);
            }

            if (v272 == 1)
            {
              mlir::Diagnostic::~Diagnostic(v262);
            }

            goto LABEL_255;
          }
        }

LABEL_254:
        v1 = 1;
        goto LABEL_255;
      }

      v243 = 259;
      mlir::OpState::emitOpError(&v253, &v240, &v261);
      mlir::ArrayAttr::getValue(&v254);
      if (v261)
      {
        LODWORD(v247) = 5;
        v248 = v146;
        v147 = &v247;
        v148 = v263;
        if (v264 >= v265)
        {
          if (v263 <= &v247 && v263 + 24 * v264 > &v247)
          {
            v220 = &v247 - v263;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v148 = v263;
            v147 = v263 + v220;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v147 = &v247;
            v148 = v263;
          }
        }

        v149 = &v148[24 * v264];
        v150 = *v147;
        *(v149 + 2) = *(v147 + 2);
        *v149 = v150;
        v151 = ++v264;
        if (v261)
        {
          LODWORD(v247) = 3;
          v249 = 35;
          v152 = &v247;
          v153 = v263;
          if (v151 >= v265)
          {
            if (v263 <= &v247 && v263 + 24 * v151 > &v247)
            {
              v225 = &v247 - v263;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v151 + 1, 24);
              v153 = v263;
              v152 = v263 + v225;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v151 + 1, 24);
              v152 = &v247;
              v153 = v263;
            }
          }

          v154 = &v153[24 * v264];
          v155 = *v152;
          *(v154 + 2) = *(v152 + 2);
          *v154 = v155;
          v156 = ++v264;
          if (v261)
          {
            LODWORD(v247) = 5;
            v248 = v258;
            v157 = &v247;
            v158 = v263;
            if (v156 >= v265)
            {
              if (v263 <= &v247 && v263 + 24 * v156 > &v247)
              {
                v231 = &v247 - v263;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v156 + 1, 24);
                v158 = v263;
                v157 = v263 + v231;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v156 + 1, 24);
                v157 = &v247;
                v158 = v263;
              }
            }

            v159 = &v158[24 * v264];
            v160 = *v157;
            *(v159 + 2) = *(v157 + 2);
            *v159 = v160;
            v161 = ++v264;
            if (v261)
            {
              LODWORD(v247) = 3;
              v248 = " values.";
              v249 = 8;
              v162 = &v247;
              v163 = v263;
              if (v161 >= v265)
              {
                if (v263 <= &v247 && v263 + 24 * v161 > &v247)
                {
                  v235 = &v247 - v263;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v161 + 1, 24);
                  v163 = v263;
                  v162 = v263 + v235;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v161 + 1, 24);
                  v162 = &v247;
                  v163 = v263;
                }
              }

              v164 = &v163[24 * v264];
              v165 = *v162;
              *(v164 + 2) = *(v162 + 2);
              *v164 = v165;
              ++v264;
            }
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v261);
      if (v261)
      {
        mlir::InFlightDiagnostic::report(&v261);
      }

      if (v272 == 1)
      {
        if (v271 != &v272)
        {
          free(v271);
        }

        v166 = __p;
        if (__p)
        {
          v167 = v270;
          v168 = __p;
          if (v270 != __p)
          {
            do
            {
              v167 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v167 - 1);
            }

            while (v167 != v166);
            v168 = __p;
          }

          v270 = v166;
          operator delete(v168);
        }

        v169 = v267;
        if (!v267)
        {
          goto LABEL_341;
        }

        v170 = v268;
        v171 = v267;
        if (v268 == v267)
        {
LABEL_340:
          v268 = v169;
          operator delete(v171);
LABEL_341:
          if (v263 != v266)
          {
            free(v263);
          }

          goto LABEL_255;
        }

        do
        {
          v173 = *--v170;
          v172 = v173;
          *v170 = 0;
          if (v173)
          {
            MEMORY[0x1AC55A040](v172, 0x1000C8077774924);
          }
        }

        while (v170 != v169);
LABEL_339:
        v171 = v267;
        goto LABEL_340;
      }
    }

    else
    {
      if (v258 == 4)
      {
        goto LABEL_254;
      }

      v243 = 259;
      mlir::OpState::emitOpError(&v253, &v240, &v261);
      if (v261)
      {
        LODWORD(v247) = 3;
        v249 = 21;
        v174 = &v247;
        v175 = v263;
        if (v264 >= v265)
        {
          if (v263 <= &v247 && v263 + 24 * v264 > &v247)
          {
            v221 = &v247 - v263;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v175 = v263;
            v174 = v263 + v221;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v174 = &v247;
            v175 = v263;
          }
        }

        v176 = &v175[24 * v264];
        v177 = *v174;
        *(v176 + 2) = *(v174 + 2);
        *v176 = v177;
        v178 = ++v264;
        if (v261)
        {
          LODWORD(v247) = 5;
          v248 = v258;
          v179 = &v247;
          v180 = v263;
          if (v178 >= v265)
          {
            if (v263 <= &v247 && v263 + 24 * v178 > &v247)
            {
              v226 = &v247 - v263;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v178 + 1, 24);
              v180 = v263;
              v179 = v263 + v226;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v178 + 1, 24);
              v179 = &v247;
              v180 = v263;
            }
          }

          v181 = &v180[24 * v264];
          v182 = *v179;
          *(v181 + 2) = *(v179 + 2);
          *v181 = v182;
          v183 = ++v264;
          if (v261)
          {
            LODWORD(v247) = 3;
            v248 = " values.";
            v249 = 8;
            v184 = &v247;
            v185 = v263;
            if (v183 >= v265)
            {
              if (v263 <= &v247 && v263 + 24 * v183 > &v247)
              {
                v232 = &v247 - v263;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v183 + 1, 24);
                v185 = v263;
                v184 = v263 + v232;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v183 + 1, 24);
                v184 = &v247;
                v185 = v263;
              }
            }

            v186 = &v185[24 * v264];
            v187 = *v184;
            *(v186 + 2) = *(v184 + 2);
            *v186 = v187;
            ++v264;
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v261);
      if (v261)
      {
        mlir::InFlightDiagnostic::report(&v261);
      }

      if (v272 == 1)
      {
        if (v271 != &v272)
        {
          free(v271);
        }

        v188 = __p;
        if (__p)
        {
          v189 = v270;
          v190 = __p;
          if (v270 != __p)
          {
            do
            {
              v189 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v189 - 1);
            }

            while (v189 != v188);
            v190 = __p;
          }

          v270 = v188;
          operator delete(v190);
        }

        v169 = v267;
        if (!v267)
        {
          goto LABEL_341;
        }

        v191 = v268;
        v171 = v267;
        if (v268 == v267)
        {
          goto LABEL_340;
        }

        do
        {
          v193 = *--v191;
          v192 = v193;
          *v191 = 0;
          if (v193)
          {
            MEMORY[0x1AC55A040](v192, 0x1000C8077774924);
          }
        }

        while (v191 != v169);
        goto LABEL_339;
      }
    }

LABEL_255:
    v144 = v257;
    if (v257 != v259)
    {
LABEL_256:
      free(v144);
      return v1;
    }

    return v1;
  }

  v260 = 259;
  mlir::OpState::emitOpError(&v253, &v257, &v261);
  if (v261)
  {
    LODWORD(v240) = 2;
    v241 = v16;
    v17 = &v240;
    v18 = v263;
    if (v264 >= v265)
    {
      if (v263 <= &v240 && v263 + 24 * v264 > &v240)
      {
        v222 = &v240 - v263;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
        v18 = v263;
        v17 = (v263 + v222);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
        v17 = &v240;
        v18 = v263;
      }
    }

    v19 = &v18[24 * v264];
    v20 = *v17;
    *(v19 + 2) = v17[2];
    *v19 = v20;
    v21 = ++v264;
    if (v261)
    {
      LODWORD(v240) = 3;
      v241 = ".";
      v242 = 1;
      v22 = &v240;
      v23 = v263;
      if (v21 >= v265)
      {
        if (v263 <= &v240 && v263 + 24 * v21 > &v240)
        {
          v227 = &v240 - v263;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v21 + 1, 24);
          v23 = v263;
          v22 = (v263 + v227);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v21 + 1, 24);
          v22 = &v240;
          v23 = v263;
        }
      }

      v24 = &v23[24 * v264];
      v25 = *v22;
      *(v24 + 2) = v22[2];
      *v24 = v25;
      ++v264;
    }
  }

  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v261);
  if (v261)
  {
    mlir::InFlightDiagnostic::report(&v261);
  }

  if (v272 == 1)
  {
    if (v271 != &v272)
    {
      free(v271);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v270;
      v28 = __p;
      if (v270 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v270 = v26;
      operator delete(v28);
    }

    v29 = v267;
    if (v267)
    {
      v30 = v268;
      v31 = v267;
      if (v268 != v267)
      {
        do
        {
          v74 = *--v30;
          v73 = v74;
          *v30 = 0;
          if (v74)
          {
            MEMORY[0x1AC55A040](v73, 0x1000C8077774924);
          }
        }

        while (v30 != v29);
        goto LABEL_335;
      }

LABEL_336:
      v268 = v29;
      operator delete(v31);
    }

LABEL_337:
    v144 = v263;
    if (v263 == v266)
    {
      return v1;
    }

    goto LABEL_256;
  }

  return v1;
}

uint64_t mlir::mps::DepthwiseConv3DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v216[8] = *MEMORY[0x1E69E9840];
  v190 = a4;
  v191 = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = *(a7 + 4);
  }

  else
  {
    v16 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  v180 = a6;
  LOBYTE(v181) = 0;
  v182 = 0;
  v183 = v14;
  v184 = v15;
  v185 = v16;
  v186 = a9;
  v17 = a5;
  v187 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v180);
    if (v182 == 1)
    {
      v182 = 0;
    }

    mlir::OperationName::OperationName(&v181, "mps.depthwise_conv_3d", 21, Context);
    v182 = 1;
    v17 = v191;
  }

  v188 = a4;
  v189 = a5;
  if (v17 < 2 || (v19 = mlir::UnknownLoc::get(this, a2), !mlir::mps::DepthwiseConv3DOpAdaptor::verify(&v180, v19)))
  {
    v39 = mlir::Float32Type::get(this, a2);
LABEL_21:
    v40 = mlir::UnrankedTensorType::get(v39);
    goto LABEL_22;
  }

  v20 = mlir::ValueRange::dereference_iterator(&v190, 0);
  v21 = mlir::ValueRange::dereference_iterator(&v190, 1);
  v22 = (*(v20 + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
  v24 = v183;
  v25 = v184;
  v26 = v185;
  v205 = v22;
  v206 = v23;
  mlir::ValueRange::ValueRange(&v214, &v205, 2uLL);
  v28 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v22);
  v175[0] = v28;
  v175[1] = v29;
  v30 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v23);
  v174[0] = v30;
  v174[1] = v31;
  if (!v28 || (*(*v28 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id ? (v32 = v30 == 0) : (v32 = 1), v32 || *(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id))
  {
    v39 = v27;
    goto LABEL_21;
  }

  v211 = v213;
  v212 = 0x500000000;
  v208 = v210;
  v209 = 0x500000000;
  v205 = v207;
  v206 = 0x600000000;
  v202 = v204;
  v203 = 0x300000000;
  v199 = v201;
  v200 = 0x300000000;
  Shape = mlir::ShapedType::getShape(v175);
  v35 = v34;
  v178 = *(&v24 + 1);
  v179 = v26;
  v176 = v24;
  v177 = v25;
  if (v24)
  {
    Int = mlir::IntegerAttr::getInt(&v176);
    v37 = v206;
    v38 = v206 > 6;
    if (v206 == 6)
    {
      goto LABEL_31;
    }
  }

  else
  {
    Int = -4;
    v37 = v206;
    v38 = v206 > 6;
    if (v206 == 6)
    {
      goto LABEL_31;
    }
  }

  if (!v38)
  {
    if (HIDWORD(v206) > 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v207, 6uLL, 8), v37 = v206, v206 != 6))
    {
      bzero(v205 + 8 * v37, 48 - 8 * v37);
    }
  }

  LODWORD(v206) = 6;
LABEL_31:
  v43 = v203;
  if (v203 == 3)
  {
    v44 = v200;
    v45 = v200 > 3;
    if (v200 == 3)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v203 <= 3)
    {
      v52 = v203;
      v53 = v203;
      if (HIDWORD(v203) <= 2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v202, v204, 3uLL, 8);
        v52 = v203;
        v53 = v203;
      }

      memset_pattern16(v202 + 8 * v52, &unk_1A75989B0, 24 - 8 * v43);
      v51 = v53 - v43 + 3;
    }

    else
    {
      v51 = 3;
    }

    LODWORD(v203) = v51;
    v44 = v200;
    v45 = v200 > 3;
    if (v200 == 3)
    {
LABEL_33:
      v46 = v212;
      v47 = v212 > 5;
      if (v212 == 5)
      {
        goto LABEL_34;
      }

      goto LABEL_50;
    }
  }

  if (v45)
  {
    v54 = 3;
  }

  else
  {
    v55 = v44;
    v56 = v44;
    if (HIDWORD(v200) <= 2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v199, v201, 3uLL, 8);
      v55 = v200;
      v56 = v200;
    }

    memset_pattern16(v199 + 8 * v55, &unk_1A75989B0, 24 - 8 * v44);
    v54 = v56 - v44 + 3;
  }

  LODWORD(v200) = v54;
  v46 = v212;
  v47 = v212 > 5;
  if (v212 == 5)
  {
LABEL_34:
    v48 = v209;
    v49 = v209 > 5;
    if (v209 == 5)
    {
      goto LABEL_35;
    }

    goto LABEL_55;
  }

LABEL_50:
  if (!v47)
  {
    if (HIDWORD(v212) > 4 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v211, v213, 5uLL, 8), v46 = v212, v212 != 5))
    {
      bzero(&v211[8 * v46], 40 - 8 * v46);
    }
  }

  LODWORD(v212) = 5;
  v48 = v209;
  v49 = v209 > 5;
  if (v209 == 5)
  {
LABEL_35:
    v50 = v35 - 4;
    if (v35 < 4)
    {
      goto LABEL_95;
    }

LABEL_60:
    v57 = (v35 & (Int >> 63)) + Int;
    if (v57 <= v50)
    {
      v58 = v50;
    }

    else
    {
      v58 = (v35 & (Int >> 63)) + Int;
    }

    if (v57 >= v35)
    {
      v59 = v50;
    }

    else
    {
      v59 = v58;
    }

    v60 = v35 - 4;
    if (v35 != 4)
    {
      if (v35 == 5)
      {
        goto LABEL_74;
      }

      if (v35 <= HIDWORD(v209))
      {
        v61 = 5;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v208, v210, v35, 8);
        v61 = v209;
      }

      if (v35 != v61)
      {
        bzero(v208 + 8 * v61, 8 * (v35 - v61));
      }
    }

    LODWORD(v209) = v35;
LABEL_74:
    v62 = v208;
    v63 = v35 & 0x7FFFFFFFFFFFFFFCLL;
    v64 = vdupq_n_s64(v59);
    v65 = vdupq_n_s64(v60);
    v66 = xmmword_1A7598670;
    v67 = (v208 + 16);
    v68 = vdupq_n_s64(2uLL);
    v69 = vdupq_n_s64(1uLL);
    v70 = vdupq_n_s64(3uLL);
    v71 = vdupq_n_s64(4uLL);
    v72 = v35 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v73 = vaddq_s64(v66, v68);
      v67[-1] = vbslq_s8(vorrq_s8(vcgtq_s64(v66, v64), vcgtq_s64(v65, v66)), v66, vbslq_s8(vcgtq_s64(v64, v66), vaddq_s64(v66, v69), v65));
      *v67 = vbslq_s8(vorrq_s8(vcgtq_s64(v73, v64), vcgtq_s64(v65, v73)), v73, vbslq_s8(vcgtq_s64(v64, v73), vaddq_s64(v66, v70), v65));
      v66 = vaddq_s64(v66, v71);
      v67 += 2;
      v72 -= 4;
    }

    while (v72);
    for (; v35 != v63; ++v63)
    {
      if (v63 < v59)
      {
        v74 = v63 + 1;
      }

      else
      {
        v74 = v35 - 4;
      }

      if (v63 < v60 || v63 > v59)
      {
        v74 = v63;
      }

      v62[v63] = v74;
    }

    v76 = v212;
    if (v35 != v212)
    {
      if (v35 >= v212)
      {
        if (v35 > HIDWORD(v212))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v211, v213, v35, 8);
          v76 = v212;
        }

        if (v35 != v76)
        {
          bzero(&v211[8 * v76], 8 * (v35 - v76));
        }
      }

      LODWORD(v212) = v35;
    }

    v77 = v208;
    v78 = v211;
    v79 = v35;
    do
    {
      v81 = *Shape++;
      v80 = v81;
      v82 = *v77++;
      v78[v82] = v80;
      --v79;
    }

    while (v79);
    goto LABEL_95;
  }

LABEL_55:
  if (!v49)
  {
    if (HIDWORD(v209) > 4 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v208, v210, 5uLL, 8), v48 = v209, v209 != 5))
    {
      bzero(v208 + 8 * v48, 40 - 8 * v48);
    }
  }

  LODWORD(v209) = 5;
  v50 = v35 - 4;
  if (v35 >= 4)
  {
    goto LABEL_60;
  }

LABEL_95:
  if (v179)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v179) == 3)
    {
      LODWORD(v203) = 0;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v214, v179, 0);
      v83 = v179;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v179);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v192, v83, NumElements);
      for (; v216[0] != v194[0]; ++v216[0])
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v214, &v195);
        if (v196 > 0x40)
        {
          v107 = *v195;
        }

        else if (v196)
        {
          v107 = (v195 << -v196) >> -v196;
        }

        else
        {
          v107 = 0;
        }

        v108 = v203;
        if (v203 >= HIDWORD(v203))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v202, v204, v203 + 1, 8);
          v108 = v203;
        }

        *(v202 + v108) = v107;
        LODWORD(v203) = v203 + 1;
        if (v196 >= 0x41 && v195)
        {
          MEMORY[0x1AC55A040](v195, 0x1000C8000313F17);
        }
      }
    }
  }

  if (*(&v24 + 1))
  {
    if (mlir::DenseElementsAttr::getNumElements(&v178) == 3)
    {
      LODWORD(v200) = 0;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v214, v178, 0);
      v85 = v178;
      v86 = mlir::DenseElementsAttr::getNumElements(&v178);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v192, v85, v86);
      for (; v216[0] != v194[0]; ++v216[0])
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v214, &v195);
        if (v196 > 0x40)
        {
          v109 = *v195;
        }

        else if (v196)
        {
          v109 = (v195 << -v196) >> -v196;
        }

        else
        {
          v109 = 0;
        }

        v110 = v200;
        if (v200 >= HIDWORD(v200))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v199, v201, v200 + 1, 8);
          v110 = v200;
        }

        *(v199 + v110) = v109;
        LODWORD(v200) = v200 + 1;
        if (v196 >= 0x41 && v195)
        {
          MEMORY[0x1AC55A040](v195, 0x1000C8000313F17);
        }
      }
    }
  }

  if (v25)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v177) == 6)
    {
      LODWORD(v206) = 0;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v214, v177, 0);
      v87 = v177;
      v88 = mlir::DenseElementsAttr::getNumElements(&v177);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v192, v87, v88);
      for (; v216[0] != v194[0]; ++v216[0])
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v214, &v195);
        if (v196 > 0x40)
        {
          v111 = *v195;
        }

        else if (v196)
        {
          v111 = (v195 << -v196) >> -v196;
        }

        else
        {
          v111 = 0;
        }

        v112 = v206;
        if (v206 >= HIDWORD(v206))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v207, v206 + 1, 8);
          v112 = v206;
        }

        *(v205 + v112) = v111;
        LODWORD(v206) = v206 + 1;
        if (v196 >= 0x41 && v195)
        {
          MEMORY[0x1AC55A040](v195, 0x1000C8000313F17);
        }
      }
    }
  }

  if (*(&v25 + 1))
  {
    v89 = *(*(&v25 + 1) + 8);
  }

  else
  {
    v89 = 2;
  }

  v90 = mlir::ShapedType::getShape(v174);
  v195 = &v197;
  v197 = 0u;
  v198 = 0u;
  v196 = 0x400000004;
  if (Int >= 0)
  {
    v92 = v35;
  }

  else
  {
    v92 = 0;
  }

  if (v91 == 4)
  {
    v93 = Int - v92 + 4;
    if (v93 <= 3)
    {
      *&v197 = *(v90 + 8 * v93);
      if (v93)
      {
        v94 = -1;
      }

      else
      {
        v94 = 0;
      }

      *(&v197 + 1) = *(v90 + 8 * v94 + 8);
      if (v93 <= 1)
      {
        v95 = 0;
      }

      else
      {
        v95 = -1;
      }

      *&v198 = *(v90 + 8 * v95 + 16);
      if (v93 <= 2)
      {
        v96 = 0;
      }

      else
      {
        v96 = -1;
      }

      *(&v198 + 1) = *(v90 + 8 * v96 + 24);
    }
  }

  v192 = v194;
  v193 = 0x500000000;
  v97 = v212;
  v214 = v216;
  v215 = 0x800000000;
  if (!v212)
  {
    v100 = -4;
    v101 = v211;
    v99 = v216;
LABEL_130:
    v102 = 0;
    if (v100 < 4 || (v99 - v101) <= 0x1F)
    {
      goto LABEL_172;
    }

    v103 = 0;
    v102 = v100 & 0xFFFFFFFFFFFFFFFCLL;
    v104 = v100 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v105 = *&v101[v103 + 16];
      v106 = &v99[v103];
      *v106 = *&v101[v103];
      *(v106 + 1) = v105;
      v103 += 32;
      v104 -= 4;
    }

    while (v104);
    while (v100 != v102)
    {
LABEL_172:
      *&v99[8 * v102] = *&v101[8 * v102];
      ++v102;
    }

    goto LABEL_173;
  }

  if (v212 < 9)
  {
    v98 = 0;
    v99 = v216;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v216, v212, 8);
    v98 = v215;
    v99 = v214;
  }

  if (v97 != v98)
  {
    bzero(&v99[8 * v98], 8 * (v97 - v98));
  }

  LODWORD(v215) = v97;
  v101 = v211;
  v100 = v97 - 4;
  if (v97 != 4)
  {
    goto LABEL_130;
  }

LABEL_173:
  v114 = v97 - 3;
  v115 = v195;
  *&v99[8 * v100] = *v195;
  v116 = v202;
  if (v89 == 2 || v89 == 4)
  {
    v117 = *&v101[8 * v114];
    if (*v202 <= 1)
    {
      v118 = 1;
    }

    else
    {
      v118 = *v202;
    }

    v119 = *&v101[8 * v114];
    if (*v202 >= 2)
    {
      v119 = 0x8000000000000000;
      if (v117 != 0x8000000000000000)
      {
        v119 = v117 / v118;
        v120 = v117 / v118 * v118;
        if (v117 >= 0 && v120 != v117)
        {
          ++v119;
        }
      }
    }

    *&v99[8 * v114] = v119;
    v122 = *&v101[8 * v97 - 16];
    v123 = v116[1];
    if (v123 <= 1)
    {
      v124 = 1;
    }

    else
    {
      v124 = v116[1];
    }

    v125 = *&v101[8 * v97 - 16];
    if (v123 >= 2)
    {
      v125 = 0x8000000000000000;
      if (v122 != 0x8000000000000000)
      {
        v125 = v122 / v124;
        v126 = v122 / v124 * v124;
        if (v122 >= 0 && v126 != v122)
        {
          ++v125;
        }
      }
    }

    *&v99[8 * v97 - 16] = v125;
    v128 = v97 - 1;
    v129 = *&v101[8 * v97 - 8];
    v130 = v116[2];
    if (v130 <= 1)
    {
      v131 = 1;
    }

    else
    {
      v131 = v130;
    }

    if (v130 >= 2)
    {
      if (v129 == 0x8000000000000000)
      {
        v129 = 0x8000000000000000;
      }

      else
      {
        v165 = v129 / v131;
        v166 = v129 / v131 * v131;
        if (v129 < 0 || v166 == v129)
        {
          v129 = v165;
        }

        else
        {
          v129 = v165 + 1;
        }
      }
    }
  }

  else
  {
    v132 = v199;
    v133 = *&v101[8 * v114];
    v134 = v205;
    v135 = v115[1];
    v136 = 0x8000000000000000;
    v137 = v135 == 0x8000000000000000 || v133 == 0x8000000000000000;
    v138 = 0x8000000000000000;
    if (!v137)
    {
      v139 = *(v205 + 1) & ~(*(v205 + 1) >> 63);
      v140 = *v205 & ~(*v205 >> 63);
      v141 = *v199;
      if (*v199 <= 1)
      {
        v141 = 1;
      }

      v142 = *v202;
      if (*v202 <= 1)
      {
        v142 = 1;
      }

      if (v89 == 1)
      {
        v139 = 0;
        v140 = 0;
      }

      v143 = v139 + v133 + v140 + v142 + ~(v141 * (v135 - 1));
      v144 = v143 / v142;
      if (v143 / v142 * v142 == v143)
      {
        v145 = 0;
      }

      else
      {
        v145 = v143 >> 63;
      }

      v138 = (v145 + v144) & ~((v145 + v144) >> 63);
    }

    *&v99[8 * v114] = v138;
    v146 = *&v101[8 * v97 - 16];
    v147 = v115[2];
    if (v147 != 0x8000000000000000 && v146 != 0x8000000000000000)
    {
      v149 = v134[3] & ~(v134[3] >> 63);
      v150 = v134[2] & ~(v134[2] >> 63);
      v151 = v132[1];
      if (v151 <= 1)
      {
        v151 = 1;
      }

      v152 = v116[1];
      if (v152 <= 1)
      {
        v152 = 1;
      }

      if (v89 == 1)
      {
        v149 = 0;
        v150 = 0;
      }

      v153 = v149 + v146 + v150 + v152 + ~(v151 * (v147 - 1));
      v154 = v153 / v152;
      if (v153 / v152 * v152 == v153)
      {
        v155 = 0;
      }

      else
      {
        v155 = v153 >> 63;
      }

      v136 = (v155 + v154) & ~((v155 + v154) >> 63);
    }

    *&v99[8 * v97 - 16] = v136;
    v128 = v97 - 1;
    v156 = v115[3];
    v129 = 0x8000000000000000;
    if (v156 != 0x8000000000000000)
    {
      v157 = *&v101[8 * v128];
      if (v157 != 0x8000000000000000)
      {
        v158 = v134[5] & ~(v134[5] >> 63);
        v159 = v134[4] & ~(v134[4] >> 63);
        v160 = v132[2];
        if (v160 <= 1)
        {
          v160 = 1;
        }

        v161 = v116[2];
        if (v161 <= 1)
        {
          v161 = 1;
        }

        if (v89 == 1)
        {
          v158 = 0;
          v159 = 0;
        }

        v162 = v158 + v157 + v159 + v161 + ~(v160 * (v156 - 1));
        v163 = v162 / v161;
        if (v162 / v161 * v161 == v162)
        {
          v164 = 0;
        }

        else
        {
          v164 = v162 >> 63;
        }

        v129 = (v164 + v163) & ~((v164 + v163) >> 63);
      }
    }
  }

  *&v99[8 * v128] = v129;
  v168 = v193;
  if (v193 != v97)
  {
    if (v193 <= v97)
    {
      if (HIDWORD(v193) < v97)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v194, v97, 8);
        v168 = v193;
      }

      if (v168 != v97)
      {
        bzero(v192 + 8 * v168, 8 * (v97 - v168));
      }
    }

    LODWORD(v193) = v97;
    v99 = v214;
  }

  if (v97)
  {
    v169 = v208;
    v170 = v192;
    v171 = v97;
    do
    {
      v172 = *v169++;
      *v170++ = *&v99[8 * v172];
      --v171;
    }

    while (v171);
  }

  if (v99 != v216)
  {
    free(v99);
    v97 = v193;
  }

  v40 = mlir::RankedTensorType::get(v192, v97, v27, 0);
  v173 = v40;
  if (v192 != v194)
  {
    free(v192);
    v40 = v173;
  }

  if (v195 != &v197)
  {
    free(v195);
    v40 = v173;
  }

  if (v199 != v201)
  {
    free(v199);
    v40 = v173;
  }

  if (v202 != v204)
  {
    free(v202);
    v40 = v173;
  }

  if (v205 != v207)
  {
    free(v205);
    v40 = v173;
  }

  if (v208 != v210)
  {
    free(v208);
    v40 = v173;
  }

  if (v211 != v213)
  {
    free(v211);
    v40 = v173;
  }

LABEL_22:
  v41 = *(a11 + 8);
  if (v41 >= *(a11 + 12))
  {
    v113 = v40;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v41 + 1, 8);
    v40 = v113;
    v41 = *(a11 + 8);
  }

  *(*a11 + 8 * v41) = v40;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::DepthwiseConv3DOpAdaptor::verify(void *a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  v58 = a1[4];
  if (!v58)
  {
    v55 = "'mps.depthwise_conv_3d' op requires attribute 'dilation_rates'";
    v57 = 259;
    mlir::emitError(a2, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v67;
      v22 = __p;
      if (v67 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v67 = v20;
      operator delete(v22);
    }

    v23 = v64;
    if (v64)
    {
      v24 = v65;
      v25 = v64;
      if (v65 != v64)
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
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v54 = a1[5];
  if (!v54)
  {
    v55 = "'mps.depthwise_conv_3d' op requires attribute 'explicit_padding'";
    v57 = 259;
    mlir::emitError(a2, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v67;
      v30 = __p;
      if (v67 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v67 = v28;
      operator delete(v30);
    }

    v23 = v64;
    if (v64)
    {
      v31 = v65;
      v25 = v64;
      if (v65 != v64)
      {
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

        while (v31 != v23);
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  if (!a1[6])
  {
    v55 = "'mps.depthwise_conv_3d' op requires attribute 'padding_style'";
    v57 = 259;
    mlir::emitError(a2, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v67;
      v36 = __p;
      if (v67 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v67 = v34;
      operator delete(v36);
    }

    v23 = v64;
    if (v64)
    {
      v37 = v65;
      v25 = v64;
      if (v65 != v64)
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

        while (v37 != v23);
        goto LABEL_85;
      }

LABEL_86:
      v65 = v23;
      operator delete(v25);
    }

LABEL_87:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v19;
  }

  v53 = a1[7];
  if (!v53)
  {
    v55 = "'mps.depthwise_conv_3d' op requires attribute 'strides'";
    v57 = 259;
    mlir::emitError(a2, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v67;
      v42 = __p;
      if (v67 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v67 = v40;
      operator delete(v42);
    }

    v23 = v64;
    if (v64)
    {
      v43 = v65;
      v25 = v64;
      if (v65 != v64)
      {
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

        while (v43 != v23);
LABEL_85:
        v25 = v64;
        goto LABEL_86;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v53);
  v56 = v4;
  Type = mlir::ElementsAttr::getType(&v55);
  v60 = mlir::BaseMemRefType::operator mlir::ShapedType(&Type);
  v61 = v5;
  Shape = mlir::ShapedType::getShape(&v60);
  v59 = 3;
  if (v7 == 1 && *Shape == v59)
  {
    v48 = v53;
    Value = mlir::ArrayAttr::getValue(&v48);
    v50 = v8;
    isSplat = mlir::ElementsAttr::isSplat(&Value);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v58);
      v56 = v9;
      Type = mlir::ElementsAttr::getType(&v55);
      v60 = mlir::BaseMemRefType::operator mlir::ShapedType(&Type);
      v61 = v10;
      v11 = mlir::ShapedType::getShape(&v60);
      v59 = 3;
      if (v12 == 1 && *v11 == v59 && (v48 = v58, Value = mlir::ArrayAttr::getValue(&v48), v50 = v13, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
        v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v54);
        v56 = v14;
        Type = mlir::ElementsAttr::getType(&v55);
        v60 = mlir::BaseMemRefType::operator mlir::ShapedType(&Type);
        v61 = v15;
        v16 = mlir::ShapedType::getShape(&v60);
        v59 = 6;
        if (v17 == 1 && *v16 == v59 && (v48 = v54, Value = mlir::ArrayAttr::getValue(&v48), v50 = v18, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
        {
          if (!v3)
          {
            return 1;
          }

          v55 = v3;
          v60 = mlir::AffineMapAttr::getValue(&v55);
          if (mlir::Type::isSignedInteger(&v60, 32))
          {
            return 1;
          }

          v47 = "'mps.depthwise_conv_3d' op attribute 'channelAxis' failed to satisfy constraint: 32-bit signed integer attribute";
        }

        else
        {
          v47 = "'mps.depthwise_conv_3d' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
        }
      }

      else
      {
        v47 = "'mps.depthwise_conv_3d' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      }

      v55 = v47;
      v57 = 259;
      mlir::emitError(a2, &v55, &v60);
      v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v60);
      return v19;
    }
  }

  v55 = "'mps.depthwise_conv_3d' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {3}";
  v57 = 259;
  mlir::emitError(a2, &v55, &v60);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
  if (v60)
  {
    mlir::InFlightDiagnostic::report(&v60);
  }

  if (v69 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v61);
  }

  return v19;
}