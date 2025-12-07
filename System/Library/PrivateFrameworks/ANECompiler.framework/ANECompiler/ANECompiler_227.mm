uint64_t mlir::mps::ReshapeOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v13 = *a7;
  }

  else
  {
    v13 = 0;
  }

  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = v13;
  v34 = a9;
  v35 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "mps.reshape", 11, Context);
    v32 = 1;
  }

  v36 = a4;
  v37 = a5;
  v38 = a4;
  v39 = 0;
  v15 = mlir::ValueRange::dereference_iterator(&v38, 0);
  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
  v28 = 0;
  v29 = 0;
  if (v16)
  {
    v18 = v17;
    v19 = v16;
    v38 = v36;
    v39 = 1;
    v38 = mlir::ValueRange::offset_base(&v38, 1);
    v39 = 0;
    v27 = &v28;
    v38 = mlir::ValueRange::dereference_iterator(&v38, 0);
    DefiningOp = mlir::Value::getDefiningOp(&v38);
    if (DefiningOp)
    {
      v21 = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v27, DefiningOp);
      v16 = v19;
      if (v21)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = v19;
    }
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v16);
  v22 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
LABEL_14:
  v24 = *(a11 + 8);
  if (v24 >= *(a11 + 12))
  {
    v26 = v22;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v24 + 1, 8);
    v22 = v26;
    v24 = *(a11 + 8);
  }

  *(*a11 + 8 * v24) = v22;
  ++*(a11 + 8);
  return 1;
}

void *mlir::mps::anonymous namespace::inferReshapeReturnType(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a2;
  v7 = a1;
  v72[6] = *MEMORY[0x1E69E9840];
  v64 = a1;
  v65 = a2;
  v70 = v72;
  v71 = 0x600000000;
  v8 = 1;
  mlir::getIntValues<long long>(a3, a4, &v70, 1);
  v67 = v69;
  v68 = 0x600000000;
  if (v71)
  {
    v9 = 0;
    v10 = v70;
    v11 = v70 + 8 * v71;
    v8 = 1;
    do
    {
      while (1)
      {
        v13 = *v10;
        if (*v10 == -1 || v13 == 0x8000000000000000)
        {
          break;
        }

        if (v13)
        {
          v17 = 1;
        }

        else
        {
          v17 = a5 == 0;
        }

        if (!v17)
        {
          if (mlir::ElementsAttr::getShapedType(&v64))
          {
            mlir::ShapedType::getShape(&v64);
            if (v9 < v18)
            {
              *v10 = *(mlir::ShapedType::getShape(&v64) + 8 * v9);
            }
          }
        }

        v12 = *v10;
        v10 += 8;
        v8 *= v12;
        ++v9;
        if (v10 == v11)
        {
          goto LABEL_20;
        }
      }

      v15 = v70;
      v16 = v68;
      if (v68 >= HIDWORD(v68))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v69, v68 + 1, 8);
        v16 = v68;
      }

      *(v67 + v16) = &v15[8 * v9];
      LODWORD(v68) = v68 + 1;
      ++v9;
      v10 += 8;
    }

    while (v10 != v11);
LABEL_20:
    v7 = v64;
    v6 = v65;
  }

  v66[0] = v7;
  v66[1] = v6;
  if (mlir::ElementsAttr::getShapedType(v66))
  {
    Shape = mlir::ShapedType::getShape(v66);
    if (v20)
    {
      v21 = 8 * v20;
      while (*Shape)
      {
        ++Shape;
        v21 -= 8;
        if (!v21)
        {
          goto LABEL_26;
        }
      }

LABEL_34:
      v29 = v68;
      if (!v68)
      {
        goto LABEL_43;
      }

      v30 = v67;
      v31 = (v68 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v31)
      {
        v32 = v31 + 1;
        v33 = (v31 + 1) & 0x3FFFFFFFFFFFFFFELL;
        v34 = v67 + 8 * v33;
        v35 = (v67 + 8);
        v36 = v33;
        do
        {
          v37 = *v35;
          **(v35 - 1) = 0;
          *v37 = 0;
          v35 += 2;
          v36 -= 2;
        }

        while (v36);
        if (v32 == v33)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v34 = v67;
      }

      v38 = &v30[8 * v29];
      do
      {
        v39 = *v34;
        v34 += 8;
        *v39 = 0;
      }

      while (v34 != v38);
      goto LABEL_43;
    }
  }

LABEL_26:
  if (!v8)
  {
    goto LABEL_34;
  }

  if (!mlir::ElementsAttr::getShapedType(&v64))
  {
    goto LABEL_43;
  }

  v22 = mlir::ShapedType::getShape(&v64);
  if (v23)
  {
    v24 = 8 * v23;
    while (*v22 != 0x8000000000000000)
    {
      ++v22;
      v24 -= 8;
      if (!v24)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
LABEL_32:
    v25 = v68;
    v26 = mlir::ShapedType::getShape(&v64);
    NumElements = mlir::ShapedType::getNumElements(v26, v27);
    if (v25 == 1)
    {
      **v67 = NumElements / v8;
      goto LABEL_43;
    }

    if (NumElements == v8)
    {
      v53 = v68;
      if (v68)
      {
        v54 = v67;
        v55 = (v68 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v55)
        {
          v56 = v55 + 1;
          v57 = (v55 + 1) & 0x3FFFFFFFFFFFFFFELL;
          v58 = v67 + 8 * v57;
          v59 = (v67 + 8);
          v60 = v57;
          do
          {
            v61 = *v59;
            **(v59 - 1) = 1;
            *v61 = 1;
            v59 += 2;
            v60 -= 2;
          }

          while (v60);
          if (v56 == v57)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v58 = v67;
        }

        v62 = &v54[8 * v53];
        do
        {
          v63 = *v58;
          v58 += 8;
          *v63 = 1;
        }

        while (v58 != v62);
      }
    }
  }

LABEL_43:
  v40 = v70;
  v41 = v71;
  if (!v71)
  {
    goto LABEL_57;
  }

  v42 = (v71 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v43 = v70;
  if (v42 >= 3)
  {
    v44 = v42 + 1;
    v43 = v70 + 8 * (v44 & 0x3FFFFFFFFFFFFFFCLL);
    v45 = (v70 + 16);
    v46.i64[0] = -1;
    v46.i64[1] = -1;
    v47 = v44 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v48 = vmovn_s64(vceqq_s64(v45[-1], v46));
      if (v48.i8[0])
      {
        v45[-1].i64[0] = 0x8000000000000000;
        if ((v48.i8[4] & 1) == 0)
        {
LABEL_49:
          v49 = vmovn_s64(vceqq_s64(*v45, v46));
          if ((v49.i8[0] & 1) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_54;
        }
      }

      else if ((v48.i8[4] & 1) == 0)
      {
        goto LABEL_49;
      }

      v45[-1].i64[1] = 0x8000000000000000;
      v49 = vmovn_s64(vceqq_s64(*v45, v46));
      if ((v49.i8[0] & 1) == 0)
      {
LABEL_50:
        if (v49.i8[4])
        {
          goto LABEL_55;
        }

        goto LABEL_46;
      }

LABEL_54:
      v45->i64[0] = 0x8000000000000000;
      if (v49.i8[4])
      {
LABEL_55:
        v45->i64[1] = 0x8000000000000000;
      }

LABEL_46:
      v45 += 2;
      v47 -= 4;
      if (!v47)
      {
        if (v44 == (v44 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_57;
        }

        goto LABEL_64;
      }
    }
  }

  do
  {
LABEL_64:
    if (*v43 == -1)
    {
      *v43 = 0x8000000000000000;
    }

    ++v43;
  }

  while (v43 != (v40 + 8 * v41));
LABEL_57:
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v64);
  v66[0] = mlir::RankedTensorType::get(v40, v41, ElementTypeOrSelf, 0);
  v51 = mlir::TensorType::operator mlir::ShapedType(v66);
  if (v67 != v69)
  {
    free(v67);
  }

  if (v70 != v72)
  {
    free(v70);
  }

  return v51;
}

BOOL mlir::mps::ReshapeOp::verify(uint64_t **this)
{
  v89[4] = *MEMORY[0x1E69E9840];
  v76 = 0;
  v77 = 0;
  v2 = *((*this)[9] + 56);
  v87 = &v76;
  v78[0] = v2;
  DefiningOp = mlir::Value::getDefiningOp(v78);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v87, DefiningOp))
  {
    return 1;
  }

  v4 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = *v4;
  {
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = v4;
    mlir::Builder::getI32VectorAttr();
    v4 = v16;
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v9 = v7;
  v10 = v8;
  do
  {
    v11 = v10 >> 1;
    v12 = &v9[2 * (v10 >> 1)];
    v14 = *v12;
    v13 = v12 + 2;
    v10 += ~(v10 >> 1);
    if (v14 < v6)
    {
      v9 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  while (v10);
  if (v9 != &v7[2 * v8] && *v9 == v6)
  {
    v17 = v9[1];
    goto LABEL_18;
  }

LABEL_17:
  v17 = 0;
LABEL_18:
  v75[0] = v4;
  v75[1] = v17;
  v74[1] = v18;
  v87 = v89;
  v88 = 0x400000000;
  mlir::getIntValues<long long>(v76, v77, &v87, 1);
  if ((*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] && mlir::ElementsAttr::getShapedType(v75) && v88)
  {
    v19 = 0;
    v20 = v87;
    v21 = 8 * v88;
    while (1)
    {
      if (!v20[v19])
      {
        mlir::ShapedType::getShape(v75);
        if (v22 <= v19)
        {
          break;
        }
      }

      ++v19;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_38;
      }
    }

    v72[0] = "zero_is_copy semantics is invalid: shape operand contains a zero value outside the input rank.";
    v73 = 259;
    mlir::OpState::emitOpError(this, v72, v78);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v78);
    v23 = result;
    if (v78[0])
    {
      mlir::InFlightDiagnostic::report(v78);
      result = v23;
    }

    if (v86 != 1)
    {
      goto LABEL_82;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v84;
      v26 = __p;
      if (v84 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v84 = v24;
      operator delete(v26);
    }

    v27 = v81;
    result = v23;
    if (!v81)
    {
      goto LABEL_106;
    }

    v28 = v82;
    v29 = v81;
    if (v82 == v81)
    {
LABEL_105:
      v82 = v27;
      operator delete(v29);
      result = v23;
LABEL_106:
      if (v79 != &v80)
      {
        free(v79);
        result = v23;
      }

      goto LABEL_82;
    }

    do
    {
      v39 = *--v28;
      v38 = v39;
      *v28 = 0;
      if (v39)
      {
        MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
      }
    }

    while (v28 != v27);
LABEL_104:
    v29 = v81;
    goto LABEL_105;
  }

LABEL_38:
  if (mlir::ElementsAttr::getShapedType(v75))
  {
    Shape = mlir::ShapedType::getShape(v75);
    if (v31)
    {
      v32 = 8 * v31;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v32 -= 8;
        if (!v32)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_70;
    }

LABEL_43:
    v33 = mlir::ShapedType::getShape(v74);
    if (!v34)
    {
      goto LABEL_70;
    }

    v35 = (v34 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v35 >= 3)
    {
      v40 = v35 + 1;
      v41 = (v35 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v37 = (v33 + 8 * v41);
      v42 = (v33 + 16);
      v43 = 0uLL;
      v44 = vnegq_f64(0);
      v45 = v41;
      v46 = 0uLL;
      do
      {
        v43 = vsubq_s64(v43, vceqq_s64(v42[-1], v44));
        v46 = vsubq_s64(v46, vceqq_s64(*v42, v44));
        v42 += 2;
        v45 -= 4;
      }

      while (v45);
      v36 = vaddvq_s64(vaddq_s64(v46, v43));
      if (v40 == v41)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v36 = 0;
      v37 = v33;
    }

    do
    {
      v47 = *v37++;
      if (v47 == 0x8000000000000000)
      {
        ++v36;
      }
    }

    while (v37 != (v33 + 8 * v34));
LABEL_56:
    if (v36 >= 2)
    {
      v72[0] = "the result shape can not be resolved";
      v73 = 259;
      mlir::OpState::emitOpError(this, v72, v78);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v78);
      v23 = result;
      if (v78[0])
      {
        mlir::InFlightDiagnostic::report(v78);
        result = v23;
      }

      if (v86 != 1)
      {
        goto LABEL_82;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v48 = __p;
      if (__p)
      {
        v49 = v84;
        v50 = __p;
        if (v84 != __p)
        {
          do
          {
            v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
          }

          while (v49 != v48);
          v50 = __p;
        }

        v84 = v48;
        operator delete(v50);
      }

      v27 = v81;
      result = v23;
      if (!v81)
      {
        goto LABEL_106;
      }

      v51 = v82;
      v29 = v81;
      if (v82 == v81)
      {
        goto LABEL_105;
      }

      do
      {
        v65 = *--v51;
        v64 = v65;
        *v51 = 0;
        if (v65)
        {
          MEMORY[0x1AC55A040](v64, 0x1000C8077774924);
        }
      }

      while (v51 != v27);
      goto LABEL_104;
    }
  }

LABEL_70:
  if (mlir::ElementsAttr::getShapedType(v74))
  {
    v52 = mlir::ShapedType::getShape(v74);
    if (v53)
    {
      v54 = 8 * v53;
      while (*v52 != 0x8000000000000000)
      {
        ++v52;
        v54 -= 8;
        if (!v54)
        {
          goto LABEL_75;
        }
      }
    }

    else
    {
LABEL_75:
      if (mlir::ElementsAttr::getShapedType(v75))
      {
        v55 = mlir::ShapedType::getShape(v75);
        if (v56)
        {
          v57 = 8 * v56;
          while (*v55 != 0x8000000000000000)
          {
            ++v55;
            v57 -= 8;
            if (!v57)
            {
              goto LABEL_80;
            }
          }
        }

        else
        {
LABEL_80:
          v58 = mlir::ShapedType::getShape(v74);
          NumElements = mlir::ShapedType::getNumElements(v58, v59);
          v61 = mlir::ShapedType::getShape(v75);
          if (NumElements != mlir::ShapedType::getNumElements(v61, v62))
          {
            v72[0] = "the result shape is not compatible with the input shape";
            v73 = 259;
            mlir::OpState::emitOpError(this, v72, v78);
            result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v78);
            v23 = result;
            if (v78[0])
            {
              mlir::InFlightDiagnostic::report(v78);
              result = v23;
            }

            if (v86 != 1)
            {
              goto LABEL_82;
            }

            if (v85 != &v86)
            {
              free(v85);
            }

            v66 = __p;
            if (__p)
            {
              v67 = v84;
              v68 = __p;
              if (v84 != __p)
              {
                do
                {
                  v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
                }

                while (v67 != v66);
                v68 = __p;
              }

              v84 = v66;
              operator delete(v68);
            }

            v27 = v81;
            result = v23;
            if (!v81)
            {
              goto LABEL_106;
            }

            v69 = v82;
            v29 = v81;
            if (v82 == v81)
            {
              goto LABEL_105;
            }

            do
            {
              v71 = *--v69;
              v70 = v71;
              *v69 = 0;
              if (v71)
              {
                MEMORY[0x1AC55A040](v70, 0x1000C8077774924);
              }
            }

            while (v69 != v27);
            goto LABEL_104;
          }
        }
      }
    }
  }

  result = 1;
LABEL_82:
  if (v87 != v89)
  {
    v63 = result;
    free(v87);
    return v63;
  }

  return result;
}

void mlir::mps::ReshapeOp::downgradeToVersion(uint64_t **a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v26 = &unk_1F1A17630;
  v27 = 0x300000001;
  v28 = 4;
  v29[0] = mlir::getElementTypeOrSelf(*(v6[9] + 24));
  if (mlir::Type::isInteger(v29, 4) && ((v7 = a2[2], v7 < v27) || v7 == v27 && ((v16 = a2[3], v16 < HIDWORD(v27)) || v16 == HIDWORD(v27) && a2[4] < v28)))
  {
    v19[0] = "failed to downgrade: requested target version is {0}, but input type of int4 is only supported from version {1}";
    v19[1] = 111;
    v19[2] = v23;
    v19[3] = 2;
    v20 = 1;
    v21[0] = &unk_1F1A17760;
    v21[1] = a2;
    v22[0] = &unk_1F1A17790;
    v22[1] = &v26;
    v23[0] = v21;
    v23[1] = v22;
    v25 = 263;
    v24 = v19;
    mlir::OpState::emitOpError(a1, &v24, v29);
    *a3 = 0;
    *(a3 + 16) = 0;
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

      v8 = __p;
      if (__p)
      {
        v9 = v35;
        v10 = __p;
        if (v35 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v35 = v8;
        operator delete(v10);
      }

      v11 = v32;
      if (v32)
      {
        v12 = v33;
        v13 = v32;
        if (v33 != v32)
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
          v13 = v32;
        }

        v33 = v11;
        operator delete(v13);
      }

      if (v30 != &v31)
      {
        free(v30);
      }
    }
  }

  else
  {
    v17 = *(v6 + 9);
    v18 = v6 - 2;
    if (!v17)
    {
      v18 = 0;
    }

    *a3 = v18;
    *(a3 + 8) = v17;
    *(a3 + 16) = 1;
  }
}

uint64_t mlir::mps::DepthToSpace2DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v71[4] = *MEMORY[0x1E69E9840];
  v68[0] = a4;
  v68[1] = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0uLL;
  }

  v60 = a6;
  LOBYTE(v61) = 0;
  v62 = 0;
  v63 = v16;
  v64 = a9;
  v65 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v60);
    if (v62 == 1)
    {
      v62 = 0;
    }

    mlir::OperationName::OperationName(&v61, "mps.depth_to_space_2d", 21, Context);
    v62 = 1;
  }

  v66 = a4;
  v67 = a5;
  if (a5 < 4 || (v18 = mlir::UnknownLoc::get(this, a2), !mlir::mps::DepthToSpace2DOpAdaptor::verify(&v60, v18)))
  {
    ElementTypeOrSelf = mlir::Float32Type::get(this, a2);
    goto LABEL_21;
  }

  v19 = (*(mlir::ValueRange::dereference_iterator(v68, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v20 = mlir::ValueRange::dereference_iterator(v68, 1);
  v21 = mlir::ValueRange::dereference_iterator(v68, 2);
  v22 = mlir::ValueRange::dereference_iterator(v68, 3);
  v23 = v19;
  v24 = v63;
  v25 = *(*v19 + 136);
  if (v25 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v19 = 0;
  }

  v56 = v19;
  if (v19)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_22;
    }

    v69 = 0;
    v70 = 0;
    v59 = &v69;
    *v57 = v20;
    DefiningOp = mlir::Value::getDefiningOp(v57);
    if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v59, DefiningOp))
    {
      SingleInt = mlir::getSingleIntValue<long long>(v69, v70);
      v30 = v29;
      v54 = SingleInt;
      v55 = SingleInt & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      v54 = 0;
      v55 = 0;
      v30 = 0;
    }

    v69 = 0;
    v70 = 0;
    v59 = &v69;
    *v57 = v21;
    v34 = mlir::Value::getDefiningOp(v57);
    if (v34 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v59, v34))
    {
      v35 = mlir::getSingleIntValue<long long>(v69, v70);
      v37 = v36;
      v38 = v35 & 0xFFFFFFFFFFFFFF00;
      v39 = v35;
    }

    else
    {
      v38 = 0;
      v37 = 0;
      v39 = 0;
    }

    v69 = 0;
    v70 = 0;
    v59 = &v69;
    *v57 = v22;
    v40 = mlir::Value::getDefiningOp(v57);
    if (v40)
    {
      if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v59, v40))
      {
        v41 = mlir::getSingleIntValue<long long>(v69, v70);
        if (v30 & v37 & 1) != 0 && (v42)
        {
          v43 = v41;
          v69 = v71;
          v70 = 0x400000000;
          Value = mlir::ArrayAttr::getValue(&v56);
          v46 = v45;
          v59 = v24;
          mlir::IntegerAttr::getValue(&v59, v57);
          if (v58 > 0x40)
          {
            v47 = **v57;
            MEMORY[0x1AC55A040]();
          }

          else
          {
            LODWORD(v47) = v57[0];
          }

          if (v48)
          {
            v49 = v69;
            v50 = v70;
            ElementType = mlir::TensorType::getElementType(&v56);
            v23 = mlir::RankedTensorType::get(v49, v50, ElementType, 0);
          }

          else
          {
            v23 = 0;
          }

          if (v69 != v71)
          {
            v52 = v23;
            free(v69);
            v23 = v52;
          }

          if (!v48)
          {
            return 0;
          }

          goto LABEL_22;
        }
      }
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v19);
LABEL_21:
    v23 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    goto LABEL_22;
  }

  if (!mlir::emitOptionalError<char const(&)[41]>(a2, a3, "Cannot use on a non-tensor input type"))
  {
    return 0;
  }

  v23 = 0;
LABEL_22:
  v32 = *(a11 + 8);
  if (v32 >= *(a11 + 12))
  {
    v53 = v23;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v32 + 1, 8);
    v23 = v53;
    v32 = *(a11 + 8);
  }

  *(*a11 + 8 * v32) = v23;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::DepthToSpace2DOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    v19[0] = *(a1 + 24);
    v21[0] = mlir::AffineMapAttr::getValue(v19);
    if (mlir::Type::isUnsignedInteger(v21, 32))
    {
      return 1;
    }

    v19[0] = "'mps.depth_to_space_2d' op attribute 'block_size' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v20 = 259;
    mlir::emitError(a2, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
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

      v12 = __p;
      if (__p)
      {
        v13 = v27;
        v14 = __p;
        if (v27 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v27 = v12;
        operator delete(v14);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v15 = v25;
      v9 = v24;
      if (v25 == v24)
      {
LABEL_37:
        v25 = v7;
        operator delete(v9);
LABEL_38:
        if (v22 != &v23)
        {
          free(v22);
        }

        return v3;
      }

      do
      {
        v17 = *--v15;
        v16 = v17;
        *v15 = 0;
        if (v17)
        {
          MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
        }
      }

      while (v15 != v7);
LABEL_36:
      v9 = v24;
      goto LABEL_37;
    }
  }

  else
  {
    v19[0] = "'mps.depth_to_space_2d' op requires attribute 'block_size'";
    v20 = 259;
    mlir::emitError(a2, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
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

      v4 = __p;
      if (__p)
      {
        v5 = v27;
        v6 = __p;
        if (v27 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v27 = v4;
        operator delete(v6);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v8 = v25;
      v9 = v24;
      if (v25 == v24)
      {
        goto LABEL_37;
      }

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
      goto LABEL_36;
    }
  }

  return v3;
}

uint64_t mlir::mps::SpaceToDepth2DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v71[4] = *MEMORY[0x1E69E9840];
  v68[0] = a4;
  v68[1] = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0uLL;
  }

  v60 = a6;
  LOBYTE(v61) = 0;
  v62 = 0;
  v63 = v16;
  v64 = a9;
  v65 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v60);
    if (v62 == 1)
    {
      v62 = 0;
    }

    mlir::OperationName::OperationName(&v61, "mps.space_to_depth_2d", 21, Context);
    v62 = 1;
  }

  v66 = a4;
  v67 = a5;
  if (a5 < 4 || (v18 = mlir::UnknownLoc::get(this, a2), !mlir::mps::SpaceToDepth2DOpAdaptor::verify(&v60, v18)))
  {
    ElementTypeOrSelf = mlir::Float32Type::get(this, a2);
    goto LABEL_21;
  }

  v19 = (*(mlir::ValueRange::dereference_iterator(v68, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v20 = mlir::ValueRange::dereference_iterator(v68, 1);
  v21 = mlir::ValueRange::dereference_iterator(v68, 2);
  v22 = mlir::ValueRange::dereference_iterator(v68, 3);
  v23 = v19;
  v24 = v63;
  v25 = *(*v19 + 136);
  if (v25 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v19 = 0;
  }

  v56 = v19;
  if (v19)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_22;
    }

    v69 = 0;
    v70 = 0;
    v59 = &v69;
    *v57 = v20;
    DefiningOp = mlir::Value::getDefiningOp(v57);
    if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v59, DefiningOp))
    {
      SingleInt = mlir::getSingleIntValue<long long>(v69, v70);
      v30 = v29;
      v54 = SingleInt;
      v55 = SingleInt & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      v54 = 0;
      v55 = 0;
      v30 = 0;
    }

    v69 = 0;
    v70 = 0;
    v59 = &v69;
    *v57 = v21;
    v34 = mlir::Value::getDefiningOp(v57);
    if (v34 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v59, v34))
    {
      v35 = mlir::getSingleIntValue<long long>(v69, v70);
      v37 = v36;
      v38 = v35 & 0xFFFFFFFFFFFFFF00;
      v39 = v35;
    }

    else
    {
      v38 = 0;
      v37 = 0;
      v39 = 0;
    }

    v69 = 0;
    v70 = 0;
    v59 = &v69;
    *v57 = v22;
    v40 = mlir::Value::getDefiningOp(v57);
    if (v40)
    {
      if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v59, v40))
      {
        v41 = mlir::getSingleIntValue<long long>(v69, v70);
        if (v30 & v37 & 1) != 0 && (v42)
        {
          v43 = v41;
          v69 = v71;
          v70 = 0x400000000;
          Value = mlir::ArrayAttr::getValue(&v56);
          v46 = v45;
          v59 = v24;
          mlir::IntegerAttr::getValue(&v59, v57);
          if (v58 > 0x40)
          {
            v47 = **v57;
            MEMORY[0x1AC55A040]();
          }

          else
          {
            LODWORD(v47) = v57[0];
          }

          if (v48)
          {
            v49 = v69;
            v50 = v70;
            ElementType = mlir::TensorType::getElementType(&v56);
            v23 = mlir::RankedTensorType::get(v49, v50, ElementType, 0);
          }

          else
          {
            v23 = 0;
          }

          if (v69 != v71)
          {
            v52 = v23;
            free(v69);
            v23 = v52;
          }

          if (!v48)
          {
            return 0;
          }

          goto LABEL_22;
        }
      }
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v19);
LABEL_21:
    v23 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    goto LABEL_22;
  }

  if (!mlir::emitOptionalError<char const(&)[41]>(a2, a3, "Cannot use on a non-tensor input type"))
  {
    return 0;
  }

  v23 = 0;
LABEL_22:
  v32 = *(a11 + 8);
  if (v32 >= *(a11 + 12))
  {
    v53 = v23;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v32 + 1, 8);
    v23 = v53;
    v32 = *(a11 + 8);
  }

  *(*a11 + 8 * v32) = v23;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::SpaceToDepth2DOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    v19[0] = *(a1 + 24);
    v21[0] = mlir::AffineMapAttr::getValue(v19);
    if (mlir::Type::isUnsignedInteger(v21, 32))
    {
      return 1;
    }

    v19[0] = "'mps.space_to_depth_2d' op attribute 'block_size' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v20 = 259;
    mlir::emitError(a2, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
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

      v12 = __p;
      if (__p)
      {
        v13 = v27;
        v14 = __p;
        if (v27 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v27 = v12;
        operator delete(v14);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v15 = v25;
      v9 = v24;
      if (v25 == v24)
      {
LABEL_37:
        v25 = v7;
        operator delete(v9);
LABEL_38:
        if (v22 != &v23)
        {
          free(v22);
        }

        return v3;
      }

      do
      {
        v17 = *--v15;
        v16 = v17;
        *v15 = 0;
        if (v17)
        {
          MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
        }
      }

      while (v15 != v7);
LABEL_36:
      v9 = v24;
      goto LABEL_37;
    }
  }

  else
  {
    v19[0] = "'mps.space_to_depth_2d' op requires attribute 'block_size'";
    v20 = 259;
    mlir::emitError(a2, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
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

      v4 = __p;
      if (__p)
      {
        v5 = v27;
        v6 = __p;
        if (v27 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v27 = v4;
        operator delete(v6);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v8 = v25;
      v9 = v24;
      if (v25 == v24)
      {
        goto LABEL_37;
      }

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
      goto LABEL_36;
    }
  }

  return v3;
}

uint64_t mlir::mps::DepthToSpace2DOp::verify(uint64_t **this)
{
  v103 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v87 = v1;
  v2 = *(v1 + 72);
  v3 = *(v2[3] + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = v2[7];
  v5 = v2[11];
  v6 = v2[15];
  v7 = *(*v3 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = 0;
  }

  v86 = v3;
  if (v3)
  {
    if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 1;
    }

    v84[0] = *(v1 + 80);
    mlir::IntegerAttr::getValue(v84, &v91);
    if (v92 > 0x40)
    {
      v9 = *v91;
      MEMORY[0x1AC55A040]();
    }

    else
    {
      v9 = v91;
    }

    v83 = v9;
    v84[0] = v4;
    v91 = 0;
    v92 = 0;
    v88 = &v91;
    DefiningOp = mlir::Value::getDefiningOp(v84);
    if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v88, DefiningOp))
    {
      SingleInt = mlir::getSingleIntValue<long long>(v91, v92);
      v22 = v21;
      v23 = SingleInt & 0xFFFFFFFFFFFFFF00;
      v24 = SingleInt;
    }

    else
    {
      v23 = 0;
      v22 = 0;
      v24 = 0;
    }

    v25 = (v24 | v23);
    v81 = v24 | v23;
    v82 = v22;
    v91 = 0;
    v92 = 0;
    v88 = &v91;
    v84[0] = v5;
    v26 = mlir::Value::getDefiningOp(v84);
    if (v26 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v88, v26))
    {
      v27 = mlir::getSingleIntValue<long long>(v91, v92);
      v29 = v28;
      v30 = v27 & 0xFFFFFFFFFFFFFF00;
      v31 = v27;
    }

    else
    {
      v30 = 0;
      v29 = 0;
      v31 = 0;
    }

    v32 = v31 | v30;
    v79 = v31 | v30;
    v80 = v29;
    v91 = 0;
    v92 = 0;
    v88 = &v91;
    v84[0] = v6;
    v33 = mlir::Value::getDefiningOp(v84);
    if (!v33 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v88, v33) & 1) == 0)
    {
      return 1;
    }

    v34 = mlir::getSingleIntValue<long long>(v91, v92);
    v77 = v34;
    v78 = v35;
    v10 = 1;
    if (v22 & 1) != 0 && (v29 & 1) != 0 && (v35)
    {
      v36 = v34;
      Value = mlir::ArrayAttr::getValue(&v86);
      v39 = v38;
      v76 = v38;
      v40 = &v25[v38 & (v23 >> 63)];
      if (v40 >= 0 && v38 > v40)
      {
        v41 = (v38 & (v30 >> 63)) + v32;
        if (v41 < 0 || v38 <= v41)
        {
          v84[0] = "invalid height_axis (";
          v85 = 259;
          mlir::OpState::emitOpError(&v87, v84, &v91);
          v44 = &v91;
        }

        else
        {
          v42 = (v38 & (v36 >> 63)) + v36;
          if (v42 < 0 || v38 <= v42)
          {
            v84[0] = "invalid depth_axis (";
            v85 = 259;
            mlir::OpState::emitOpError(&v87, v84, &v91);
            v44 = &v91;
            v59 = &v77;
            goto LABEL_69;
          }

          if (!v9)
          {
            v84[0] = "invalid block_size (";
            v85 = 259;
            mlir::OpState::emitOpError(&v87, v84, &v91);
            mlir::InFlightDiagnostic::operator<<<long long &>(&v91, &v83);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v64, ")");
            goto LABEL_71;
          }

          if (v42 == v41)
          {
            v84[0] = "Invalid degenerate axes: depth_axis (";
            v85 = 259;
            mlir::OpState::emitOpError(&v87, v84, &v91);
            if ((v78 & 1) == 0)
            {
              goto LABEL_80;
            }

            mlir::InFlightDiagnostic::operator<<<long long &>(&v91, &v77);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v43, ") height_axis (");
            if ((v80 & 1) == 0)
            {
              goto LABEL_80;
            }
          }

          else
          {
            if (v42 == v40)
            {
              v84[0] = "Invalid degenerate axes: depth_axis (";
              v85 = 259;
              mlir::OpState::emitOpError(&v87, v84, &v91);
              if ((v78 & 1) == 0)
              {
                goto LABEL_80;
              }

              mlir::InFlightDiagnostic::operator<<<long long &>(&v91, &v77);
              mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v65, ") width_axis (");
              if ((v82 & 1) == 0)
              {
                goto LABEL_80;
              }

              v59 = &v81;
LABEL_69:
              mlir::InFlightDiagnostic::operator<<<long long &>(v44, v59);
              mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v60, ") for shape of rank ");
              v62 = &v76;
LABEL_70:
              mlir::InFlightDiagnostic::operator<<<long long &>(v61, v62);
LABEL_71:
              v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v63);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v91);
              return v10;
            }

            if (v40 != v41)
            {
LABEL_81:
              v67 = *&Value[8 * v42];
              v88 = v67;
              if (v67 != 0x8000000000000000 && v67 % (v9 * v9))
              {
                v84[0] = "block_size (";
                v85 = 259;
                mlir::OpState::emitOpError(&v87, v84, &v91);
                mlir::InFlightDiagnostic::operator<<<long long &>(&v91, &v83);
                mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v68, ") squared (");
                v75 = v83 * v83;
                mlir::InFlightDiagnostic::operator<<<long long &>(v69, &v75);
                mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v70, ") must be multiple of depth ");
                v62 = &v88;
                goto LABEL_70;
              }

              return 1;
            }

            v84[0] = "Invalid degenerate axes: width_axis (";
            v85 = 259;
            mlir::OpState::emitOpError(&v87, v84, &v91);
            if ((v82 & 1) == 0 || (mlir::InFlightDiagnostic::operator<<<long long &>(&v91, &v81), mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v66, ") height_axis ("), (v80 & 1) == 0))
            {
LABEL_80:
              Value = std::__throw_bad_optional_access[abi:nn200100]();
              goto LABEL_81;
            }
          }
        }

        v59 = &v79;
        goto LABEL_69;
      }

      v84[0] = "invalid width_axis (";
      v85 = 259;
      mlir::OpState::emitOpError(&v87, v84, &v91);
      if (v91)
      {
        LODWORD(v88) = 2;
        v89 = v25;
        v45 = &v88;
        v46 = v93;
        if (v94 >= v95)
        {
          if (v93 <= &v88 && v93 + 24 * v94 > &v88)
          {
            v72 = &v88 - v93;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
            v46 = v93;
            v45 = (v93 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
            v45 = &v88;
            v46 = v93;
          }
        }

        v47 = &v46[24 * v94];
        v48 = *v45;
        *(v47 + 2) = v45[2];
        *v47 = v48;
        v49 = ++v94;
        if (v91)
        {
          LODWORD(v88) = 3;
          v89 = ") for shape of rank ";
          v90 = 20;
          v50 = &v88;
          v51 = v93;
          if (v49 >= v95)
          {
            if (v93 <= &v88 && v93 + 24 * v49 > &v88)
            {
              v73 = &v88 - v93;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v49 + 1, 24);
              v51 = v93;
              v50 = (v93 + v73);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v49 + 1, 24);
              v50 = &v88;
              v51 = v93;
            }
          }

          v52 = &v51[24 * v94];
          v53 = *v50;
          *(v52 + 2) = v50[2];
          *v52 = v53;
          v54 = ++v94;
          if (v91)
          {
            LODWORD(v88) = 2;
            v89 = v39;
            v55 = &v88;
            v56 = v93;
            if (v54 >= v95)
            {
              if (v93 <= &v88 && v93 + 24 * v54 > &v88)
              {
                v74 = &v88 - v93;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v54 + 1, 24);
                v56 = v93;
                v55 = (v93 + v74);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v54 + 1, 24);
                v55 = &v88;
                v56 = v93;
              }
            }

            v57 = &v56[24 * v94];
            v58 = *v55;
            *(v57 + 2) = v55[2];
            *v57 = v58;
            ++v94;
          }
        }
      }

      v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v91);
      if (v91)
      {
        mlir::InFlightDiagnostic::report(&v91);
      }

      if (v102 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v92);
      }
    }
  }

  else
  {
    v84[0] = "Cannot use on a non-tensor input type";
    v85 = 259;
    mlir::OpState::emitOpError(&v87, v84, &v91);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v91);
    if (v91)
    {
      mlir::InFlightDiagnostic::report(&v91);
    }

    if (v102 == 1)
    {
      if (v101 != &v102)
      {
        free(v101);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v100;
        v13 = __p;
        if (v100 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v100 = v11;
        operator delete(v13);
      }

      v14 = v97;
      if (v97)
      {
        v15 = v98;
        v16 = v97;
        if (v98 != v97)
        {
          do
          {
            v18 = *--v15;
            v17 = v18;
            *v15 = 0;
            if (v18)
            {
              MEMORY[0x1AC55A040](v17, 0x1000C8077774924);
            }
          }

          while (v15 != v14);
          v16 = v97;
        }

        v98 = v14;
        operator delete(v16);
      }

      if (v93 != v96)
      {
        free(v93);
      }
    }
  }

  return v10;
}

uint64_t mlir::mps::SpaceToDepth2DOp::verify(uint64_t **this)
{
  v100 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v84 = v1;
  v2 = *(v1 + 72);
  v3 = *(v2[3] + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = v2[7];
  v5 = v2[11];
  v6 = v2[15];
  v7 = *(*v3 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = 0;
  }

  v83 = v3;
  if (!v3)
  {
    v81[0] = "Cannot use on a non-tensor input type";
    v82 = 259;
    mlir::OpState::emitOpError(&v84, v81, &v88);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v88);
    if (v88)
    {
      mlir::InFlightDiagnostic::report(&v88);
    }

    if (v99 == 1)
    {
      if (v98 != &v99)
      {
        free(v98);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v97;
        v13 = __p;
        if (v97 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v97 = v11;
        operator delete(v13);
      }

      v14 = v94;
      if (v94)
      {
        v15 = v95;
        v16 = v94;
        if (v95 != v94)
        {
          do
          {
            v18 = *--v15;
            v17 = v18;
            *v15 = 0;
            if (v18)
            {
              MEMORY[0x1AC55A040](v17, 0x1000C8077774924);
            }
          }

          while (v15 != v14);
          v16 = v94;
        }

        v95 = v14;
        operator delete(v16);
      }

      if (v90 != v93)
      {
        free(v90);
      }
    }

    return v10;
  }

  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  v81[0] = *(v1 + 80);
  mlir::IntegerAttr::getValue(v81, &v88);
  if (v89 > 0x40)
  {
    v9 = *v88;
    MEMORY[0x1AC55A040]();
  }

  else
  {
    v9 = v88;
  }

  v80 = v9;
  v81[0] = v4;
  v88 = 0;
  v89 = 0;
  v85 = &v88;
  DefiningOp = mlir::Value::getDefiningOp(v81);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v85, DefiningOp))
  {
    SingleInt = mlir::getSingleIntValue<long long>(v88, v89);
    v22 = v21;
    v23 = SingleInt & 0xFFFFFFFFFFFFFF00;
    v24 = SingleInt;
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v24 = 0;
  }

  v25 = (v24 | v23);
  v78 = v24 | v23;
  v79 = v22;
  v88 = 0;
  v89 = 0;
  v85 = &v88;
  v81[0] = v5;
  v26 = mlir::Value::getDefiningOp(v81);
  if (!v26)
  {
    v28 = 0;
LABEL_36:
    v29 = 0;
    goto LABEL_37;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v85, v26))
  {
    v28 = 0;
    LOBYTE(v26) = 0;
    goto LABEL_36;
  }

  v27 = mlir::getSingleIntValue<long long>(v88, v89);
  v28 = v27 & 0xFFFFFFFFFFFFFF00;
  v29 = v27;
LABEL_37:
  v76 = v29 | v28;
  v77 = v26;
  v88 = 0;
  v89 = 0;
  v85 = &v88;
  v81[0] = v6;
  v30 = mlir::Value::getDefiningOp(v81);
  if (!v30 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v85, v30) & 1) == 0)
  {
    return 1;
  }

  v74 = mlir::getSingleIntValue<long long>(v88, v89);
  v75 = v31;
  v10 = 1;
  if ((v22 & 1) == 0 || (v77 & 1) == 0 || (v31 & 1) == 0)
  {
    return v10;
  }

  Value = mlir::ArrayAttr::getValue(&v83);
  v73 = v33;
  if ((v77 & 1) == 0 || (v75 & 1) == 0)
  {
    goto LABEL_86;
  }

  v34 = &v25[v33 & (v23 >> 63)];
  if ((v34 & 0x8000000000000000) != 0 || v33 <= v34)
  {
    v81[0] = "invalid width_axis (";
    v82 = 259;
    mlir::OpState::emitOpError(&v84, v81, &v88);
    if (v88)
    {
      LODWORD(v85) = 2;
      v86 = v25;
      v41 = &v85;
      v42 = v90;
      if (v91 >= v92)
      {
        if (v90 <= &v85 && v90 + 24 * v91 > &v85)
        {
          v69 = &v85 - v90;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v42 = v90;
          v41 = (v90 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v41 = &v85;
          v42 = v90;
        }
      }

      v43 = &v42[24 * v91];
      v44 = *v41;
      *(v43 + 2) = v41[2];
      *v43 = v44;
      v45 = ++v91;
      if (v88)
      {
        LODWORD(v85) = 3;
        v86 = ") for shape of rank ";
        v87 = 20;
        v46 = &v85;
        v47 = v90;
        if (v45 >= v92)
        {
          if (v90 <= &v85 && v90 + 24 * v45 > &v85)
          {
            v70 = &v85 - v90;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v45 + 1, 24);
            v47 = v90;
            v46 = (v90 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v45 + 1, 24);
            v46 = &v85;
            v47 = v90;
          }
        }

        v48 = &v47[24 * v91];
        v49 = *v46;
        *(v48 + 2) = v46[2];
        *v48 = v49;
        v50 = ++v91;
        if (v88)
        {
          LODWORD(v85) = 2;
          v86 = v73;
          v51 = &v85;
          v52 = v90;
          if (v50 >= v92)
          {
            if (v90 <= &v85 && v90 + 24 * v50 > &v85)
            {
              v71 = &v85 - v90;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v50 + 1, 24);
              v52 = v90;
              v51 = (v90 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v50 + 1, 24);
              v51 = &v85;
              v52 = v90;
            }
          }

          v53 = &v52[24 * v91];
          v54 = *v51;
          *(v53 + 2) = v51[2];
          *v53 = v54;
          ++v91;
        }
      }
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v88);
    if (v88)
    {
      mlir::InFlightDiagnostic::report(&v88);
    }

    if (v99 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v89);
    }

    return v10;
  }

  v35 = (v33 & (v76 >> 63)) + v76;
  if (v35 < 0 || v33 <= v35)
  {
    v81[0] = "invalid height_axis (";
    v82 = 259;
    mlir::OpState::emitOpError(&v84, v81, &v88);
    v39 = &v88;
    goto LABEL_73;
  }

  v36 = (v33 & (v74 >> 63)) + v74;
  if (v36 < 0 || v33 <= v36)
  {
    v81[0] = "invalid depth_axis (";
    v82 = 259;
    mlir::OpState::emitOpError(&v84, v81, &v88);
    v39 = &v88;
    v55 = &v74;
    goto LABEL_75;
  }

  v37 = v80;
  if (v80 <= 0)
  {
    v81[0] = "invalid block_size (";
    v82 = 259;
    mlir::OpState::emitOpError(&v84, v81, &v88);
    mlir::InFlightDiagnostic::operator<<<long long &>(&v88, &v80);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v60, ")");
    goto LABEL_77;
  }

  if (v36 == v35)
  {
    v81[0] = "Invalid degenerate axes: depth_axis (";
    v82 = 259;
    mlir::OpState::emitOpError(&v84, v81, &v88);
    if ((v75 & 1) == 0)
    {
      goto LABEL_86;
    }

    mlir::InFlightDiagnostic::operator<<<long long &>(&v88, &v74);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v38, ") height_axis (");
    if ((v77 & 1) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_73;
  }

  if (v36 == v34)
  {
    v81[0] = "Invalid degenerate axes: depth_axis (";
    v82 = 259;
    mlir::OpState::emitOpError(&v84, v81, &v88);
    if ((v75 & 1) == 0)
    {
      goto LABEL_86;
    }

    mlir::InFlightDiagnostic::operator<<<long long &>(&v88, &v74);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v61, ") width_axis (");
    if ((v79 & 1) == 0)
    {
      goto LABEL_86;
    }

    v55 = &v78;
LABEL_75:
    mlir::InFlightDiagnostic::operator<<<long long &>(v39, v55);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v56, ") for shape of rank ");
    v58 = &v73;
LABEL_76:
    mlir::InFlightDiagnostic::operator<<<long long &>(v57, v58);
LABEL_77:
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v88);
    return v10;
  }

  if (v34 != v35)
  {
    goto LABEL_87;
  }

  v81[0] = "Invalid degenerate axes: width_axis (";
  v82 = 259;
  mlir::OpState::emitOpError(&v84, v81, &v88);
  if (v79)
  {
    mlir::InFlightDiagnostic::operator<<<long long &>(&v88, &v78);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v62, ") height_axis (");
    if (v77)
    {
LABEL_73:
      v55 = &v76;
      goto LABEL_75;
    }
  }

LABEL_86:
  Value = std::__throw_bad_optional_access[abi:nn200100]();
LABEL_87:
  v63 = *&Value[8 * v34];
  v85 = v63;
  v64 = *&Value[8 * v35];
  v72 = v64;
  v65 = 0x8000000000000000;
  v66 = 0x8000000000000000;
  if (v63 == 0x8000000000000000)
  {
    if (v64 == 0x8000000000000000)
    {
      goto LABEL_89;
    }

LABEL_92:
    v65 = v64 / v37;
    if (v63 == 0x8000000000000000)
    {
      goto LABEL_95;
    }

    goto LABEL_93;
  }

  v66 = v63 / v37;
  if (v64 != 0x8000000000000000)
  {
    goto LABEL_92;
  }

LABEL_89:
  if (v63 == 0x8000000000000000)
  {
    goto LABEL_95;
  }

LABEL_93:
  if (v66 * v37 != v63)
  {
    v81[0] = "block_size (";
    v82 = 259;
    mlir::OpState::emitOpError(&v84, v81, &v88);
    mlir::InFlightDiagnostic::operator<<<long long &>(&v88, &v80);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v67, ") must be multiple of width ");
    v58 = &v85;
    goto LABEL_76;
  }

LABEL_95:
  if (v64 != 0x8000000000000000 && v65 * v37 != v64)
  {
    v81[0] = "block_size (";
    v82 = 259;
    mlir::OpState::emitOpError(&v84, v81, &v88);
    mlir::InFlightDiagnostic::operator<<<long long &>(&v88, &v80);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v68, ") must be multiple of height ");
    v58 = &v72;
    goto LABEL_76;
  }

  return v10;
}

BOOL mlir::mps::BatchToSpaceOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v22[2] = *MEMORY[0x1E69E9840];
  v22[0] = a4;
  v22[1] = a5;
  if (a5 > 3)
  {
    v21 = 0;
    v14 = *(mlir::ValueRange::dereference_iterator(v22, 0) + 8);
    v15 = mlir::ValueRange::dereference_iterator(v22, 1);
    v16 = mlir::ValueRange::dereference_iterator(v22, 2);
    v17 = mlir::ValueRange::dereference_iterator(v22, 3);
    result = 0;
    if (v18)
    {
      v19 = v21;
      v20 = *(a11 + 8);
      if (v20 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v20 + 1, 8);
        LODWORD(v20) = *(a11 + 8);
      }

      *(*a11 + 8 * v20) = v19;
      ++*(a11 + 8);
      return 1;
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
  }

  return result;
}

BOOL mlir::mps::anonymous namespace::inferBatchToSpaceReturnType(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v44[6] = *MEMORY[0x1E69E9840];
  v8 = *(*a3 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  v35 = v10;
  if (v10)
  {
    if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      *a8 = v10;
    }

    else
    {
      v12 = *(*(*(a4 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v12 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v14 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v14 = 0;
      }

      v34 = v14;
      if (v14 && ((v17 = a7, !mlir::TensorType::hasRank(&v34)) || (mlir::ArrayAttr::getValue(&v34), v19 < 2)))
      {
        v43[0] = v44;
        v43[1] = 0x600000000;
        v41[0] = v42;
        v41[1] = 0x600000000;
        v38 = 0;
        v39 = 0;
        v36 = &v38;
        v37 = a5;
        DefiningOp = mlir::Value::getDefiningOp(&v37);
        if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, DefiningOp) & 1) != 0 && (SingleInt = mlir::getSingleIntValue<long long>(v38, v39), (v24 & 1) != 0) && (v25 = SingleInt, (mlir::matchConstantWithIntVector<long long>(a4, v43) & 1) != 0) && (mlir::matchConstantWithIntVector<long long>(a6, v41) & 1) != 0)
        {
          v38 = v40;
          v39 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v35);
          {
            v28 = v38;
            v29 = v39;
            ElementType = mlir::TensorType::getElementType(&v35);
            v31 = mlir::RankedTensorType::get(v28, v29, ElementType, 0);
          }

          else
          {
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v35);
            v31 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
          }

          *a8 = v31;
          if (v38 != v40)
          {
            free(v38);
          }
        }

        else
        {
          v32 = mlir::getElementTypeOrSelf(v10);
          *a8 = mlir::UnrankedTensorType::get(v32);
        }

        if (v41[0] != v42)
        {
          free(v41[0]);
        }

        if (v43[0] != v44)
        {
          free(v43[0]);
        }
      }

      else
      {
        v20 = mlir::getElementTypeOrSelf(v10);
        *a8 = mlir::UnrankedTensorType::get(v20);
      }
    }

    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[41]>(a1, a2, "Cannot use on a non-tensor input type");
  }
}

BOOL mlir::mps::SpaceToBatchOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v21[0] = a4;
  v21[1] = a5;
  if (a5 > 3)
  {
    v20 = 0;
    v14 = *(mlir::ValueRange::dereference_iterator(v21, 0) + 8);
    v15 = mlir::ValueRange::dereference_iterator(v21, 1);
    v16 = mlir::ValueRange::dereference_iterator(v21, 2);
    v17 = mlir::ValueRange::dereference_iterator(v21, 3);
    {
      v18 = v20;
      v19 = *(a11 + 8);
      if (v19 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v19 + 1, 8);
        LODWORD(v19) = *(a11 + 8);
      }

      *(*a11 + 8 * v19) = v18;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::mps::BatchToSpaceOp::verify(mlir::mps::_anonymous_namespace_ **this)
{
  v137[6] = *MEMORY[0x1E69E9840];
  v116 = *this;
  v1 = *(v116 + 9);
  v2 = *(*(v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = 0;
  }

  v114 = 0;
  v115 = v2;
  v112 = 0;
  v113 = 0;
  v111 = 0;
  v5 = *(v1 + 88);
  v120 = 0;
  v121[0] = 0;
  v132 = &v120;
  v135 = v5;
  DefiningOp = mlir::Value::getDefiningOp(&v135);
  if (!DefiningOp)
  {
    return 1;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v132, DefiningOp) & 1) == 0)
  {
    return 1;
  }

  SingleInt = mlir::getSingleIntValue<long long>(v120, v121[0]);
  if ((v8 & 1) == 0)
  {
    return 1;
  }

  v9 = SingleInt;
  v10 = *(*(v116 + 9) + 56);
  v135 = &v113;
  v120 = v10;
  v11 = mlir::Value::getDefiningOp(&v120);
  if (!v11)
  {
    return 1;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v135, v11))
  {
    return 1;
  }

  v12 = *(*(v116 + 9) + 120);
  v132 = &v111;
  v120 = v12;
  v13 = mlir::Value::getDefiningOp(&v120);
  if (!v13 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v132, v13) & 1) == 0)
  {
    return 1;
  }

  v135 = v137;
  v136 = 0x600000000;
  v132 = v134;
  v133 = 0x600000000;
  mlir::getIntValues<long long>(v113, v114, &v135, 1);
  mlir::getIntValues<long long>(v111, v112, &v132, 1);
  if (v136 != v133)
  {
    v110 = 259;
    mlir::OpState::emitOpError(&v116, v109, &v120);
    if (v120)
    {
      mlir::Diagnostic::operator<<(v121, *(*(v116 + 9) + 56));
      if (v120)
      {
        LODWORD(v117) = 3;
        v119 = 43;
        v25 = &v117;
        v26 = v122;
        if (v123 >= v124)
        {
          if (v122 <= &v117 && v122 + 24 * v123 > &v117)
          {
            v98 = &v117 - v122;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v123 + 1, 24);
            v26 = v122;
            v25 = (v122 + v98);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v123 + 1, 24);
            v25 = &v117;
            v26 = v122;
          }
        }

        v27 = &v26[24 * v123];
        v28 = *v25;
        *(v27 + 2) = v25[2];
        *v27 = v28;
        ++v123;
        if (v120)
        {
          mlir::Diagnostic::operator<<(v121, *(*(v116 + 9) + 120));
        }
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v120);
    v29 = result;
    if (v120)
    {
      mlir::InFlightDiagnostic::report(&v120);
      result = v29;
    }

    if (v131 != 1)
    {
      goto LABEL_103;
    }

    if (v130 != &v131)
    {
      free(v130);
      result = v29;
    }

    v30 = __p;
    if (__p)
    {
      v31 = v129;
      v32 = __p;
      if (v129 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v129 = v30;
      operator delete(v32);
      result = v29;
    }

    v33 = v126;
    if (v126)
    {
      v34 = v127;
      v35 = v126;
      if (v127 != v126)
      {
        do
        {
          v37 = *--v34;
          v36 = v37;
          *v34 = 0;
          if (v37)
          {
            MEMORY[0x1AC55A040](v36, 0x1000C8077774924);
          }
        }

        while (v34 != v33);
        v35 = v126;
      }

      v127 = v33;
      operator delete(v35);
      result = v29;
    }

    if (v122 == v125)
    {
LABEL_103:
      v38 = v132;
      if (v132 == v134)
      {
        goto LABEL_105;
      }

      goto LABEL_104;
    }

    free(v122);
    result = v29;
    v38 = v132;
    if (v132 == v134)
    {
      goto LABEL_105;
    }

LABEL_104:
    v93 = result;
    free(v38);
    result = v93;
    goto LABEL_105;
  }

  if (*(*v115 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
LABEL_102:
    result = 1;
    goto LABEL_103;
  }

  mlir::ArrayAttr::getValue(&v115);
  v15 = v14;
  v108 = 0;
  {
    result = 0;
    v38 = v132;
    if (v132 == v134)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  v118 = 0;
  v119 = 0;
  v117 = &v118;
  {
    v39 = 0;
LABEL_61:
    std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v117, v118);
    goto LABEL_62;
  }

  if (v118)
  {
    v17 = &v118;
    v18 = v118;
    do
    {
      if (*(v18 + 4) >= v108)
      {
        v17 = v18;
      }

      v18 = *&v18[8 * (*(v18 + 4) < v108)];
    }

    while (v18);
    if (v17 != &v118 && v108 >= v17[4])
    {
      v110 = 259;
      mlir::OpState::emitOpError(&v116, v109, &v120);
      mlir::InFlightDiagnostic::operator<<<long long &>(&v120, &v108);
      if (*v96)
      {
        v97 = v96;
        mlir::Diagnostic::operator<<((v96 + 1), *(*(v116 + 9) + 56));
        v96 = v97;
      }

      v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v96);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v120);
      goto LABEL_61;
    }
  }

  std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v117, v118);
  Value = mlir::ArrayAttr::getValue(&v115);
  v20 = 1;
  v106 = 0;
  v107 = 1;
  if (v136)
  {
    v21 = 0;
    v22 = 0;
    v20 = 1;
    while (1)
    {
      v24 = v132[v22];
      if (v24 <= 0)
      {
        break;
      }

      if (v24 != 1)
      {
        v106 = ++v21;
      }

      v20 *= v24;
      v107 = v20;
      v22 = (v22 + 1);
      if (v136 == v22)
      {
        if (v21 >= 4 && *(v116 + 2 * ((*(v116 + 11) >> 23) & 1) + 8))
        {
          v110 = 259;
          mlir::OpState::emitOpError(&v116, v109, &v120);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v120, "axes - got:  ");
          v87 = &v106;
          goto LABEL_101;
        }

        goto LABEL_98;
      }
    }

    v40 = (v15 & (v135[v22] >> 63)) + v135[v22];
    v41 = *(Value + 8 * v40);
    v110 = 259;
    mlir::OpState::emitOpError(&v116, v109, &v120);
    if (v120)
    {
      LODWORD(v117) = 5;
      v118 = v22;
      v42 = &v117;
      v43 = v122;
      if (v123 >= v124)
      {
        if (v122 <= &v117 && v122 + 24 * v123 > &v117)
        {
          v99 = &v117 - v122;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v123 + 1, 24);
          v43 = v122;
          v42 = (v122 + v99);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v123 + 1, 24);
          v42 = &v117;
          v43 = v122;
        }
      }

      v44 = &v43[24 * v123];
      v45 = *v42;
      *(v44 + 2) = v42[2];
      *v44 = v45;
      v46 = ++v123;
      if (v120)
      {
        LODWORD(v117) = 3;
        v118 = "] = ";
        v119 = 4;
        v47 = &v117;
        v48 = v122;
        if (v46 >= v124)
        {
          if (v122 <= &v117 && v122 + 24 * v46 > &v117)
          {
            v100 = &v117 - v122;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v46 + 1, 24);
            v48 = v122;
            v47 = (v122 + v100);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v46 + 1, 24);
            v47 = &v117;
            v48 = v122;
          }
        }

        v49 = &v48[24 * v123];
        v50 = *v47;
        *(v49 + 2) = v47[2];
        *v49 = v50;
        v51 = ++v123;
        if (v120)
        {
          LODWORD(v117) = 2;
          v118 = v24;
          v52 = &v117;
          v53 = v122;
          if (v51 >= v124)
          {
            if (v122 <= &v117 && v122 + 24 * v51 > &v117)
            {
              v101 = &v117 - v122;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v51 + 1, 24);
              v53 = v122;
              v52 = (v122 + v101);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v51 + 1, 24);
              v52 = &v117;
              v53 = v122;
            }
          }

          v54 = &v53[24 * v123];
          v55 = *v52;
          *(v54 + 2) = v52[2];
          *v54 = v55;
          v56 = ++v123;
          if (v120)
          {
            LODWORD(v117) = 3;
            v118 = " for input size[";
            v119 = 16;
            v57 = &v117;
            v58 = v122;
            if (v56 >= v124)
            {
              if (v122 <= &v117 && v122 + 24 * v56 > &v117)
              {
                v102 = &v117 - v122;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v56 + 1, 24);
                v58 = v122;
                v57 = (v122 + v102);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v56 + 1, 24);
                v57 = &v117;
                v58 = v122;
              }
            }

            v59 = &v58[24 * v123];
            v60 = *v57;
            *(v59 + 2) = v57[2];
            *v59 = v60;
            v61 = ++v123;
            if (v120)
            {
              LODWORD(v117) = 2;
              v118 = v40;
              v62 = &v117;
              v63 = v122;
              if (v61 >= v124)
              {
                if (v122 <= &v117 && v122 + 24 * v61 > &v117)
                {
                  v103 = &v117 - v122;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v61 + 1, 24);
                  v63 = v122;
                  v62 = (v122 + v103);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v61 + 1, 24);
                  v62 = &v117;
                  v63 = v122;
                }
              }

              v64 = &v63[24 * v123];
              v65 = *v62;
              *(v64 + 2) = v62[2];
              *v64 = v65;
              v66 = ++v123;
              if (v120)
              {
                LODWORD(v117) = 3;
                v118 = "] = ";
                v119 = 4;
                v67 = &v117;
                v68 = v122;
                if (v66 >= v124)
                {
                  if (v122 <= &v117 && v122 + 24 * v66 > &v117)
                  {
                    v104 = &v117 - v122;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v66 + 1, 24);
                    v68 = v122;
                    v67 = (v122 + v104);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v66 + 1, 24);
                    v67 = &v117;
                    v68 = v122;
                  }
                }

                v69 = &v68[24 * v123];
                v70 = *v67;
                *(v69 + 2) = v67[2];
                *v69 = v70;
                v71 = ++v123;
                if (v120)
                {
                  LODWORD(v117) = 2;
                  v118 = v41;
                  v72 = &v117;
                  v73 = v122;
                  if (v71 >= v124)
                  {
                    if (v122 <= &v117 && v122 + 24 * v71 > &v117)
                    {
                      v105 = &v117 - v122;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v71 + 1, 24);
                      v73 = v122;
                      v72 = (v122 + v105);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v71 + 1, 24);
                      v72 = &v117;
                      v73 = v122;
                    }
                  }

                  v74 = &v73[24 * v123];
                  v75 = *v72;
                  *(v74 + 2) = v72[2];
                  *v74 = v75;
                  ++v123;
                }
              }
            }
          }
        }
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v120);
    if (v120)
    {
      v76 = result;
      mlir::InFlightDiagnostic::report(&v120);
      result = v76;
    }

    if ((v131 & 1) == 0)
    {
      goto LABEL_103;
    }

    v77 = result;
    if (v130 != &v131)
    {
      free(v130);
    }

    v78 = __p;
    if (__p)
    {
      v79 = v129;
      v80 = __p;
      if (v129 != __p)
      {
        do
        {
          v79 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v79 - 1);
        }

        while (v79 != v78);
        v80 = __p;
      }

      v129 = v78;
      operator delete(v80);
    }

    v81 = v126;
    if (v126)
    {
      v82 = v127;
      v83 = v126;
      if (v127 != v126)
      {
        do
        {
          v85 = *--v82;
          v84 = v85;
          *v82 = 0;
          if (v85)
          {
            MEMORY[0x1AC55A040](v84, 0x1000C8077774924);
          }
        }

        while (v82 != v81);
        v83 = v126;
      }

      v127 = v81;
      operator delete(v83);
    }

    if (v122 != v125)
    {
      free(v122);
    }

    result = v77;
    v38 = v132;
    if (v132 != v134)
    {
      goto LABEL_104;
    }

    goto LABEL_105;
  }

LABEL_98:
  v88 = *(Value + 8 * v108);
  v117 = v88;
  if (v88 == 0x8000000000000000 || !(v88 % v20))
  {
    goto LABEL_102;
  }

  v110 = 259;
  mlir::OpState::emitOpError(&v116, v109, &v120);
  mlir::InFlightDiagnostic::operator<<<long long &>(&v120, &v107);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v89, " for input[");
  mlir::InFlightDiagnostic::operator<<<long long &>(v90, &v108);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v91, "] = ");
  v87 = &v117;
LABEL_101:
  mlir::InFlightDiagnostic::operator<<<long long &>(v86, v87);
  v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v92);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v120);
LABEL_62:
  result = v39;
  v38 = v132;
  if (v132 != v134)
  {
    goto LABEL_104;
  }

LABEL_105:
  if (v135 != v137)
  {
    v94 = result;
    free(v135);
    return v94;
  }

  return result;
}

BOOL mlir::mps::SpaceToBatchOp::verify(mlir::mps::_anonymous_namespace_ **this)
{
  v125[6] = *MEMORY[0x1E69E9840];
  v104 = *this;
  v1 = *(v104 + 9);
  v2 = *(*(v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = 0;
  }

  v102 = 0;
  v103 = v2;
  v100 = 0;
  v101 = 0;
  v99 = 0;
  v5 = *(v1 + 88);
  v108 = 0;
  v109[0] = 0;
  v120 = &v108;
  v123 = v5;
  DefiningOp = mlir::Value::getDefiningOp(&v123);
  if (!DefiningOp)
  {
    return 1;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v120, DefiningOp) & 1) == 0)
  {
    return 1;
  }

  SingleInt = mlir::getSingleIntValue<long long>(v108, v109[0]);
  if ((v8 & 1) == 0)
  {
    return 1;
  }

  v9 = SingleInt;
  v10 = *(*(v104 + 9) + 56);
  v123 = &v101;
  v108 = v10;
  v11 = mlir::Value::getDefiningOp(&v108);
  if (!v11)
  {
    return 1;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v123, v11))
  {
    return 1;
  }

  v12 = *(*(v104 + 9) + 120);
  v120 = &v99;
  v108 = v12;
  v13 = mlir::Value::getDefiningOp(&v108);
  if (!v13 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v120, v13) & 1) == 0)
  {
    return 1;
  }

  v123 = v125;
  v124 = 0x600000000;
  v120 = v122;
  v121 = 0x600000000;
  mlir::getIntValues<long long>(v101, v102, &v123, 1);
  mlir::getIntValues<long long>(v99, v100, &v120, 1);
  if (v124 != v121)
  {
    v98 = 259;
    mlir::OpState::emitOpError(&v104, v97, &v108);
    if (v108)
    {
      mlir::Diagnostic::operator<<(v109, *(*(v104 + 9) + 56));
      if (v108)
      {
        LODWORD(v105) = 3;
        v107 = 43;
        v23 = &v105;
        v24 = v110;
        if (v111 >= v112)
        {
          if (v110 <= &v105 && v110 + 24 * v111 > &v105)
          {
            v87 = &v105 - v110;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v111 + 1, 24);
            v24 = v110;
            v23 = (v110 + v87);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v111 + 1, 24);
            v23 = &v105;
            v24 = v110;
          }
        }

        v25 = &v24[24 * v111];
        v26 = *v23;
        *(v25 + 2) = v23[2];
        *v25 = v26;
        ++v111;
        if (v108)
        {
          mlir::Diagnostic::operator<<(v109, *(*(v104 + 9) + 120));
        }
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v108);
    v27 = result;
    if (v108)
    {
      mlir::InFlightDiagnostic::report(&v108);
      result = v27;
    }

    if (v119 != 1)
    {
      goto LABEL_98;
    }

    if (v118 != &v119)
    {
      free(v118);
      result = v27;
    }

    v28 = __p;
    if (__p)
    {
      v29 = v117;
      v30 = __p;
      if (v117 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v117 = v28;
      operator delete(v30);
      result = v27;
    }

    v31 = v114;
    if (!v114)
    {
      goto LABEL_92;
    }

    v32 = v115;
    v33 = v114;
    if (v115 == v114)
    {
LABEL_91:
      v115 = v31;
      operator delete(v33);
      result = v27;
LABEL_92:
      if (v110 != v113)
      {
        free(v110);
        result = v27;
      }

      goto LABEL_98;
    }

    do
    {
      v35 = *--v32;
      v34 = v35;
      *v32 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v32 != v31);
LABEL_90:
    v33 = v114;
    goto LABEL_91;
  }

  if (*(*v103 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_97;
  }

  mlir::ArrayAttr::getValue(&v103);
  v15 = v14;
  v96 = 0;
  {
    v106 = 0;
    v107 = 0;
    v105 = &v106;
    {
      if (!v106)
      {
        goto LABEL_24;
      }

      v17 = &v106;
      v18 = v106;
      do
      {
        if (*(v18 + 4) >= v96)
        {
          v17 = v18;
        }

        v18 = *&v18[8 * (*(v18 + 4) < v96)];
      }

      while (v18);
      if (v17 == &v106 || v96 < v17[4])
      {
LABEL_24:
        std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v105, v106);
        Value = mlir::ArrayAttr::getValue(&v103);
        v95 = 0;
        if (v124)
        {
          v20 = 0;
          v21 = 0;
          while (1)
          {
            v36 = v120[v20];
            v37 = (v15 & (v123[v20] >> 63)) + v123[v20];
            v38 = *(Value + 8 * v37);
            if (v36 < 1 || v38 != 0x8000000000000000 && v38 % v36)
            {
              break;
            }

            if (v36 != 1)
            {
              v95 = ++v21;
            }

            v20 = (v20 + 1);
            if (v124 == v20)
            {
              if (v21 >= 4 && *(v104 + 2 * ((*(v104 + 11) >> 23) & 1) + 8))
              {
                v98 = 259;
                mlir::OpState::emitOpError(&v104, v97, &v108);
                mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v108, "axes - got:  ");
                mlir::InFlightDiagnostic::operator<<<long long &>(v80, &v95);
                v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v81);
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v108);
                goto LABEL_58;
              }

              goto LABEL_97;
            }
          }

          v98 = 259;
          mlir::OpState::emitOpError(&v104, v97, &v108);
          if (v108)
          {
            LODWORD(v105) = 5;
            v106 = v20;
            v40 = &v105;
            v41 = v110;
            if (v111 >= v112)
            {
              if (v110 <= &v105 && v110 + 24 * v111 > &v105)
              {
                v88 = &v105 - v110;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v111 + 1, 24);
                v41 = v110;
                v40 = (v110 + v88);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v111 + 1, 24);
                v40 = &v105;
                v41 = v110;
              }
            }

            v42 = &v41[24 * v111];
            v43 = *v40;
            *(v42 + 2) = v40[2];
            *v42 = v43;
            v44 = ++v111;
            if (v108)
            {
              LODWORD(v105) = 3;
              v106 = "] = ";
              v107 = 4;
              v45 = &v105;
              v46 = v110;
              if (v44 >= v112)
              {
                if (v110 <= &v105 && v110 + 24 * v44 > &v105)
                {
                  v89 = &v105 - v110;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v44 + 1, 24);
                  v46 = v110;
                  v45 = (v110 + v89);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v44 + 1, 24);
                  v45 = &v105;
                  v46 = v110;
                }
              }

              v47 = &v46[24 * v111];
              v48 = *v45;
              *(v47 + 2) = v45[2];
              *v47 = v48;
              v49 = ++v111;
              if (v108)
              {
                LODWORD(v105) = 2;
                v106 = v36;
                v50 = &v105;
                v51 = v110;
                if (v49 >= v112)
                {
                  if (v110 <= &v105 && v110 + 24 * v49 > &v105)
                  {
                    v90 = &v105 - v110;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v49 + 1, 24);
                    v51 = v110;
                    v50 = (v110 + v90);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v49 + 1, 24);
                    v50 = &v105;
                    v51 = v110;
                  }
                }

                v52 = &v51[24 * v111];
                v53 = *v50;
                *(v52 + 2) = v50[2];
                *v52 = v53;
                v54 = ++v111;
                if (v108)
                {
                  LODWORD(v105) = 3;
                  v106 = " for input size[";
                  v107 = 16;
                  v55 = &v105;
                  v56 = v110;
                  if (v54 >= v112)
                  {
                    if (v110 <= &v105 && v110 + 24 * v54 > &v105)
                    {
                      v91 = &v105 - v110;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v54 + 1, 24);
                      v56 = v110;
                      v55 = (v110 + v91);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v54 + 1, 24);
                      v55 = &v105;
                      v56 = v110;
                    }
                  }

                  v57 = &v56[24 * v111];
                  v58 = *v55;
                  *(v57 + 2) = v55[2];
                  *v57 = v58;
                  v59 = ++v111;
                  if (v108)
                  {
                    LODWORD(v105) = 2;
                    v106 = v37;
                    v60 = &v105;
                    v61 = v110;
                    if (v59 >= v112)
                    {
                      if (v110 <= &v105 && v110 + 24 * v59 > &v105)
                      {
                        v92 = &v105 - v110;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v59 + 1, 24);
                        v61 = v110;
                        v60 = (v110 + v92);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v59 + 1, 24);
                        v60 = &v105;
                        v61 = v110;
                      }
                    }

                    v62 = &v61[24 * v111];
                    v63 = *v60;
                    *(v62 + 2) = v60[2];
                    *v62 = v63;
                    v64 = ++v111;
                    if (v108)
                    {
                      LODWORD(v105) = 3;
                      v106 = "] = ";
                      v107 = 4;
                      v65 = &v105;
                      v66 = v110;
                      if (v64 >= v112)
                      {
                        if (v110 <= &v105 && v110 + 24 * v64 > &v105)
                        {
                          v93 = &v105 - v110;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v64 + 1, 24);
                          v66 = v110;
                          v65 = (v110 + v93);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v64 + 1, 24);
                          v65 = &v105;
                          v66 = v110;
                        }
                      }

                      v67 = &v66[24 * v111];
                      v68 = *v65;
                      *(v67 + 2) = v65[2];
                      *v67 = v68;
                      v69 = ++v111;
                      if (v108)
                      {
                        LODWORD(v105) = 2;
                        v106 = v38;
                        v70 = &v105;
                        v71 = v110;
                        if (v69 >= v112)
                        {
                          if (v110 <= &v105 && v110 + 24 * v69 > &v105)
                          {
                            v94 = &v105 - v110;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v69 + 1, 24);
                            v71 = v110;
                            v70 = (v110 + v94);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v113, v69 + 1, 24);
                            v70 = &v105;
                            v71 = v110;
                          }
                        }

                        v72 = &v71[24 * v111];
                        v73 = *v70;
                        *(v72 + 2) = v70[2];
                        *v72 = v73;
                        ++v111;
                      }
                    }
                  }
                }
              }
            }
          }

          result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v108);
          v27 = result;
          if (v108)
          {
            mlir::InFlightDiagnostic::report(&v108);
            result = v27;
          }

          if ((v119 & 1) == 0)
          {
            goto LABEL_98;
          }

          if (v118 != &v119)
          {
            free(v118);
            result = v27;
          }

          v74 = __p;
          if (__p)
          {
            v75 = v117;
            v76 = __p;
            if (v117 != __p)
            {
              do
              {
                v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
              }

              while (v75 != v74);
              v76 = __p;
            }

            v117 = v74;
            operator delete(v76);
            result = v27;
          }

          v31 = v114;
          if (!v114)
          {
            goto LABEL_92;
          }

          v77 = v115;
          v33 = v114;
          if (v115 == v114)
          {
            goto LABEL_91;
          }

          do
          {
            v79 = *--v77;
            v78 = v79;
            *v77 = 0;
            if (v79)
            {
              MEMORY[0x1AC55A040](v78, 0x1000C8077774924);
            }
          }

          while (v77 != v31);
          goto LABEL_90;
        }

LABEL_97:
        result = 1;
        goto LABEL_98;
      }

      v98 = 259;
      mlir::OpState::emitOpError(&v104, v97, &v108);
      mlir::InFlightDiagnostic::operator<<<long long &>(&v108, &v96);
      if (*v85)
      {
        v86 = v85;
        mlir::Diagnostic::operator<<((v85 + 1), *(*(v104 + 9) + 56));
        v85 = v86;
      }

      v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v85);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v108);
    }

    else
    {
      v39 = 0;
    }

    std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v105, v106);
LABEL_58:
    result = v39;
    goto LABEL_98;
  }

  result = 0;
LABEL_98:
  if (v120 != v122)
  {
    v82 = result;
    free(v120);
    result = v82;
  }

  if (v123 != v125)
  {
    v83 = result;
    free(v123);
    return v83;
  }

  return result;
}

uint64_t mlir::mps::GetCoordOp::inferReturnTypes(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v67 = *MEMORY[0x1E69E9840];
  v62 = v64;
  v63 = 0x400000000;
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v54 = a6;
  LOBYTE(v55) = 0;
  v56 = 0;
  v57 = v14;
  v58 = a9;
  v59 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v54);
    if (v56 == 1)
    {
      v56 = 0;
    }

    mlir::OperationName::OperationName(&v55, "mps.get_coordinates", 19, Context);
    v56 = 1;
  }

  v60 = a4;
  v61 = a5;
  v65 = a4;
  v66 = 0;
  v16 = mlir::ValueRange::dereference_iterator(&v65, 0);
  v65 = v57;
  if (!v57)
  {
    v29 = mlir::IntegerType::get(a1, 0x20u, 1u);
    goto LABEL_20;
  }

  Value = mlir::AffineMapAttr::getValue(&v65);
  v18 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v18)
  {
    goto LABEL_26;
  }

  v19 = *v18;
  {
    v53 = Value;
    mlir::Builder::getI32VectorAttr();
    Value = v53;
    v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_26:
    v32 = 0;
    goto LABEL_27;
  }

  v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  if (!v22)
  {
    goto LABEL_26;
  }

LABEL_12:
  v23 = v21;
  v24 = v22;
  do
  {
    v25 = v24 >> 1;
    v26 = &v23[2 * (v24 >> 1)];
    v28 = *v26;
    v27 = v26 + 2;
    v24 += ~(v24 >> 1);
    if (v28 < v20)
    {
      v23 = v27;
    }

    else
    {
      v24 = v25;
    }
  }

  while (v24);
  if (v23 == &v21[2 * v22] || *v23 != v20)
  {
    goto LABEL_26;
  }

  v32 = v23[1];
LABEL_27:
  v65 = v18;
  v66 = v32;
  v33 = *(*Value + 136);
  v49 = v33 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  if (v49 || (v29 = Value, Value != mlir::ElementsAttr::isSplat(&v65)))
  {
    v31 = mlir::IntegerType::get(a1, 0x20u, 1u);
    goto LABEL_78;
  }

LABEL_20:
  if (mlir::matchConstantWithIntVector<long long>(v16, &v62))
  {
    v30 = mlir::RankedTensorType::get(v62, v63, v29, 0);
    goto LABEL_79;
  }

  v31 = v29;
LABEL_78:
  v30 = mlir::UnrankedTensorType::get(v31);
LABEL_79:
  v50 = *(a11 + 8);
  if (v50 >= *(a11 + 12))
  {
    v52 = v30;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v50 + 1, 8);
    v30 = v52;
    LODWORD(v50) = *(a11 + 8);
  }

  *(*a11 + 8 * v50) = v30;
  ++*(a11 + 8);
  if (v62 != v64)
  {
    free(v62);
  }

  return 1;
}

uint64_t mlir::mps::GetCoordOp::verify(uint64_t **this)
{
  v111 = *MEMORY[0x1E69E9840];
  v2 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::Builder::getZeroAttr();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v13 = v7[1];
    goto LABEL_15;
  }

LABEL_14:
  v13 = 0;
LABEL_15:
  v95[0] = v2;
  v95[1] = v13;
  v99 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (!v99)
  {
    goto LABEL_96;
  }

  Value = mlir::AffineMapAttr::getValue(&v99);
  v15 = *(*Value + 136);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v94 = 257;
    mlir::OpState::emitOpError(this, v93, &v99);
    if (v99)
    {
      LODWORD(v96) = 3;
      v97 = "Optional return type cannot be a float type.";
      v98 = 44;
      v32 = &v96;
      v33 = v101;
      if (v102 >= v103)
      {
        if (v101 <= &v96 && v101 + 24 * v102 > &v96)
        {
          v88 = &v96 - v101;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
          v33 = v101;
          v32 = (v101 + v88);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
          v32 = &v96;
          v33 = v101;
        }
      }

      v34 = &v33[24 * v102];
      v35 = *v32;
      *(v34 + 2) = v32[2];
      *v34 = v35;
      ++v102;
    }

    v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v99);
    if (v99)
    {
      mlir::InFlightDiagnostic::report(&v99);
    }

    if (v110 == 1)
    {
      if (v109 != &v110)
      {
        free(v109);
      }

      v37 = __p;
      if (__p)
      {
        v38 = v108;
        v39 = __p;
        if (v108 != __p)
        {
          do
          {
            v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
          }

          while (v38 != v37);
          v39 = __p;
        }

        v108 = v37;
        operator delete(v39);
      }

      v40 = v105;
      if (!v105)
      {
        goto LABEL_142;
      }

      v41 = v106;
      v42 = v105;
      if (v106 == v105)
      {
        goto LABEL_141;
      }

      do
      {
        v44 = *--v41;
        v43 = v44;
        *v41 = 0;
        if (v44)
        {
          MEMORY[0x1AC55A040](v43, 0x1000C8077774924);
        }
      }

      while (v41 != v40);
      goto LABEL_140;
    }

    return v36;
  }

  if (Value != mlir::ElementsAttr::isSplat(v95))
  {
    v94 = 257;
    mlir::OpState::emitOpError(this, v93, &v99);
    if (v99)
    {
      LODWORD(v96) = 3;
      v97 = "Mismatch of optional return type and operand element type.";
      v98 = 58;
      v77 = &v96;
      v78 = v101;
      if (v102 >= v103)
      {
        if (v101 <= &v96 && v101 + 24 * v102 > &v96)
        {
          v92 = &v96 - v101;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
          v78 = v101;
          v77 = (v101 + v92);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
          v77 = &v96;
          v78 = v101;
        }
      }

      v79 = &v78[24 * v102];
      v80 = *v77;
      *(v79 + 2) = v77[2];
      *v79 = v80;
      ++v102;
    }

    v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v99);
    if (v99)
    {
      mlir::InFlightDiagnostic::report(&v99);
    }

    if (v110 == 1)
    {
      if (v109 != &v110)
      {
        free(v109);
      }

      v81 = __p;
      if (__p)
      {
        v82 = v108;
        v83 = __p;
        if (v108 != __p)
        {
          do
          {
            v82 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v82 - 1);
          }

          while (v82 != v81);
          v83 = __p;
        }

        v108 = v81;
        operator delete(v83);
      }

      v40 = v105;
      if (!v105)
      {
        goto LABEL_142;
      }

      v84 = v106;
      v42 = v105;
      if (v106 == v105)
      {
        goto LABEL_141;
      }

      do
      {
        v86 = *--v84;
        v85 = v86;
        *v84 = 0;
        if (v86)
        {
          MEMORY[0x1AC55A040](v85, 0x1000C8077774924);
        }
      }

      while (v84 != v40);
      goto LABEL_140;
    }
  }

  else
  {
LABEL_96:
    if (!mlir::ElementsAttr::getShapedType(v95))
    {
      return 1;
    }

    Shape = mlir::ShapedType::getShape(v95);
    if (v46)
    {
      v47 = 8 * v46;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v47 -= 8;
        if (!v47)
        {
          goto LABEL_92;
        }
      }

      return 1;
    }

LABEL_92:
    v48 = mlir::ShapedType::getShape(v95);
    NumElements = mlir::ShapedType::getNumElements(v48, v49);
    v51 = *((*this)[9] + 56);
    v99 = 0;
    v100 = 0;
    v96 = &v99;
    v93[0] = v51;
    DefiningOp = mlir::Value::getDefiningOp(v93);
    if (!DefiningOp)
    {
      return 1;
    }

    if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v96, DefiningOp) & 1) == 0)
    {
      return 1;
    }

    SingleInt = mlir::getSingleIntValue<long long>(v99, v100);
    if ((v54 & 1) == 0)
    {
      return 1;
    }

    v55 = (NumElements & (SingleInt >> 63)) + SingleInt;
    if (v55 >= 0 && NumElements > v55)
    {
      return 1;
    }

    v94 = 257;
    v56 = SingleInt;
    mlir::OpState::emitOpError(this, v93, &v99);
    if (v99)
    {
      LODWORD(v96) = 3;
      v97 = "invalid axis: ";
      v98 = 14;
      v57 = &v96;
      v58 = v101;
      if (v102 >= v103)
      {
        if (v101 <= &v96 && v101 + 24 * v102 > &v96)
        {
          v89 = &v96 - v101;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
          v58 = v101;
          v57 = (v101 + v89);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
          v57 = &v96;
          v58 = v101;
        }
      }

      v59 = &v58[24 * v102];
      v60 = *v57;
      *(v59 + 2) = v57[2];
      *v59 = v60;
      v61 = ++v102;
      if (v99)
      {
        LODWORD(v96) = 2;
        v97 = v56;
        v62 = &v96;
        v63 = v101;
        if (v61 >= v103)
        {
          if (v101 <= &v96 && v101 + 24 * v61 > &v96)
          {
            v90 = &v96 - v101;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v61 + 1, 24);
            v63 = v101;
            v62 = (v101 + v90);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v61 + 1, 24);
            v62 = &v96;
            v63 = v101;
          }
        }

        v64 = &v63[24 * v102];
        v65 = *v62;
        *(v64 + 2) = v62[2];
        *v64 = v65;
        v66 = ++v102;
        if (v99)
        {
          LODWORD(v96) = 3;
          v97 = ".";
          v98 = 1;
          v67 = &v96;
          v68 = v101;
          if (v66 >= v103)
          {
            if (v101 <= &v96 && v101 + 24 * v66 > &v96)
            {
              v91 = &v96 - v101;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v66 + 1, 24);
              v68 = v101;
              v67 = (v101 + v91);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v66 + 1, 24);
              v67 = &v96;
              v68 = v101;
            }
          }

          v69 = &v68[24 * v102];
          v70 = *v67;
          *(v69 + 2) = v67[2];
          *v69 = v70;
          ++v102;
        }
      }
    }

    v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v99);
    if (v99)
    {
      mlir::InFlightDiagnostic::report(&v99);
    }

    if (v110 == 1)
    {
      if (v109 != &v110)
      {
        free(v109);
      }

      v71 = __p;
      if (__p)
      {
        v72 = v108;
        v73 = __p;
        if (v108 != __p)
        {
          do
          {
            v72 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v72 - 1);
          }

          while (v72 != v71);
          v73 = __p;
        }

        v108 = v71;
        operator delete(v73);
      }

      v40 = v105;
      if (!v105)
      {
        goto LABEL_142;
      }

      v74 = v106;
      v42 = v105;
      if (v106 == v105)
      {
LABEL_141:
        v106 = v40;
        operator delete(v42);
LABEL_142:
        if (v101 != v104)
        {
          free(v101);
        }

        return v36;
      }

      do
      {
        v76 = *--v74;
        v75 = v76;
        *v74 = 0;
        if (v76)
        {
          MEMORY[0x1AC55A040](v75, 0x1000C8077774924);
        }
      }

      while (v74 != v40);
LABEL_140:
      v42 = v105;
      goto LABEL_141;
    }
  }

  return v36;
}

BOOL mlir::mps::GetCoordOp::readProperties(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1, "mps", 3);
  if (v5)
  {
    v6 = v4[2];
    if (!v6)
    {
      return 1;
    }

    if (v6 == 1)
    {
      v7 = v4[3];
      if (v7 < 2 || v7 == 2 && !v4[4])
      {
        return 1;
      }
    }
  }

  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypeAttr>(a1, v9);
}

void mlir::mps::GetCoordOp::downgradeToVersion(uint64_t **a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v27[0] = &unk_1F1A17630;
  v27[1] = 0x200000001;
  v28 = 1;
  v5 = a2[2];
  if (v5 && (v5 != 1 || (v6 = a2[3], v6 >= 2) && (v6 != 2 || a2[4])) || (v26 = v4[2 * ((*(v4 + 11) >> 23) & 1) + 8]) == 0 || (v29[0] = mlir::AffineMapAttr::getValue(&v26), mlir::Type::isSignedInteger(v29, 32)))
  {
    v17 = *(v4 + 9);
    v18 = v4 - 2;
    if (!v17)
    {
      v18 = 0;
    }

    *a3 = v18;
    *(a3 + 8) = v17;
    *(a3 + 16) = 1;
  }

  else
  {
    v19[0] = "failed to downgrade: requested target version is {0}, but return type other than si32 is only supported from version {1}";
    v19[1] = 120;
    v19[2] = v23;
    v19[3] = 2;
    v20 = 1;
    v21[0] = &unk_1F1A17760;
    v21[1] = a2;
    v22[0] = &unk_1F1A17790;
    v22[1] = v27;
    v23[0] = v21;
    v23[1] = v22;
    v25 = 263;
    v24 = v19;
    mlir::OpState::emitOpError(a1, &v24, v29);
    *a3 = 0;
    *(a3 + 16) = 0;
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

      v9 = __p;
      if (__p)
      {
        v10 = v35;
        v11 = __p;
        if (v35 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v35 = v9;
        operator delete(v11);
      }

      v12 = v32;
      if (v32)
      {
        v13 = v33;
        v14 = v32;
        if (v33 != v32)
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
          v14 = v32;
        }

        v33 = v12;
        operator delete(v14);
      }

      if (v30 != &v31)
      {
        free(v30);
      }
    }
  }
}

uint64_t mlir::mps::RandomUniformOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v13 = *a7;
    v21 = a6;
    LOBYTE(v22) = 0;
    v23 = 0;
    v24 = v13;
    v25 = a9;
    v26 = a10;
    if (!a6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v21 = a6;
    LOBYTE(v22) = 0;
    v23 = 0;
    v24 = 0;
    v25 = a9;
    v26 = a10;
    if (!a6)
    {
      goto LABEL_8;
    }
  }

  Context = mlir::Attribute::getContext(&v21);
  if (v23 == 1)
  {
    v23 = 0;
  }

  mlir::OperationName::OperationName(&v22, "mps.random_uniform", 18, Context);
  v23 = 1;
LABEL_8:
  v27 = a4;
  v28 = a5;
  v29 = a4;
  v30 = 1;
  v29 = mlir::ValueRange::offset_base(&v29, 1);
  v30 = 0;
  v15 = mlir::ValueRange::dereference_iterator(&v29, 0);
  v29 = v24;
  Value = mlir::AffineMapAttr::getValue(&v29);
  TensorType = mlir::mps::getTensorType(v15, Value);
  v18 = *(a11 + 8);
  if (v18 >= *(a11 + 12))
  {
    v20 = TensorType;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v18 + 1, 8);
    TensorType = v20;
    LODWORD(v18) = *(a11 + 8);
  }

  *(*a11 + 8 * v18) = TensorType;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::getTensorType(uint64_t a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v24 = 0x400000000;
  if (mlir::matchConstantWithIntVector<long long>(a1, &v23))
  {
    result = mlir::RankedTensorType::get(v23, v24, a2, 0);
    goto LABEL_17;
  }

  v5 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*v5 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  v18 = v5;
  if (!v5 || !mlir::TensorType::hasRank(&v18))
  {
    goto LABEL_16;
  }

  Value = mlir::ArrayAttr::getValue(&v18);
  if (v9)
  {
    v10 = 8 * v9;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    result = mlir::UnrankedTensorType::get(a2);
    goto LABEL_17;
  }

LABEL_14:
  v11 = mlir::ArrayAttr::getValue(&v18);
  NumElements = mlir::ShapedType::getNumElements(v11, v12);
  v14 = NumElements;
  __b = v22;
  v21 = 4;
  if (NumElements < 5)
  {
    if (NumElements)
    {
      memset_pattern16(v22, &unk_1A75D94C0, 8 * NumElements);
    }

    v15 = v22;
  }

  else
  {
    v20 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v22, NumElements, 8);
    v15 = __b;
    memset_pattern16(__b, &unk_1A75D94C0, 8 * v14);
  }

  v20 = v14;
  result = mlir::RankedTensorType::get(v15, v14, a2, 0);
  if (__b != v22)
  {
    v17 = result;
    free(__b);
    result = v17;
  }

LABEL_17:
  if (v23 != v25)
  {
    v16 = result;
    free(v23);
    return v16;
  }

  return result;
}

uint64_t mlir::mps::RandomNormalOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v13 = *a7;
    v14 = a7[1];
  }

  else
  {
    v13 = 0uLL;
    v14 = 0uLL;
  }

  v22 = a6;
  LOBYTE(v23) = 0;
  v24 = 0;
  v25 = v13;
  v26 = v14;
  v27 = a9;
  v28 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v22);
    if (v24 == 1)
    {
      v24 = 0;
    }

    mlir::OperationName::OperationName(&v23, "mps.random_normal", 17, Context);
    v24 = 1;
  }

  v29 = a4;
  v30 = a5;
  v31 = a4;
  v32 = 1;
  v31 = mlir::ValueRange::offset_base(&v31, 1);
  v32 = 0;
  v16 = mlir::ValueRange::dereference_iterator(&v31, 0);
  v31 = *(&v25 + 1);
  Value = mlir::AffineMapAttr::getValue(&v31);
  TensorType = mlir::mps::getTensorType(v16, Value);
  v19 = *(a11 + 8);
  if (v19 >= *(a11 + 12))
  {
    v21 = TensorType;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v19 + 1, 8);
    TensorType = v21;
    LODWORD(v19) = *(a11 + 8);
  }

  *(*a11 + 8 * v19) = TensorType;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v13 = *a7;
    v14 = a7[1];
    v15 = a7[2];
  }

  else
  {
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  v23 = a6;
  LOBYTE(v24) = 0;
  v25 = 0;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = a9;
  v30 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v23);
    if (v25 == 1)
    {
      v25 = 0;
    }

    mlir::OperationName::OperationName(&v24, "mps.random_truncated_normal", 27, Context);
    v25 = 1;
  }

  v31 = a4;
  v32 = a5;
  v33 = a4;
  v34 = 1;
  v33 = mlir::ValueRange::offset_base(&v33, 1);
  v34 = 0;
  v17 = mlir::ValueRange::dereference_iterator(&v33, 0);
  v33 = *(&v27 + 1);
  Value = mlir::AffineMapAttr::getValue(&v33);
  TensorType = mlir::mps::getTensorType(v17, Value);
  v20 = *(a11 + 8);
  if (v20 >= *(a11 + 12))
  {
    v22 = TensorType;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v20 + 1, 8);
    TensorType = v22;
    LODWORD(v20) = *(a11 + 8);
  }

  *(*a11 + 8 * v20) = TensorType;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::PadOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v76[4] = *MEMORY[0x1E69E9840];
  v72 = a4;
  v73 = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  v64 = a6;
  LOBYTE(v65) = 0;
  v66 = 0;
  v67 = v16;
  v68 = a9;
  v17 = a5;
  v69 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v64);
    if (v66 == 1)
    {
      v66 = 0;
    }

    mlir::OperationName::OperationName(&v65, "mps.pad", 7, Context);
    v66 = 1;
    v17 = v73;
  }

  v70 = a4;
  v71 = a5;
  if (v17 >= 3)
  {
    v19 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::PadOpAdaptor::verify(&v64, v19))
    {
      v20 = mlir::ValueRange::dereference_iterator(&v72, 0);
      *__p = 0u;
      v63 = 0u;
      *v61 = 0u;
      v56 = 0;
      v57 = 0;
      v58[0] = &v56;
      v74 = mlir::ValueRange::dereference_iterator(&v72, 1);
      DefiningOp = mlir::Value::getDefiningOp(&v74);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v58, DefiningOp) & 1) == 0)
      {
        ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
        v23 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
        goto LABEL_30;
      }

      {
        goto LABEL_48;
      }

      v22 = mlir::ValueRange::dereference_iterator(&v72, 0);
      v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
      v58[0] = v23;
      v58[1] = v24;
      if (!v23)
      {
        if (!mlir::emitOptionalError<char const(&)[41]>(a2, v13, "cannot pad a non-shaped type"))
        {
          goto LABEL_48;
        }

        v23 = 0;
        goto LABEL_30;
      }

      if (*(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        goto LABEL_30;
      }

      v74 = v76;
      v75 = 0x400000000;
      Shape = mlir::ShapedType::getShape(v58);
      v26 = v61[0];
      v27 = v61[1];
      v28 = v61[1] - v61[0];
      v29 = (v61[1] - v61[0]) >> 3;
      v30 = __p[1];
      v59 = v29;
      v60 = v31;
      if (v31 == v29)
      {
        v32 = v75;
        LODWORD(v33) = v75;
        if (v29 != v75)
        {
          if (v29 >= v75)
          {
            if (v29 > HIDWORD(v75))
            {
              v34 = Shape;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v76, (v61[1] - v61[0]) >> 3, 8);
              Shape = v34;
              v32 = v75;
            }

            if (v29 != v32)
            {
              v35 = Shape;
              bzero(&v74[8 * v32], 8 * (v29 - v32));
              Shape = v35;
            }
          }

          v33 = v28 >> 3;
          LODWORD(v75) = v28 >> 3;
        }

        if (v27 != v26)
        {
          v36 = 0;
          v37 = v74;
          do
          {
            v47 = *(Shape + 8 * v36);
            v48 = 0x8000000000000000;
            if (v47 != 0x8000000000000000)
            {
              v48 = v26[v36] + v47 + v30[v36];
            }

            v37[v36++] = v48;
          }

          while (v29 > v36);
        }
      }

      else
      {
        if (!mlir::emitOptionalError<char const(&)[16],unsigned long &,char const(&)[29],unsigned long &,char const(&)[2]>(a2, v13, "paddings rank (", &v59, ") doesn't match input rank (", &v60, ")"))
        {
          v23 = 0;
          v52 = 0;
LABEL_45:
          if (v74 != v76)
          {
            v53 = v23;
            free(v74);
            v23 = v53;
          }

          if (!v52)
          {
LABEL_48:
            result = 0;
            v44 = __p[1];
            if (!__p[1])
            {
LABEL_34:
              if (v61[0])
              {
                v61[1] = v61[0];
                v46 = result;
                operator delete(v61[0]);
                return v46;
              }

              return result;
            }

LABEL_33:
            *&v63 = v44;
            v45 = result;
            operator delete(v44);
            result = v45;
            goto LABEL_34;
          }

LABEL_30:
          v43 = *(a11 + 8);
          if (v43 >= *(a11 + 12))
          {
            v55 = v23;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v43 + 1, 8);
            v23 = v55;
            v43 = *(a11 + 8);
          }

          *(*a11 + 8 * v43) = v23;
          ++*(a11 + 8);
          result = 1;
          v44 = __p[1];
          if (!__p[1])
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        LODWORD(v33) = v75;
      }

      v49 = v74;
      v50 = v33;
      isSplat = mlir::ElementsAttr::isSplat(v58);
      v23 = mlir::RankedTensorType::get(v49, v50, isSplat, 0);
      v52 = 1;
      goto LABEL_45;
    }
  }

  v38 = mlir::Float32Type::get(this, a2);
  v39 = mlir::UnrankedTensorType::get(v38);
  v40 = *(a11 + 8);
  if (v40 >= *(a11 + 12))
  {
    v54 = v39;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v40 + 1, 8);
    v39 = v54;
    LODWORD(v40) = *(a11 + 8);
  }

  *(*a11 + 8 * v40) = v39;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::PadOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'mps.pad' op requires attribute 'paddingMode'";
  v13 = 259;
  mlir::emitError(a2, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
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

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
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

  return v2;
}

BOOL mlir::mps::anonymous namespace::getPaddingValues(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v30[8] = *MEMORY[0x1E69E9840];
  v26 = a4;
  v27 = a5;
  ShapedType = mlir::ElementsAttr::getShapedType(&v26);
  v29 = v8;
  Shape = mlir::ShapedType::getShape(&ShapedType);
  if (v10 == 2 && *(Shape + 8) == 2)
  {
    ShapedType = v30;
    v29 = 0x800000000;
    v11 = Shape;
    mlir::getIntValues<long long>(v26, v27, &ShapedType, 1);
    v12 = *v11;
    v13 = *a3;
    v14 = (a3[1] - *a3) >> 3;
    if (*v11 <= 0)
    {
      if (v12 <= v14)
      {
        if (v12 < v14)
        {
          a3[1] = &v13[v12];
        }
      }

      else
      {
        std::vector<long long>::__append(a3, v12 - v14);
      }

      v24 = a3[3];
      v25 = (a3[4] - v24) >> 3;
      if (v12 <= v25)
      {
        if (v12 < v25)
        {
          a3[4] = v24 + 8 * v12;
        }
      }

      else
      {
        std::vector<long long>::__append((a3 + 3), v12 - v25);
      }

      v18 = ShapedType;
      if (ShapedType == v30)
      {
        return 1;
      }
    }

    else
    {
      if (v12 <= v14)
      {
        if (v12 < v14)
        {
          a3[1] = &v13[v12];
        }
      }

      else
      {
        std::vector<long long>::__append(a3, v12 - v14);
        v13 = *a3;
      }

      v16 = 0;
      v17 = 1;
      v18 = ShapedType;
      do
      {
        *v13++ = v18[v16];
        v19 = v12 > v17++;
        v16 += 2;
      }

      while (v19);
      v20 = a3[3];
      v21 = (a3[4] - v20) >> 3;
      if (v12 <= v21)
      {
        if (v12 < v21)
        {
          a3[4] = &v20[v12];
        }
      }

      else
      {
        std::vector<long long>::__append((a3 + 3), v12 - v21);
        v18 = ShapedType;
        v20 = a3[3];
      }

      v22 = 1;
      v23 = 1;
      do
      {
        *v20++ = v18[v22];
        v19 = v12 > v23++;
        v22 += 2;
      }

      while (v19);
      if (v18 == v30)
      {
        return 1;
      }
    }

    free(v18);
    return 1;
  }

  return mlir::emitOptionalError<char const(&)[41]>(a1, a2, "invalid shape for paddings tensor");
}

BOOL mlir::mps::PadOp::verify(uint64_t **this)
{
  v91 = *MEMORY[0x1E69E9840];
  v2 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::Builder::getZeroAttr();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
LABEL_14:
    v72 = v2;
    v73 = 0;
    if (mlir::ElementsAttr::getShapedType(&v72))
    {
      goto LABEL_15;
    }

    return 1;
  }

  v27 = v7[1];
  v72 = v2;
  v73 = v27;
  if (!mlir::ElementsAttr::getShapedType(&v72))
  {
    return 1;
  }

LABEL_15:
  v70 = 0;
  v71 = 0;
  v13 = *((*this)[9] + 56);
  *&v88 = &v70;
  v77[0] = v13;
  DefiningOp = mlir::Value::getDefiningOp(v77);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v88, DefiningOp))
  {
    return 1;
  }

  v15 = *((*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + 8);
  if (!v15 || v15 == 3)
  {
    return 1;
  }

  Shape = mlir::ShapedType::getShape(&v72);
  mlir::ShapedType::getShape(&v72);
  v19 = v18;
  v89 = 0u;
  v90 = 0u;
  v88 = 0u;
  {
    if (v19 < 1)
    {
LABEL_35:
      result = 1;
    }

    else
    {
      v20 = 0;
      if (v15 == 1)
      {
        v21 = -1;
      }

      else
      {
        v21 = 0;
      }

      while (1)
      {
        v22 = *(v88 + 8 * v20) <= *(*(&v89 + 1) + 8 * v20) ? *(*(&v89 + 1) + 8 * v20) : *(v88 + 8 * v20);
        v23 = *(Shape + 8 * v20);
        v24 = (v23 + v21);
        if (v23 != 0x8000000000000000 && v22 > v24)
        {
          break;
        }

        if (v19 == ++v20)
        {
          goto LABEL_35;
        }
      }

      v68 = "padding values too large at axis ";
      v69 = 259;
      mlir::OpState::emitOpError(this, &v68, v77);
      if (v77[0])
      {
        v74 = 2;
        v75 = v20;
        v30 = &v74;
        v31 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v74 && v78 + 24 * v79 > &v74)
          {
            v63 = &v74 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v31 = v78;
            v30 = (v78 + v63);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v30 = &v74;
            v31 = v78;
          }
        }

        v32 = &v31[24 * v79];
        v33 = *v30;
        *(v32 + 2) = *(v30 + 2);
        *v32 = v33;
        v34 = ++v79;
        if (v77[0])
        {
          v74 = 3;
          v75 = ", max padding is ";
          v76 = 17;
          v35 = &v74;
          v36 = v78;
          if (v34 >= v80)
          {
            if (v78 <= &v74 && v78 + 24 * v34 > &v74)
            {
              v64 = &v74 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v34 + 1, 24);
              v36 = v78;
              v35 = (v78 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v34 + 1, 24);
              v35 = &v74;
              v36 = v78;
            }
          }

          v37 = &v36[24 * v79];
          v38 = *v35;
          *(v37 + 2) = *(v35 + 2);
          *v37 = v38;
          v39 = ++v79;
          if (v77[0])
          {
            v74 = 2;
            v75 = v24;
            v40 = &v74;
            v41 = v78;
            if (v39 >= v80)
            {
              if (v78 <= &v74 && v78 + 24 * v39 > &v74)
              {
                v65 = &v74 - v78;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v39 + 1, 24);
                v41 = v78;
                v40 = (v78 + v65);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v39 + 1, 24);
                v40 = &v74;
                v41 = v78;
              }
            }

            v42 = &v41[24 * v79];
            v43 = *v40;
            *(v42 + 2) = *(v40 + 2);
            *v42 = v43;
            v44 = ++v79;
            if (v77[0])
            {
              v74 = 3;
              v75 = ", got ";
              v76 = 6;
              v45 = &v74;
              v46 = v78;
              if (v44 >= v80)
              {
                if (v78 <= &v74 && v78 + 24 * v44 > &v74)
                {
                  v66 = &v74 - v78;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v44 + 1, 24);
                  v46 = v78;
                  v45 = (v78 + v66);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v44 + 1, 24);
                  v45 = &v74;
                  v46 = v78;
                }
              }

              v47 = &v46[24 * v79];
              v48 = *v45;
              *(v47 + 2) = *(v45 + 2);
              *v47 = v48;
              v49 = ++v79;
              if (v77[0])
              {
                v74 = 2;
                v75 = v22;
                v50 = &v74;
                v51 = v78;
                if (v49 >= v80)
                {
                  if (v78 <= &v74 && v78 + 24 * v49 > &v74)
                  {
                    v67 = &v74 - v78;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v49 + 1, 24);
                    v51 = v78;
                    v50 = (v78 + v67);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v49 + 1, 24);
                    v50 = &v74;
                    v51 = v78;
                  }
                }

                v52 = &v51[24 * v79];
                v53 = *v50;
                *(v52 + 2) = *(v50 + 2);
                *v52 = v53;
                ++v79;
              }
            }
          }
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v77);
      v54 = result;
      if (v77[0])
      {
        mlir::InFlightDiagnostic::report(v77);
        result = v54;
      }

      if (v87)
      {
        if (v86 != &v87)
        {
          free(v86);
          result = v54;
        }

        v55 = __p;
        if (__p)
        {
          v56 = v85;
          v57 = __p;
          if (v85 != __p)
          {
            do
            {
              v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
            }

            while (v56 != v55);
            v57 = __p;
          }

          v85 = v55;
          operator delete(v57);
          result = v54;
        }

        v58 = v82;
        if (v82)
        {
          v59 = v83;
          v60 = v82;
          if (v83 != v82)
          {
            do
            {
              v62 = *--v59;
              v61 = v62;
              *v59 = 0;
              if (v62)
              {
                MEMORY[0x1AC55A040](v61, 0x1000C8077774924);
              }
            }

            while (v59 != v58);
            v60 = v82;
          }

          v83 = v58;
          operator delete(v60);
          result = v54;
        }

        if (v78 != v81)
        {
          free(v78);
          result = v54;
        }
      }
    }
  }

  else
  {
    result = 0;
  }

  if (*(&v89 + 1))
  {
    *&v90 = *(&v89 + 1);
    v28 = result;
    operator delete(*(&v89 + 1));
    result = v28;
  }

  if (v88)
  {
    *(&v88 + 1) = v88;
    v29 = result;
    operator delete(v88);
    return v29;
  }

  return result;
}

BOOL mlir::mps::PadGradientOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v62[4] = *MEMORY[0x1E69E9840];
  v59[0] = a4;
  v59[1] = a5;
  if (a5 == 3)
  {
    v13 = mlir::ValueRange::dereference_iterator(v59, 0);
    v14 = mlir::ValueRange::dereference_iterator(v59, 1);
    *__p = 0u;
    v58 = 0u;
    *v56 = 0u;
    v48 = 0;
    v49 = 0;
    v51[0] = &v48;
    v60 = mlir::ValueRange::dereference_iterator(v59, 2);
    DefiningOp = mlir::Value::getDefiningOp(&v60);
    if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v51, DefiningOp) & 1) == 0)
    {
      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8));
      v23 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      goto LABEL_24;
    }

    {
      goto LABEL_48;
    }

    v16 = *(v13 + 8);
    v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
    v51[0] = v17;
    v51[1] = v18;
    if (!v17 || (v19 = v17, v20 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((v16 & 0xFFFFFFFFFFFFFFF8)), v50[0] = v20, v50[1] = v21, !v20))
    {
      if (!mlir::emitOptionalError<char const(&)[41]>(a2, v11, "cannot calculate the pad gradient a non-shaped type"))
      {
        goto LABEL_48;
      }

      v23 = 0;
      goto LABEL_24;
    }

    v22 = v20;
    v23 = v19;
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_24;
    }

    v23 = v22;
    if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_24;
    }

    v60 = v62;
    v61 = 0x400000000;
    Shape = mlir::ShapedType::getShape(v50);
    v26 = v25;
    mlir::ShapedType::getShape(v51);
    v54 = (v56[1] - v56[0]) >> 3;
    v55 = v26;
    v53 = (v58 - __p[1]) >> 3;
    if (v26 == v54)
    {
      if (v26 == (v58 - __p[1]) >> 3)
      {
        v27 = v61;
        if (v26 != v61)
        {
          if (v26 >= v61)
          {
            if (v26 > HIDWORD(v61))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v26, 8);
              v27 = v61;
            }

            if (v26 != v27)
            {
              bzero(&v60[8 * v27], 8 * (v26 - v27));
            }
          }

          LODWORD(v61) = v26;
          LODWORD(v27) = v26;
        }

        if (!v26)
        {
          goto LABEL_42;
        }

        v28 = 0;
        v29 = v60;
        v30 = 1;
        v31 = v56[0];
        v32 = __p[1];
        while (1)
        {
          while (1)
          {
            v38 = *(Shape + 8 * v28);
            if (v38 != 0x8000000000000000)
            {
              break;
            }

            v29[v28] = 0x8000000000000000;
            v28 = v30++;
            if (v26 <= v28)
            {
              goto LABEL_42;
            }
          }

          v52 = (v32[v28] + v31[v28]);
          v39 = v38 < v52;
          v40 = v38 - v52;
          if (v39)
          {
            break;
          }

          v29[v28] = v40;
          v28 = v30++;
          if (v26 <= v28)
          {
            goto LABEL_42;
          }
        }

        if (!mlir::emitOptionalError<char const(&)[21],long long const&,char const(&)[37],long long const&,char const(&)[2]>(a2, v11, "gradient dimension (", (Shape + 8 * v28), ")is smaller than the total padding (", &v52, ")"))
        {
          goto LABEL_44;
        }

LABEL_41:
        LODWORD(v27) = v61;
LABEL_42:
        v42 = v60;
        v43 = v27;
        isSplat = mlir::ElementsAttr::isSplat(v50);
        v23 = mlir::RankedTensorType::get(v42, v43, isSplat, 0);
        v45 = 1;
        goto LABEL_45;
      }

      v41 = &v53;
    }

    else
    {
      v41 = &v54;
    }

    if (!mlir::emitOptionalError<char const(&)[18],unsigned long &,char const(&)[3],unsigned long &>(a2, v11, "pad rank mismatch", &v55, ", ", v41))
    {
LABEL_44:
      v23 = 0;
      v45 = 0;
LABEL_45:
      if (v60 != v62)
      {
        v46 = v23;
        free(v60);
        v23 = v46;
      }

      if (!v45)
      {
LABEL_48:
        v36 = 0;
        v37 = __p[1];
        if (!__p[1])
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_24:
      v35 = *(a11 + 8);
      if (v35 >= *(a11 + 12))
      {
        v47 = v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v35 + 1, 8);
        v23 = v47;
        v35 = *(a11 + 8);
      }

      *(*a11 + 8 * v35) = v23;
      ++*(a11 + 8);
      v36 = 1;
      v37 = __p[1];
      if (!__p[1])
      {
        goto LABEL_28;
      }

LABEL_27:
      *&v58 = v37;
      operator delete(v37);
LABEL_28:
      if (v56[0])
      {
        v56[1] = v56[0];
        operator delete(v56[0]);
      }

      return v36;
    }

    goto LABEL_41;
  }

  return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
}

BOOL mlir::mps::SampleGridOp::verify(uint64_t **this)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v2 = (*this)[9];
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(*v3 + 136);
  if (v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = 0;
  }

  v6 = (*(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v7 = *(*v6 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = 0;
  }

  if (v3)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v19 = *(v1[11] + 8);
    v20 = v1[3];
    v31[0] = v3;
    v29[0] = v6;
    hasRank = mlir::TensorType::hasRank(v31);
    if (hasRank && (mlir::ArrayAttr::getValue(v31), v22 != 4))
    {
      if (!mlir::emitOptionalError<char const(&)[41]>(v20, 1, "input rank should be 4"))
      {
        return 0;
      }
    }

    else if (v19 >= 2)
    {
      if (!mlir::emitOptionalError<char const(&)[41]>(v20, 1, "unsupported layout"))
      {
        return 0;
      }
    }

    else
    {
      if (!mlir::TensorType::hasRank(v29))
      {
        goto LABEL_39;
      }

      Value = mlir::ArrayAttr::getValue(v29);
      mlir::ArrayAttr::getValue(v29);
      if (v24 == 4)
      {
        v25 = *(Value + 24);
        if (v25 == 0x8000000000000000 || v25 == 2)
        {
LABEL_39:
          if (!mlir::TensorType::hasRank(v31))
          {
            return 1;
          }

          if (!mlir::TensorType::hasRank(v29))
          {
            return 1;
          }

          v26 = mlir::ArrayAttr::getValue(v31);
          v27 = *mlir::ArrayAttr::getValue(v29);
          return v27 == 0x8000000000000000 || *v26 == 0x8000000000000000 || *v26 == v27 || mlir::emitOptionalError<char const(&)[41]>(v20, 1, "batch dimensions of input and coordinates do not match");
        }

        if (!mlir::emitOptionalError<char const(&)[41]>(v20, 1, "coordinates should have 2 channels"))
        {
          return 0;
        }
      }

      else if (!mlir::emitOptionalError<char const(&)[41]>(v20, 1, "coordinates rank should be 4"))
      {
        return 0;
      }
    }

    return 1;
  }

  v29[0] = "cannot sample a non-tensor type";
  v30 = 259;
  mlir::OpState::emitOpError(this, v29, v31);
  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
  if (v31[0])
  {
    mlir::InFlightDiagnostic::report(v31);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v37;
      v13 = __p;
      if (v37 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v37 = v11;
      operator delete(v13);
    }

    v14 = v34;
    if (v34)
    {
      v15 = v35;
      v16 = v34;
      if (v35 != v34)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            MEMORY[0x1AC55A040](v17, 0x1000C8077774924);
          }
        }

        while (v15 != v14);
        v16 = v34;
      }

      v35 = v14;
      operator delete(v16);
    }

    if (v32 != &v33)
    {
      free(v32);
    }
  }

  return v10;
}

BOOL mlir::mps::SampleGridOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v69[4] = *MEMORY[0x1E69E9840];
  v66[0] = a4;
  v66[1] = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
    v19 = *(a7 + 6);
  }

  else
  {
    v19 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v55 = a6;
  LOBYTE(v56) = 0;
  v57 = 0;
  v58 = v16;
  v59 = v17;
  v60 = v18;
  v61 = v19;
  v62 = a9;
  v63 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v55);
    if (v57 == 1)
    {
      v57 = 0;
    }

    mlir::OperationName::OperationName(&v56, "mps.sample_grid", 15, Context);
    v57 = 1;
  }

  v64 = a4;
  v65 = a5;
  if (a5 >= 3 && (v21 = mlir::UnknownLoc::get(this, a2), mlir::mps::SampleGridOpAdaptor::verify(&v55, v21)))
  {
    v22 = mlir::ValueRange::dereference_iterator(v66, 0);
    v23 = *(*(*(v22 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v23 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v25 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(mlir::ValueRange::dereference_iterator(v66, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
    v27 = *(*v26 + 136);
    if (v27 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v27 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v26 = 0;
    }

    if (v25)
    {
      v29 = v26 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "cannot sample a non-tensor type");
    }

    v34 = *(*(&v58 + 1) + 8);
    v53 = v26;
    v54 = v25;
    v35 = qword_1A76002C0[v34];
    v36 = qword_1A76002F8[v34];
    v37 = qword_1A7600330[v34];
    v38 = qword_1A7600368[v34];
    v67 = v69;
    memset_pattern16(v69, &unk_1A75D94C0, 0x20uLL);
    v68 = 0x400000004;
    if (mlir::TensorType::hasRank(&v54))
    {
      mlir::ArrayAttr::getValue(&v54);
      if (v40 >= 4)
      {
        Value = mlir::ArrayAttr::getValue(&v54);
        *(v67 + v35) = *(Value + 8 * v35);
        v42 = mlir::ArrayAttr::getValue(&v54);
        *(v67 + v38) = *(v42 + 8 * v38);
      }
    }

    if (mlir::TensorType::hasRank(&v53))
    {
      mlir::ArrayAttr::getValue(&v53);
      v43 = v67;
      if (v44 >= 4)
      {
        if (*(v67 + v35) == 0x8000000000000000)
        {
          v45 = mlir::ArrayAttr::getValue(&v53);
          *(v67 + v35) = *v45;
        }

        v46 = mlir::ArrayAttr::getValue(&v53);
        *(v67 + v36) = *(v46 + 8);
        v47 = mlir::ArrayAttr::getValue(&v53);
        v43 = v67;
        *(v67 + v37) = *(v47 + 16);
      }
    }

    else
    {
      v43 = v67;
    }

    v48 = v68;
    ElementType = mlir::TensorType::getElementType(&v54);
    v50 = mlir::RankedTensorType::get(v43, v48, ElementType, 0);
    if (v67 != v69)
    {
      free(v67);
    }

    v51 = *(a11 + 8);
    if (v51 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v51 + 1, 8);
      LODWORD(v51) = *(a11 + 8);
    }

    *(*a11 + 8 * v51) = v50;
  }

  else
  {
    v31 = mlir::Float32Type::get(this, a2);
    v32 = mlir::UnrankedTensorType::get(v31);
    v33 = *(a11 + 8);
    if (v33 >= *(a11 + 12))
    {
      v52 = v32;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v33 + 1, 8);
      v32 = v52;
      LODWORD(v33) = *(a11 + 8);
    }

    *(*a11 + 8 * v33) = v32;
  }

  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::SampleGridOpAdaptor::verify(void *a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    if (a1[7])
    {
      if (a1[9])
      {
        return 1;
      }

      v24[0] = "'mps.sample_grid' op requires attribute 'sampling_mode'";
      v25 = 259;
      mlir::emitError(a2, v24, v26);
      v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
      if (v26[0])
      {
        mlir::InFlightDiagnostic::report(v26);
      }

      if (v34 == 1)
      {
        if (v33 != &v34)
        {
          free(v33);
        }

        v17 = __p;
        if (__p)
        {
          v18 = v32;
          v19 = __p;
          if (v32 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v32 = v17;
          operator delete(v19);
        }

        v6 = v29;
        if (!v29)
        {
          goto LABEL_55;
        }

        v20 = v30;
        v8 = v29;
        if (v30 == v29)
        {
LABEL_54:
          v30 = v6;
          operator delete(v8);
LABEL_55:
          if (v27 != &v28)
          {
            free(v27);
          }

          return v2;
        }

        do
        {
          v22 = *--v20;
          v21 = v22;
          *v20 = 0;
          if (v22)
          {
            MEMORY[0x1AC55A040](v21, 0x1000C8077774924);
          }
        }

        while (v20 != v6);
LABEL_53:
        v8 = v29;
        goto LABEL_54;
      }
    }

    else
    {
      v24[0] = "'mps.sample_grid' op requires attribute 'padding_mode'";
      v25 = 259;
      mlir::emitError(a2, v24, v26);
      v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
      if (v26[0])
      {
        mlir::InFlightDiagnostic::report(v26);
      }

      if (v34 == 1)
      {
        if (v33 != &v34)
        {
          free(v33);
        }

        v11 = __p;
        if (__p)
        {
          v12 = v32;
          v13 = __p;
          if (v32 != __p)
          {
            do
            {
              v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v32 = v11;
          operator delete(v13);
        }

        v6 = v29;
        if (!v29)
        {
          goto LABEL_55;
        }

        v14 = v30;
        v8 = v29;
        if (v30 == v29)
        {
          goto LABEL_54;
        }

        do
        {
          v16 = *--v14;
          v15 = v16;
          *v14 = 0;
          if (v16)
          {
            MEMORY[0x1AC55A040](v15, 0x1000C8077774924);
          }
        }

        while (v14 != v6);
        goto LABEL_53;
      }
    }
  }

  else
  {
    v24[0] = "'mps.sample_grid' op requires attribute 'layout'";
    v25 = 259;
    mlir::emitError(a2, v24, v26);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
    if (v26[0])
    {
      mlir::InFlightDiagnostic::report(v26);
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v32;
        v5 = __p;
        if (v32 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v32 = v3;
        operator delete(v5);
      }

      v6 = v29;
      if (!v29)
      {
        goto LABEL_55;
      }

      v7 = v30;
      v8 = v29;
      if (v30 == v29)
      {
        goto LABEL_54;
      }

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
      goto LABEL_53;
    }
  }

  return v2;
}

void mlir::mps::CostVolumeOp::verify(uint64_t **this)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::Builder::getZeroAttr();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v13 = v7[1];
LABEL_15:
    v42 = v2;
    v43 = v13;
    v14 = (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v14)
    {
      v15 = *v14;
      {
        v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        if (!v18)
        {
          goto LABEL_29;
        }
      }

      else
      {
        mlir::Builder::getZeroAttr();
        v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        if (!v18)
        {
          goto LABEL_29;
        }
      }

      v19 = v17;
      v20 = v18;
      do
      {
        v21 = v20 >> 1;
        v22 = &v19[2 * (v20 >> 1)];
        v24 = *v22;
        v23 = v22 + 2;
        v20 += ~(v20 >> 1);
        if (v24 < v16)
        {
          v19 = v23;
        }

        else
        {
          v20 = v21;
        }
      }

      while (v20);
      if (v19 != &v17[2 * v18] && *v19 == v16)
      {
        v25 = v19[1];
LABEL_30:
        v40 = v14;
        v41 = v25;
        v26 = (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v26)
        {
          v27 = *v26;
          {
            v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v29 = *(v27 + 8);
            v30 = *(v27 + 16);
            if (!v30)
            {
              goto LABEL_44;
            }
          }

          else
          {
            mlir::Builder::getZeroAttr();
            v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v29 = *(v27 + 8);
            v30 = *(v27 + 16);
            if (!v30)
            {
              goto LABEL_44;
            }
          }

          v31 = v29;
          v32 = v30;
          do
          {
            v33 = v32 >> 1;
            v34 = &v31[2 * (v32 >> 1)];
            v36 = *v34;
            v35 = v34 + 2;
            v32 += ~(v32 >> 1);
            if (v36 < v28)
            {
              v31 = v35;
            }

            else
            {
              v32 = v33;
            }
          }

          while (v32);
          if (v31 != &v29[2 * v30] && *v31 == v28)
          {
            v37 = v31[1];
LABEL_45:
            v38 = v26;
            v39 = v37;
            operator new();
          }
        }

LABEL_44:
        v37 = 0;
        goto LABEL_45;
      }
    }

LABEL_29:
    v25 = 0;
    goto LABEL_30;
  }

LABEL_14:
  v13 = 0;
  goto LABEL_15;
}

uint64_t *std::vector<long long>::vector[abi:nn200100](uint64_t *result, unint64_t a2, unint64_t *a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t mlir::mps::CostVolumeOp::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v83 = *MEMORY[0x1E69E9840];
  v78 = v80;
  memset_pattern16(v80, &unk_1A75D94C0, 0x20uLL);
  v79 = 0x400000004;
  if (a7)
  {
    v17 = *a7;
    v18 = *(a7 + 1);
    v19 = *(a7 + 3);
    v20 = *(a7 + 5);
  }

  else
  {
    v17 = 0;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
  }

  v67 = a6;
  LOBYTE(v68) = 0;
  v69 = 0;
  v70 = v17;
  v71 = v18;
  v72 = v19;
  v73 = v20;
  v74 = a9;
  v75 = a10;
  if (!a6)
  {
    v22 = v18;
    v76 = a4;
    v77 = a5;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    v24 = 0;
    v27 = 1;
    v26 = 3;
    v25 = 2;
    v28 = v73;
    if (!v73)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  Context = mlir::Attribute::getContext(&v67);
  if (v69 == 1)
  {
    v69 = 0;
  }

  mlir::OperationName::OperationName(&v68, "mps.cost_volume", 15, Context);
  v69 = 1;
  v22 = v71;
  v76 = a4;
  v77 = a5;
  if (!v71)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = *(v22 + 8);
  v24 = qword_1A76002C0[v23];
  v25 = qword_1A76002F8[v23];
  v26 = qword_1A7600330[v23];
  v27 = qword_1A7600368[v23];
  v28 = v73;
  if (!v73)
  {
    goto LABEL_18;
  }

LABEL_12:
  v29 = *(*v28 + 136);
  if (v29 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v28 = 0;
  }

  v81 = v28;
  if (v29 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (Value = mlir::AffineMapAttr::getValue(&v81), !mlir::Type::isUnsignedInteger(&Value)))
  {
LABEL_18:
    UInt = 1;
    v31 = a11;
    v32 = *(&v73 + 1);
    if (!*(&v73 + 1))
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  UInt = mlir::IntegerAttr::getUInt(&v81);
  v31 = a11;
  v32 = *(&v73 + 1);
  if (!*(&v73 + 1))
  {
    goto LABEL_25;
  }

LABEL_19:
  v33 = *(*v32 + 136);
  if (v33 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v32 = 0;
  }

  v81 = v32;
  if (v33 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (Value = mlir::AffineMapAttr::getValue(&v81), !mlir::Type::isUnsignedInteger(&Value)))
  {
LABEL_25:
    *(v78 + v27) = UInt;
    if (a5 != 3)
    {
      goto LABEL_37;
    }

LABEL_26:
    v35 = mlir::UnknownLoc::get(a1, v16);
    if (!mlir::mps::CostVolumeOpAdaptor::verify(&v67, v35))
    {
      goto LABEL_37;
    }

    v81 = v76;
    v82 = 1;
    v81 = mlir::ValueRange::offset_base(&v81, 1);
    v82 = 0;
    Value = *(mlir::ValueRange::dereference_iterator(&v81, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v81 = v76;
    v82 = 0;
    v63 = *(mlir::ValueRange::dereference_iterator(&v81, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::ValueRange::ValueRange(&v81, &Value, 2uLL);
    v81 = v76;
    v82 = 0;
    v37 = mlir::ValueRange::dereference_iterator(&v81, 0);
    Value = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v37 + 8) & 0xFFFFFFFFFFFFFFF8));
    v63 = v38;
    v81 = v76;
    v82 = 1;
    v81 = mlir::ValueRange::offset_base(&v81, 1);
    v82 = 0;
    v39 = mlir::ValueRange::dereference_iterator(&v81, 0);
    v40 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v39 + 8) & 0xFFFFFFFFFFFFFFF8));
    v61[0] = v40;
    v61[1] = v41;
    v81 = v76;
    v82 = 2;
    v81 = mlir::ValueRange::offset_base(&v81, 2);
    v82 = 0;
    v42 = mlir::ValueRange::dereference_iterator(&v81, 0);
    v81 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v42 + 8) & 0xFFFFFFFFFFFFFFF8));
    v82 = v43;
    if (Value && mlir::ElementsAttr::getShapedType(&Value) && *(mlir::ShapedType::getShape(&Value) + 8 * v24) != 0x8000000000000000)
    {
      v53 = v24;
      p_Value = &Value;
    }

    else
    {
      if (!v40 || !mlir::ElementsAttr::getShapedType(v61) || *(mlir::ShapedType::getShape(v61) + 8 * v24) == 0x8000000000000000)
      {
        if (!v81 || !mlir::ElementsAttr::getShapedType(&v81) || *mlir::ShapedType::getShape(&v81) == 0x8000000000000000)
        {
LABEL_55:
          if (Value && mlir::ElementsAttr::getShapedType(&Value) && *(mlir::ShapedType::getShape(&Value) + 8 * v25) != 0x8000000000000000)
          {
            v55 = (mlir::ShapedType::getShape(&Value) + 8 * v25);
          }

          else
          {
            if (!v81 || !mlir::ElementsAttr::getShapedType(&v81) || *(mlir::ShapedType::getShape(&v81) + 8) == 0x8000000000000000)
            {
LABEL_64:
              if (Value && mlir::ElementsAttr::getShapedType(&Value) && *(mlir::ShapedType::getShape(&Value) + 8 * v26) != 0x8000000000000000)
              {
                v56 = (mlir::ShapedType::getShape(&Value) + 8 * v26);
              }

              else
              {
                if (!v81 || !mlir::ElementsAttr::getShapedType(&v81) || *(mlir::ShapedType::getShape(&v81) + 16) == 0x8000000000000000)
                {
LABEL_73:
                  v57 = mlir::RankedTensorType::get(v78, v79, v36, 0);
                  v58 = *(v31 + 8);
                  if (v58 >= *(v31 + 12))
                  {
                    v60 = v57;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(v31, (v31 + 16), v58 + 1, 8);
                    v57 = v60;
                    LODWORD(v58) = *(v31 + 8);
                  }

                  *(*v31 + 8 * v58) = v57;
                  ++*(v31 + 8);
                  v51 = v78;
                  if (v78 != v80)
                  {
                    goto LABEL_49;
                  }

                  return 1;
                }

                v56 = (mlir::ShapedType::getShape(&v81) + 16);
              }

              *(v78 + v26) = *v56;
              goto LABEL_73;
            }

            v55 = (mlir::ShapedType::getShape(&v81) + 8);
          }

          *(v78 + v25) = *v55;
          goto LABEL_64;
        }

        Shape = mlir::ShapedType::getShape(&v81);
LABEL_54:
        *(v78 + v24) = *Shape;
        goto LABEL_55;
      }

      v53 = v24;
      p_Value = v61;
    }

    Shape = (mlir::ShapedType::getShape(p_Value) + 8 * v53);
    goto LABEL_54;
  }

  v34 = mlir::IntegerAttr::getUInt(&v81);
  *(v78 + v27) = v34 * UInt;
  if (a5 == 3)
  {
    goto LABEL_26;
  }

LABEL_37:
  v64 = v66;
  v65 = 0x400000000;
  v45 = v79;
  if (!v79)
  {
    goto LABEL_44;
  }

  if (v79 < 5)
  {
    v47 = v66;
    v46 = v79;
    goto LABEL_42;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v79, 8);
  v46 = v79;
  if (v79)
  {
    v47 = v64;
LABEL_42:
    memcpy(v47, v78, 8 * v46);
  }

  LODWORD(v65) = v45;
LABEL_44:
  v48 = mlir::Float32Type::get(a1, v16);
  v49 = mlir::RankedTensorType::get(v64, v65, v48, 0);
  v50 = *(v31 + 8);
  if (v50 >= *(v31 + 12))
  {
    v59 = v49;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v31, (v31 + 16), v50 + 1, 8);
    v49 = v59;
    LODWORD(v50) = *(v31 + 8);
  }

  *(*v31 + 8 * v50) = v49;
  ++*(v31 + 8);
  if (v64 != v66)
  {
    free(v64);
  }

  v51 = v78;
  if (v78 != v80)
  {
LABEL_49:
    free(v51);
  }

  return 1;
}

uint64_t *mlir::mps::anonymous namespace::getUnsignedIntegerOr(uint64_t a1, uint64_t a2)
{
  if (a1 && ((v3 = *(*a1 + 136), v4 = v3 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, v3 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id) ? (v5 = 0) : (v5 = a1), (v8 = v5, v4) && (Value = mlir::AffineMapAttr::getValue(&v8), mlir::Type::isUnsignedInteger(&Value))))
  {
    return mlir::IntegerAttr::getUInt(&v8);
  }

  else
  {
    return a2;
  }
}

BOOL mlir::mps::CostVolumeOpAdaptor::verify(void *a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v4 = a1[9];
  if (a1[8] && (v27[0] = a1[8], v29[0] = mlir::AffineMapAttr::getValue(v27), !mlir::Type::isUnsignedInteger(v29, 64)))
  {
    v27[0] = "'mps.cost_volume' op attribute 'window_height' failed to satisfy constraint: 64-bit unsigned integer attribute";
    v28 = 259;
    mlir::emitError(a2, v27, v29);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
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

      v6 = __p;
      if (__p)
      {
        v7 = v35;
        v8 = __p;
        if (v35 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v35 = v6;
        operator delete(v8);
      }

      v9 = v32;
      if (!v32)
      {
        goto LABEL_58;
      }

      v10 = v33;
      v11 = v32;
      if (v33 == v32)
      {
        goto LABEL_57;
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
      goto LABEL_56;
    }
  }

  else if (v4 && (v27[0] = v4, v29[0] = mlir::AffineMapAttr::getValue(v27), !mlir::Type::isUnsignedInteger(v29, 64)))
  {
    v27[0] = "'mps.cost_volume' op attribute 'window_width' failed to satisfy constraint: 64-bit unsigned integer attribute";
    v28 = 259;
    mlir::emitError(a2, v27, v29);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
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

      v14 = __p;
      if (__p)
      {
        v15 = v35;
        v16 = __p;
        if (v35 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v35 = v14;
        operator delete(v16);
      }

      v9 = v32;
      if (!v32)
      {
        goto LABEL_58;
      }

      v17 = v33;
      v11 = v32;
      if (v33 == v32)
      {
        goto LABEL_57;
      }

      do
      {
        v19 = *--v17;
        v18 = v19;
        *v17 = 0;
        if (v19)
        {
          MEMORY[0x1AC55A040](v18, 0x1000C8077774924);
        }
      }

      while (v17 != v9);
      goto LABEL_56;
    }
  }

  else
  {
    if (!v3 || *(v3 + 8) < 2u)
    {
      return 1;
    }

    v27[0] = "'mps.cost_volume' op attribute 'data_layout' failed to satisfy constraint: valid TensorDataLayout is NHWC or NCHW";
    v28 = 259;
    mlir::emitError(a2, v27, v29);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
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

      v20 = __p;
      if (__p)
      {
        v21 = v35;
        v22 = __p;
        if (v35 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v35 = v20;
        operator delete(v22);
      }

      v9 = v32;
      if (!v32)
      {
        goto LABEL_58;
      }

      v23 = v33;
      v11 = v32;
      if (v33 == v32)
      {
LABEL_57:
        v33 = v9;
        operator delete(v11);
LABEL_58:
        if (v30 != &v31)
        {
          free(v30);
        }

        return v5;
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

      while (v23 != v9);
LABEL_56:
      v11 = v32;
      goto LABEL_57;
    }
  }

  return v5;
}

void *mlir::mps::anonymous namespace::inferMixedPrecisionResultElementType(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
LABEL_11:
    v16 = mlir::TypeRange::dereference_iterator(a1, 0);
    return mlir::getElementTypeOrSelf(v16);
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  for (i = 0; i != a2; ++i)
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, i);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v8);
    Value = ElementTypeOrSelf;
    if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v17 = ElementTypeOrSelf;
      Value = mlir::AffineMapAttr::getValue(&v17);
      v6 = 1;
    }

    v4 |= mlir::Type::isBF16(&Value);
    v5 |= mlir::Type::isF32(&Value);
  }

  if ((v6 & 1) == 0)
  {
    if (v4 & v5)
    {
      Value = mlir::TypeRange::dereference_iterator(a1, 0);
      Context = mlir::Attribute::getContext(&Value);
      return mlir::Float32Type::get(Context, v14);
    }

    goto LABEL_11;
  }

  Value = mlir::TypeRange::dereference_iterator(a1, 0);
  v10 = mlir::Attribute::getContext(&Value);
  if (v5)
  {
    v12 = mlir::Float32Type::get(v10, v11);
  }

  else
  {
    v12 = mlir::Float16Type::get(v10, v11);
  }

  return mlir::ComplexType::get(v12);
}

BOOL mlir::mps::SampleGridDataGradientOp::verify(uint64_t **this)
{
  v57 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v2 = (*this)[9];
  v3 = *(*(*(v2[3] + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = (*(v2[3] + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(*(v2[7] + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = *(v2[7] + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = 0;
  }

  v9 = v2[11];
  v10 = *(v9 + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(*v10 + 136);
  v13 = v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v5)
  {
    v14 = v8 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14 && v10 != 0 && !v13)
  {
    v46 = &v48;
    v47 = 0x400000000;
    v27 = v1[3];
    v17 = 1;
    if ((mlir::matchConstantWithIntVector<long long>(v9, &v46) & 1) == 0)
    {
      goto LABEL_100;
    }

    if (v47 != 4)
    {
      if (!mlir::emitOptionalError<char const(&)[41]>(v27, 1, "unexpected output shape passed"))
      {
        goto LABEL_99;
      }

      v28 = v46;
      v29 = (*this)[3];
      v43[0] = v5;
      v45 = v8;
      if (v47 != 4)
      {
        if (mlir::emitOptionalError<char const(&)[41]>(v29, 1, "outputShape must have 4 values"))
        {
          goto LABEL_99;
        }

        goto LABEL_96;
      }

LABEL_52:
      if (mlir::TensorType::hasRank(v43))
      {
        Value = mlir::ArrayAttr::getValue(v43);
        if (v31 != 4)
        {
          if (!mlir::emitOptionalError<char const(&)[41]>(v29, 1, "incoming gradient rank should be 4"))
          {
            goto LABEL_96;
          }

          goto LABEL_99;
        }

        if (*v28 != 0x8000000000000000 && *Value != 0x8000000000000000 && *Value != *v28)
        {
          if (mlir::emitOptionalError<char const(&)[41]>(v29, 1, "batch dimensions of the incoming gradient do not match the outputShape"))
          {
            goto LABEL_99;
          }

LABEL_96:
          v17 = 0;
          v32 = v46;
          if (v46 == &v48)
          {
            return v17;
          }

          goto LABEL_101;
        }

        v33 = v28[3];
        if (v33 != 0x8000000000000000)
        {
          v34 = Value[3];
          if (v34 != 0x8000000000000000 && v34 != v33)
          {
            if (mlir::emitOptionalError<char const(&)[41]>(v29, 1, "the number of channels of the incoming gradient does not match the outputShape"))
            {
              goto LABEL_99;
            }

            goto LABEL_96;
          }
        }
      }

      if (!mlir::TensorType::hasRank(&v45))
      {
        goto LABEL_87;
      }

      v35 = mlir::ArrayAttr::getValue(&v45);
      if (v36 == 4)
      {
        v37 = v35[3];
        if (v37 != 0x8000000000000000 && v37 != 2)
        {
          if (mlir::emitOptionalError<char const(&)[41]>(v29, 1, "coordinates should have 2 channels"))
          {
            goto LABEL_99;
          }

          goto LABEL_96;
        }

        if (*v28 != 0x8000000000000000 && *v35 != 0x8000000000000000 && *v35 != *v28)
        {
          if (mlir::emitOptionalError<char const(&)[41]>(v29, 1, "batch dimensions of the coordinates donot match the outputShape"))
          {
            goto LABEL_99;
          }

          goto LABEL_96;
        }

LABEL_87:
        if (!mlir::TensorType::hasRank(v43) || !mlir::TensorType::hasRank(&v45))
        {
          goto LABEL_99;
        }

        v38 = mlir::ArrayAttr::getValue(v43);
        v39 = mlir::ArrayAttr::getValue(&v45);
        if (*v38 == 0x8000000000000000 || *v38 == *v39)
        {
          v40 = v38[1];
          if (v40 == 0x8000000000000000 || v40 == v39[1])
          {
            v41 = v38[2];
            if (v41 == 0x8000000000000000 || v41 == v39[2])
            {
              goto LABEL_99;
            }
          }
        }

        if (mlir::emitOptionalError<char const(&)[41]>(v29, 1, "dimensions of incoming gradient and coordinates do not match"))
        {
          goto LABEL_99;
        }

        goto LABEL_96;
      }

      if (!mlir::emitOptionalError<char const(&)[41]>(v29, 1, "coordinates rank should be 4"))
      {
        goto LABEL_96;
      }

LABEL_99:
      v17 = 1;
LABEL_100:
      v32 = v46;
      if (v46 == &v48)
      {
        return v17;
      }

LABEL_101:
      free(v32);
      return v17;
    }

    v28 = v46;
    if (*v46 == -1)
    {
      *v46 = 0x8000000000000000;
      if (v28[1] != -1)
      {
LABEL_49:
        if (v28[2] != -1)
        {
          goto LABEL_50;
        }

        goto LABEL_69;
      }
    }

    else if (*(v46 + 1) != -1)
    {
      goto LABEL_49;
    }

    v28[1] = 0x8000000000000000;
    if (v28[2] != -1)
    {
LABEL_50:
      if (v28[3] != -1)
      {
LABEL_51:
        v29 = (*this)[3];
        v43[0] = v5;
        v45 = v8;
        goto LABEL_52;
      }

LABEL_70:
      v28[3] = 0x8000000000000000;
      goto LABEL_51;
    }

LABEL_69:
    v28[2] = 0x8000000000000000;
    if (v28[3] != -1)
    {
      goto LABEL_51;
    }

    goto LABEL_70;
  }

  v43[0] = "cannot sample a non-tensor type";
  v44 = 259;
  mlir::OpState::emitOpError(this, v43, &v46);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
  if (v46)
  {
    mlir::InFlightDiagnostic::report(&v46);
  }

  if (v56 == 1)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v54;
      v20 = __p;
      if (v54 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v54 = v18;
      operator delete(v20);
    }

    v21 = v51;
    if (v51)
    {
      v22 = v52;
      v23 = v51;
      if (v52 != v51)
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
        v23 = v51;
      }

      v52 = v21;
      operator delete(v23);
    }

    v32 = v49;
    if (v49 != &v50)
    {
      goto LABEL_101;
    }
  }

  return v17;
}

BOOL mlir::mps::SampleGridDataGradientOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40[4] = *MEMORY[0x1E69E9840];
  v37[0] = a4;
  v37[1] = a5;
  if (a5 == 3)
  {
    v13 = mlir::ValueRange::dereference_iterator(v37, 0);
    v14 = *(*(*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(mlir::ValueRange::dereference_iterator(v37, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(*v17 + 136);
    v20 = v18 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
    v21 = mlir::ValueRange::dereference_iterator(v37, 2);
    if (v16)
    {
      v22 = v17 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22 || v20)
    {
      return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "cannot sample a non-tensor type");
    }

    v36 = v16;
    v38 = v40;
    v39 = 0x400000000;
    if (mlir::matchConstantWithIntVector<long long>(v21, &v38))
    {
      if (v39 == 4)
      {
        v25 = v38;
        if (*v38 == -1)
        {
          *v38 = 0x8000000000000000;
          if (v25[1] != -1)
          {
LABEL_29:
            if (v25[2] != -1)
            {
              goto LABEL_30;
            }

            goto LABEL_40;
          }
        }

        else if (*(v38 + 1) != -1)
        {
          goto LABEL_29;
        }

        v25[1] = 0x8000000000000000;
        if (v25[2] != -1)
        {
LABEL_30:
          if (v25[3] == -1)
          {
            goto LABEL_41;
          }

          goto LABEL_42;
        }

LABEL_40:
        v25[2] = 0x8000000000000000;
        if (v25[3] == -1)
        {
LABEL_41:
          v25[3] = 0x8000000000000000;
        }

LABEL_42:
        if (mlir::TensorType::hasRank(&v36))
        {
          mlir::ArrayAttr::getValue(&v36);
          if (v30 == 4)
          {
            if (*mlir::ArrayAttr::getValue(&v36) != 0x8000000000000000 && *v38 == 0x8000000000000000)
            {
              Value = mlir::ArrayAttr::getValue(&v36);
              *v38 = *Value;
            }

            if (*(mlir::ArrayAttr::getValue(&v36) + 24) != 0x8000000000000000 && *(v38 + 3) == 0x8000000000000000)
            {
              v32 = mlir::ArrayAttr::getValue(&v36);
              *(v38 + 3) = *(v32 + 24);
            }
          }
        }

        v33 = v38;
        v34 = v39;
        ElementType = mlir::TensorType::getElementType(&v36);
        v27 = mlir::RankedTensorType::get(v33, v34, ElementType, 0);
        v28 = v38;
        if (v38 == v40)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      if (mlir::emitOptionalError<char const(&)[41]>(a2, a3, "unexpected output shape passed"))
      {
        goto LABEL_42;
      }
    }

    v26 = mlir::TensorType::getElementType(&v36);
    v27 = mlir::UnrankedTensorType::get(v26);
    v28 = v38;
    if (v38 == v40)
    {
LABEL_35:
      v29 = *(a11 + 8);
      if (v29 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v29 + 1, 8);
        LODWORD(v29) = *(a11 + 8);
      }

      *(*a11 + 8 * v29) = v27;
      ++*(a11 + 8);
      return 1;
    }

LABEL_34:
    free(v28);
    goto LABEL_35;
  }

  return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::LocalConvolutionOp::verify(uint64_t **this)
{
  v57 = *MEMORY[0x1E69E9840];
  v1 = (*this)[9];
  v2 = *(*(v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = 0;
  }

  v43 = v2;
  v5 = *(*(v1 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*v5 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  v42 = v5;
  if (v2)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v44[0] = "cannot convolve a non-tensor type";
    v46 = 259;
    mlir::OpState::emitOpError(this, v44, &v47);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v47);
    if (v47)
    {
      mlir::InFlightDiagnostic::report(&v47);
    }

    if (v56 == 1)
    {
      if (v55 != &v56)
      {
        free(v55);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v54;
        v12 = __p;
        if (v54 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v54 = v10;
        operator delete(v12);
      }

      v13 = v51;
      if (v51)
      {
        v14 = v52;
        v15 = v51;
        if (v52 != v51)
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
          v15 = v51;
        }

        v52 = v13;
        operator delete(v15);
      }

      v33 = v49;
      if (v49 != &v50)
      {
LABEL_49:
        free(v33);
      }
    }
  }

  else
  {
    hasRank = mlir::TensorType::hasRank(&v43);
    if (hasRank && mlir::TensorType::hasRank(&v42))
    {
      v20 = *((*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + 8);
      if (v20 < 6 && ((0x33u >> v20) & 1) != 0)
      {
        v21 = qword_1A76003A0[v20];
        v22 = qword_1A7600290[v20];
        Value = mlir::ArrayAttr::getValue(&v43);
        v25 = v24;
        v26 = mlir::ArrayAttr::getValue(&v42);
        mlir::ArrayAttr::getValue(&v43);
        if (v27 == v21)
        {
          mlir::ArrayAttr::getValue(&v42);
          if (v28 == v21)
          {
            v44[0] = v45;
            v44[1] = 0x400000000;
            v47 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
            v29 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v47);
            mlir::getIntValues<long long>(v29, v30, v44, 1);
            v31 = v26[v22];
            if (v31 == 0x8000000000000000 || *(v44[0] + 1) * *v44[0] == v31)
            {
              if (!v25)
              {
LABEL_69:
                v9 = 1;
LABEL_70:
                v33 = v44[0];
                if (v44[0] == v45)
                {
                  return v9;
                }

                goto LABEL_49;
              }

              while (1)
              {
                if (v22)
                {
                  v34 = *v26;
                  v35 = *Value == 0x8000000000000000 || *Value == v34;
                  if (!v35 && v34 != 0x8000000000000000)
                  {
                    break;
                  }
                }

                --v22;
                ++Value;
                ++v26;
                if (!--v25)
                {
                  goto LABEL_69;
                }
              }

              v39 = "weight shape does not match input shape";
            }

            else
            {
              v39 = "weight channel count doesn't match kernel size";
            }

            v40 = v39;
            v41 = 259;
            mlir::OpState::emitOpError(this, &v40, &v47);
            v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v47);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
            goto LABEL_70;
          }

          v37 = "weight rank does not match data_layout";
        }

        else
        {
          v37 = "input rank does not match data_layout";
        }

        v44[0] = v37;
        v46 = 259;
        mlir::OpState::emitOpError(this, v44, &v47);
        v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v47);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
        return v9;
      }

      v44[0] = "unsupported data layout";
      v46 = 259;
      mlir::OpState::emitOpError(this, v44, &v47);
      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v47);
      if (v47)
      {
        mlir::InFlightDiagnostic::report(&v47);
      }

      if (v56 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v48);
      }
    }

    else
    {
      return 1;
    }
  }

  return v9;
}

uint64_t mlir::mps::anonymous namespace::inferMixedPrecisionResultTypeFromZerothOperand(mlir::Float32Type *a1, mlir::MLIRContext *a2, unint64_t a3, uint64_t a4)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v30[0] = a2;
  v30[1] = a3;
  if (a3 > 0)
  {
    v27 = v29;
    v28 = 0x200000000;
    if (a3 >= 3)
    {
      v6 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, a3, 8);
      a2 = v6;
    }

    v24 = a2;
    v25 = 0;
    v7 = 0;
    do
    {
      v8 = *(mlir::ValueRange::dereference_iterator(&v24, v7) + 8);
      v9 = v28;
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 8);
        v9 = v28;
      }

      *(v27 + v9) = v8 & 0xFFFFFFFFFFFFFFF8;
      v10 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v7 = v25 + 1;
      v25 = v7;
    }

    while (v7 != a3);
    mlir::ValueRange::ValueRange(&v24, v27, v10);
    v12 = *(mlir::ValueRange::dereference_iterator(v30, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v13 = *(*v12 + 136);
    if (v13 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v12 = 0;
    }

    v23 = v12;
    if (v12)
    {
      LOBYTE(v24) = 0;
      v26 = 0;
      v15 = mlir::TensorType::cloneWith(&v23, &v24, v11);
      v16 = *(a4 + 8);
      if (v16 < *(a4 + 12))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = mlir::UnrankedTensorType::get(v11);
      v16 = *(a4 + 8);
      if (v16 < *(a4 + 12))
      {
        goto LABEL_15;
      }
    }

    v21 = v15;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v16 + 1, 8);
    v15 = v21;
    v16 = *(a4 + 8);
LABEL_15:
    *(*a4 + 8 * v16) = v15;
    ++*(a4 + 8);
    if (v27 != v29)
    {
      free(v27);
    }

    return 1;
  }

  v17 = mlir::Float32Type::get(a1, a2);
  v18 = mlir::UnrankedTensorType::get(v17);
  v19 = *(a4 + 8);
  if (v19 >= *(a4 + 12))
  {
    v22 = v18;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v19 + 1, 8);
    v18 = v22;
    LODWORD(v19) = *(a4 + 8);
  }

  *(*a4 + 8 * v19) = v18;
  ++*(a4 + 8);
  return 1;
}

BOOL mlir::mps::LocalConvolutionDataGradientOp::verify(uint64_t **this)
{
  v64 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v2 = (*this)[9];
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(*v3 + 136);
  if (v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = 0;
  }

  v51 = v3;
  v6 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(*v6 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = 0;
  }

  v50 = v6;
  if (v3)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v52[0] = "cannot convolve a non-tensor type";
    v54 = 259;
    mlir::OpState::emitOpError(this, v52, v55);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v63 != 1)
    {
      return v10;
    }

    if (v62 != &v63)
    {
      free(v62);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v61;
      v13 = __p;
      if (v61 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v61 = v11;
      operator delete(v13);
    }

    v14 = v58;
    if (!v58)
    {
      goto LABEL_63;
    }

    v15 = v59;
    v16 = v58;
    if (v59 == v58)
    {
      goto LABEL_62;
    }

    do
    {
      v18 = *--v15;
      v17 = v18;
      *v15 = 0;
      if (v18)
      {
        MEMORY[0x1AC55A040](v17, 0x1000C8077774924);
      }
    }

    while (v15 != v14);
    goto LABEL_61;
  }

  v19 = *(v1[10] + 8);
  if (v19 < 6 && ((0x33u >> v19) & 1) != 0)
  {
    v21 = qword_1A76003A0[v19];
    v22 = qword_1A7600290[v19];
    v52[0] = v53;
    v52[1] = 0x400000000;
    v55[0] = v1[12];
    v23 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(v55);
    v10 = 1;
    mlir::getIntValues<long long>(v23, v24, v52, 1);
    v25 = *v52[0];
    v26 = *(v52[0] + 1);
    if (!mlir::TensorType::hasRank(&v51) || !mlir::TensorType::hasRank(&v50))
    {
LABEL_80:
      v41 = v52[0];
      if (v52[0] == v53)
      {
        return v10;
      }

      goto LABEL_64;
    }

    Value = mlir::ArrayAttr::getValue(&v51);
    v29 = v28;
    v30 = mlir::ArrayAttr::getValue(&v50);
    mlir::ArrayAttr::getValue(&v51);
    if (v31 == v21)
    {
      mlir::ArrayAttr::getValue(&v50);
      if (v32 == v21)
      {
        v33 = v30[v22];
        if (v33 != 0x8000000000000000 && v26 * v25 != v33)
        {
          v47 = this;
          v48 = "weight channel count doesn't match kernel size";
          v49 = 259;
LABEL_79:
          mlir::OpState::emitOpError(v47, &v48, v55);
          v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v55);
          goto LABEL_80;
        }

        if (!v29)
        {
          goto LABEL_80;
        }

        while (1)
        {
          if (v22)
          {
            v43 = *v30;
            v44 = *Value == 0x8000000000000000 || *Value == v43;
            if (!v44 && v43 != 0x8000000000000000)
            {
              break;
            }
          }

          --v22;
          ++Value;
          ++v30;
          if (!--v29)
          {
            goto LABEL_80;
          }
        }

        v46 = "weight shape does not match gradient shape";
      }

      else
      {
        v46 = "weight rank does not match data_layout";
      }
    }

    else
    {
      v46 = "gradient rank does not match data_layout";
    }

    v48 = v46;
    v49 = 259;
    v47 = this;
    goto LABEL_79;
  }

  v52[0] = "unsupported data layout";
  v54 = 259;
  mlir::OpState::emitOpError(this, v52, v55);
  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
  if (v55[0])
  {
    mlir::InFlightDiagnostic::report(v55);
  }

  if (v63 == 1)
  {
    if (v62 != &v63)
    {
      free(v62);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v61;
      v37 = __p;
      if (v61 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v61 = v35;
      operator delete(v37);
    }

    v14 = v58;
    if (!v58)
    {
LABEL_63:
      v41 = v56;
      if (v56 != &v57)
      {
LABEL_64:
        free(v41);
        return v10;
      }

      return v10;
    }

    v38 = v59;
    v16 = v58;
    if (v59 == v58)
    {
LABEL_62:
      v59 = v14;
      operator delete(v16);
      goto LABEL_63;
    }

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

    while (v38 != v14);
LABEL_61:
    v16 = v58;
    goto LABEL_62;
  }

  return v10;
}

uint64_t mlir::mps::LocalConvolutionWeightGradientOp::verify(uint64_t **this)
{
  v52 = *MEMORY[0x1E69E9840];
  v1 = (*this)[9];
  v2 = *(*(v1 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = 0;
  }

  v41 = v2;
  v5 = *(*(v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*v5 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  v40 = v5;
  if (v2)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v38[0] = "cannot convolve a non-tensor type";
    v39 = 259;
    mlir::OpState::emitOpError(this, v38, &v42);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v49;
        v12 = __p;
        if (v49 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v49 = v10;
        operator delete(v12);
      }

      v13 = v46;
      if (v46)
      {
        v14 = v47;
        v15 = v46;
        if (v47 != v46)
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
          v15 = v46;
        }

        v47 = v13;
        operator delete(v15);
      }

      if (v44 != &v45)
      {
        free(v44);
      }
    }
  }

  else
  {
    hasRank = mlir::TensorType::hasRank(&v41);
    if (!hasRank || !mlir::TensorType::hasRank(&v40))
    {
      return 1;
    }

    v20 = *((*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + 8);
    if (v20 < 6 && ((0x33u >> v20) & 1) != 0)
    {
      v21 = qword_1A76003A0[v20];
      mlir::ArrayAttr::getValue(&v41);
      if (v22 == v21)
      {
        mlir::ArrayAttr::getValue(&v40);
        if (v23 == v21)
        {
          Value = mlir::ArrayAttr::getValue(&v41);
          v26 = v25;
          v27 = mlir::ArrayAttr::getValue(&v40);
          if (v26)
          {
            v28 = this;
            v9 = 1;
            while (1)
            {
              v30 = *Value++;
              v29 = v30;
              v32 = *v27++;
              v31 = v32;
              v33 = v29 == 0x8000000000000000 || v29 == v31;
              if (!v33 && v31 != 0x8000000000000000)
              {
                break;
              }

              if (!--v26)
              {
                return v9;
              }
            }

            v38[0] = "gradient shape does not match input shape";
            v39 = 259;
            v37 = v28;
            goto LABEL_62;
          }

          return 1;
        }

        v35 = "gradient rank does not match data_layout";
      }

      else
      {
        v35 = "input rank does not match data_layout";
      }

      v38[0] = v35;
      v39 = 259;
      v37 = this;
LABEL_62:
      mlir::OpState::emitOpError(v37, v38, &v42);
      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
      return v9;
    }

    v38[0] = "unsupported data layout";
    v39 = 259;
    mlir::OpState::emitOpError(this, v38, &v42);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
    }

    if (v51 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v43);
    }
  }

  return v9;
}

BOOL mlir::mps::LocalConvolutionWeightGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v83[2] = *MEMORY[0x1E69E9840];
  v78 = a4;
  v79 = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = *(a7 + 2);
  }

  else
  {
    v17 = 0;
    v16 = 0uLL;
  }

  v69 = a6;
  LOBYTE(v70) = 0;
  v71 = 0;
  v72 = v16;
  v73 = v17;
  v74 = a9;
  v18 = a5;
  v75 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v69);
    if (v71 == 1)
    {
      v71 = 0;
    }

    mlir::OperationName::OperationName(&v70, "mps.local_convolution_weight_gradient", 37, Context);
    v71 = 1;
    v18 = v79;
  }

  v76 = a4;
  v77 = a5;
  if (v18 < 2 || (v20 = mlir::UnknownLoc::get(this, a2), !mlir::mps::LocalConvolutionWeightGradientOpAdaptor::verify(&v69, v20)))
  {
    v31 = mlir::Float32Type::get(this, a2);
    v32 = mlir::UnrankedTensorType::get(v31);
    v33 = *(a11 + 8);
    if (v33 >= *(a11 + 12))
    {
      v59 = v32;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v33 + 1, 8);
      v32 = v59;
      LODWORD(v33) = *(a11 + 8);
    }

    *(*a11 + 8 * v33) = v32;
    ++*(a11 + 8);
    return 1;
  }

  v21 = mlir::ValueRange::dereference_iterator(&v78, 0);
  v22 = *(*(*(v21 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v22 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v24 = *(v21 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v24 = 0;
  }

  v25 = mlir::ValueRange::dereference_iterator(&v78, 1);
  v26 = *(*(*(v25 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v26 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v28 = *(v25 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "cannot convolve a non-tensor type");
  }

  v34 = v72;
  v64 = v73;
  v67[0] = v68;
  v67[1] = 0x400000000;
  v35 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v64);
  mlir::getIntValues<long long>(v35, v36, v67, 1);
  v62 = *(v67[0] + 1);
  v63 = *v67[0];
  v37 = *(v34 + 8);
  v65 = v28;
  v66 = v24;
  v38 = qword_1A76002C0[v37];
  v39 = qword_1A76002F8[v37];
  v40 = qword_1A7600330[v37];
  v61 = qword_1A7600368[v37];
  v83[0] = v24;
  v83[1] = v28;
  mlir::ValueRange::ValueRange(&v80, v83, 2uLL);
  if (v37 >= 6 || ((0x33u >> v37) & 1) == 0)
  {
    if (!mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid tensorDataLayout"))
    {
      goto LABEL_60;
    }

    v53 = 0;
LABEL_47:
    v54 = *(a11 + 8);
    if (v54 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v54 + 1, 8);
      LODWORD(v54) = *(a11 + 8);
    }

    *(*a11 + 8 * v54) = v53;
    ++*(a11 + 8);
    result = 1;
    v55 = v67[0];
    if (v67[0] != v68)
    {
      goto LABEL_61;
    }

    return result;
  }

  v60 = v41;
  v42 = qword_1A76003A0[v37];
  if (!mlir::TensorType::hasRank(&v65) && !mlir::TensorType::hasRank(&v66))
  {
    v53 = mlir::UnrankedTensorType::get(v60);
    goto LABEL_47;
  }

  v80 = v82;
  HIDWORD(v81) = 4;
  memset_pattern16(v82, &unk_1A75D94C0, 8 * v42);
  LODWORD(v81) = v42;
  if (mlir::TensorType::hasRank(&v65))
  {
    Value = mlir::ArrayAttr::getValue(&v65);
    if (v44 != v42)
    {
      v57 = mlir::emitOptionalError<char const(&)[41]>(a2, a3, "input rank doesn't match data layout");
      goto LABEL_56;
    }

    v45 = v80;
    v80[v38] = *(Value + 8 * v38);
    v45[v39] = *(Value + 8 * v39);
    v45[v40] = *(Value + 8 * v40);
  }

  if (!mlir::TensorType::hasRank(&v66))
  {
    v50 = v80;
    goto LABEL_52;
  }

  v46 = mlir::ArrayAttr::getValue(&v66);
  if (v47 == v42)
  {
    v48 = v46;
    v49 = *(v46 + 8 * v38);
    v50 = v80;
    if (v49 == 0x8000000000000000)
    {
      v51 = *(v48 + 8 * v39);
      if (v51 == 0x8000000000000000)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v80[v38] = v49;
      v51 = *(v48 + 8 * v39);
      if (v51 == 0x8000000000000000)
      {
LABEL_43:
        v52 = *(v48 + 8 * v40);
        if (v52 != 0x8000000000000000)
        {
          goto LABEL_64;
        }

        goto LABEL_52;
      }
    }

    *(v50 + v39) = v51;
    v52 = *(v48 + 8 * v40);
    if (v52 != 0x8000000000000000)
    {
LABEL_64:
      *(v50 + v40) = v52;
    }

LABEL_52:
    *(v50 + v61) = v62 * v63;
    v53 = mlir::RankedTensorType::get(v50, v81, v60, 0);
    v56 = 1;
    goto LABEL_57;
  }

  v57 = mlir::emitOptionalError<char const(&)[41]>(a2, a3, "gradient rank doesn't match data layout");
LABEL_56:
  v56 = v57;
  v53 = 0;
LABEL_57:
  if (v80 != v82)
  {
    free(v80);
  }

  if (v56)
  {
    goto LABEL_47;
  }

LABEL_60:
  result = 0;
  v55 = v67[0];
  if (v67[0] != v68)
  {
LABEL_61:
    v58 = result;
    free(v55);
    return v58;
  }

  return result;
}

BOOL mlir::mps::LocalConvolutionWeightGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v84 = *MEMORY[0x1E69E9840];
  if (!a1[3])
  {
    v69 = "'mps.local_convolution_weight_gradient' op requires attribute 'data_layout'";
    v71 = 259;
    mlir::emitError(a2, &v69, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v81;
        v17 = __p;
        if (v81 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v81 = v15;
        operator delete(v17);
      }

      v18 = v78;
      if (!v78)
      {
        goto LABEL_106;
      }

      v19 = v79;
      v20 = v78;
      if (v79 == v78)
      {
        goto LABEL_105;
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
      goto LABEL_104;
    }

    return v14;
  }

  v68 = a1[4];
  if (!v68)
  {
    v69 = "'mps.local_convolution_weight_gradient' op requires attribute 'dilation_rates'";
    v71 = 259;
    mlir::emitError(a2, &v69, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v81;
        v25 = __p;
        if (v81 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v81 = v23;
        operator delete(v25);
      }

      v18 = v78;
      if (!v78)
      {
        goto LABEL_106;
      }

      v26 = v79;
      v20 = v78;
      if (v79 == v78)
      {
        goto LABEL_105;
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
      goto LABEL_104;
    }

    return v14;
  }

  v3 = a1[5];
  if (v3)
  {
    v4 = *v3;
    {
      v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        goto LABEL_64;
      }
    }

    else
    {
      mlir::mps::ConstantOp::getAsAttribute();
      v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        goto LABEL_64;
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
      v36 = v8[1];
      v69 = v3;
      v70 = v36;
      Type = mlir::ElementsAttr::getType(&v69);
      if (!Type)
      {
        goto LABEL_79;
      }

      goto LABEL_67;
    }

LABEL_64:
    v69 = v3;
    v70 = 0;
    Type = mlir::ElementsAttr::getType(&v69);
    if (!Type)
    {
      goto LABEL_79;
    }

LABEL_67:
    v37 = *Type;
    {
      v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      if (!v40)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v47 = Type;
      mlir::Builder::getI32VectorAttr();
      Type = v47;
      v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      if (!v40)
      {
        goto LABEL_79;
      }
    }

    v41 = v39;
    v42 = v40;
    do
    {
      v43 = v42 >> 1;
      v44 = &v41[2 * (v42 >> 1)];
      v46 = *v44;
      v45 = v44 + 2;
      v42 += ~(v42 >> 1);
      if (v46 < v38)
      {
        v41 = v45;
      }

      else
      {
        v42 = v43;
      }
    }

    while (v42);
    if (v41 != &v39[2 * v40] && *v41 == v38)
    {
      v48 = v41[1];
      goto LABEL_80;
    }

LABEL_79:
    v48 = 0;
LABEL_80:
    v74 = Type;
    v75 = v48;
    Shape = mlir::ShapedType::getShape(&v74);
    v73 = 2;
    if (v50 == 1 && *Shape == v73)
    {
      v65 = v3;
      Value = mlir::ArrayAttr::getValue(&v65);
      v67 = v51;
      isSplat = mlir::ElementsAttr::isSplat(&Value);
      if (mlir::Type::isUnsignedInteger(&isSplat, 64))
      {
        if (!v68)
        {
          return 1;
        }

        v69 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v68);
        v70 = v52;
        v73 = mlir::ElementsAttr::getType(&v69);
        v74 = mlir::BaseMemRefType::operator mlir::ShapedType(&v73);
        v75 = v53;
        v54 = mlir::ShapedType::getShape(&v74);
        isSplat = 2;
        if (v55 == 1 && *v54 == isSplat)
        {
          v64 = v68;
          Value = mlir::ArrayAttr::getValue(&v64);
          v67 = v56;
          v65 = mlir::ElementsAttr::isSplat(&Value);
          if (mlir::Type::isUnsignedInteger(&v65, 64))
          {
            return 1;
          }
        }

        v69 = "'mps.local_convolution_weight_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {2}";
        v71 = 259;
        mlir::emitError(a2, &v69, &v74);
        v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
        if (v74)
        {
          mlir::InFlightDiagnostic::report(&v74);
        }

        if (v83 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v75);
        }

        return v14;
      }
    }

    v69 = "'mps.local_convolution_weight_gradient' op attribute 'kernel_sizes' failed to satisfy constraint: ui64 elements attribute of shape {2}";
    v71 = 259;
    mlir::emitError(a2, &v69, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v57 = __p;
      if (__p)
      {
        v58 = v81;
        v59 = __p;
        if (v81 != __p)
        {
          do
          {
            v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
          }

          while (v58 != v57);
          v59 = __p;
        }

        v81 = v57;
        operator delete(v59);
      }

      v18 = v78;
      if (!v78)
      {
        goto LABEL_106;
      }

      v60 = v79;
      v20 = v78;
      if (v79 == v78)
      {
LABEL_105:
        v79 = v18;
        operator delete(v20);
LABEL_106:
        if (v76 != &v77)
        {
          free(v76);
        }

        return v14;
      }

      do
      {
        v62 = *--v60;
        v61 = v62;
        *v60 = 0;
        if (v62)
        {
          MEMORY[0x1AC55A040](v61, 0x1000C8077774924);
        }
      }

      while (v60 != v18);
LABEL_104:
      v20 = v78;
      goto LABEL_105;
    }

    return v14;
  }

  v69 = "'mps.local_convolution_weight_gradient' op requires attribute 'kernel_sizes'";
  v71 = 259;
  mlir::emitError(a2, &v69, &v74);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
  if (v74)
  {
    mlir::InFlightDiagnostic::report(&v74);
  }

  if (v83 == 1)
  {
    if (v82 != &v83)
    {
      free(v82);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v81;
      v31 = __p;
      if (v81 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v81 = v29;
      operator delete(v31);
    }

    v18 = v78;
    if (!v78)
    {
      goto LABEL_106;
    }

    v32 = v79;
    v20 = v78;
    if (v79 == v78)
    {
      goto LABEL_105;
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

    while (v32 != v18);
    goto LABEL_104;
  }

  return v14;
}

BOOL mlir::mps::anonymous namespace::verifyTileOp(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v160 = *MEMORY[0x1E69E9840];
  v6 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = *v6;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v126 = v7;
    v128 = a4;
    mlir::Builder::getZeroAttr();
    a4 = v128;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v126 + 8);
    v10 = *(v126 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
LABEL_14:
    v139 = v6;
    v140 = 0;
    v17 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  v28 = v11[1];
  v139 = v6;
  v140 = v28;
  v17 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v17)
  {
    goto LABEL_29;
  }

LABEL_15:
  v18 = *v17;
  {
    v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    if (!v21)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v127 = v18;
    v129 = a4;
    mlir::Builder::getZeroAttr();
    a4 = v129;
    v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v20 = *(v127 + 8);
    v21 = *(v127 + 16);
    if (!v21)
    {
      goto LABEL_29;
    }
  }

  v22 = v20;
  v23 = v21;
  do
  {
    v24 = v23 >> 1;
    v25 = &v22[2 * (v23 >> 1)];
    v27 = *v25;
    v26 = v25 + 2;
    v23 += ~(v23 >> 1);
    if (v27 < v19)
    {
      v22 = v26;
    }

    else
    {
      v23 = v24;
    }
  }

  while (v23);
  if (v22 == &v20[2 * v21] || *v22 != v19)
  {
LABEL_29:
    v137 = v17;
    v138 = 0;
    if (a4)
    {
      goto LABEL_30;
    }

LABEL_41:
    v135 = 0;
    v136 = 0;
    v30 = 1;
    if (!mlir::ElementsAttr::getShapedType(&v137))
    {
      goto LABEL_79;
    }

    goto LABEL_47;
  }

  v41 = v22[1];
  v137 = v17;
  v138 = v41;
  if (!a4)
  {
    goto LABEL_41;
  }

LABEL_30:
  v29 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = v29 == 0;
  if (!v29)
  {
    goto LABEL_46;
  }

  v31 = *v29;
  {
    v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    if (!v34)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v130 = v29;
    v42 = v31;
    mlir::Builder::getZeroAttr();
    v29 = v130;
    v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v33 = *(v42 + 8);
    v34 = *(v42 + 16);
    if (!v34)
    {
      goto LABEL_46;
    }
  }

  v35 = v33;
  v36 = v34;
  do
  {
    v37 = v36 >> 1;
    v38 = &v35[2 * (v36 >> 1)];
    v40 = *v38;
    v39 = v38 + 2;
    v36 += ~(v36 >> 1);
    if (v40 < v32)
    {
      v35 = v39;
    }

    else
    {
      v36 = v37;
    }
  }

  while (v36);
  if (v35 != &v33[2 * v34] && *v35 == v32)
  {
    v72 = v35[1];
    v135 = v29;
    v136 = v72;
    if (!mlir::ElementsAttr::getShapedType(&v137))
    {
      goto LABEL_79;
    }

    goto LABEL_47;
  }

LABEL_46:
  v135 = v29;
  v136 = 0;
  if (!mlir::ElementsAttr::getShapedType(&v137))
  {
    goto LABEL_79;
  }

LABEL_47:
  Shape = mlir::ShapedType::getShape(&v137);
  if (v44 == 1)
  {
    v45 = Shape;
    if (*Shape != 0x8000000000000000)
    {
      if (mlir::ElementsAttr::getShapedType(&v139))
      {
        mlir::ShapedType::getShape(&v139);
        if (v46 != *v45)
        {
          v147 = 259;
          mlir::Operation::emitOpError(a1, &v144, &v148);
          mlir::ShapedType::getShape(&v139);
          if (v148)
          {
            LODWORD(v131) = 2;
            v132 = v47;
            v48 = &v131;
            v49 = v150;
            if (v151 >= v152)
            {
              if (v150 <= &v131 && v150 + 24 * v151 > &v131)
              {
                v122 = &v131 - v150;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                v49 = v150;
                v48 = (v150 + v122);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                v48 = &v131;
                v49 = v150;
              }
            }

            v50 = &v49[24 * v151];
            v51 = *v48;
            *(v50 + 2) = v48[2];
            *v50 = v51;
            v52 = ++v151;
            if (v148)
            {
              LODWORD(v131) = 3;
              v133 = 35;
              v53 = &v131;
              v54 = v150;
              if (v52 >= v152)
              {
                if (v150 <= &v131 && v150 + 24 * v52 > &v131)
                {
                  v124 = &v131 - v150;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v52 + 1, 24);
                  v54 = v150;
                  v53 = (v150 + v124);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v52 + 1, 24);
                  v53 = &v131;
                  v54 = v150;
                }
              }

              v55 = &v54[24 * v151];
              v56 = *v53;
              *(v55 + 2) = v53[2];
              *v55 = v56;
              v57 = ++v151;
              if (v148)
              {
                v58 = *v45;
                LODWORD(v131) = 2;
                v132 = v58;
                v59 = &v131;
                v60 = v150;
                if (v57 >= v152)
                {
                  if (v150 <= &v131 && v150 + 24 * v57 > &v131)
                  {
                    v125 = &v131 - v150;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v57 + 1, 24);
                    v60 = v150;
                    v59 = (v150 + v125);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v57 + 1, 24);
                    v59 = &v131;
                    v60 = v150;
                  }
                }

                v61 = &v60[24 * v151];
                v62 = *v59;
                *(v61 + 2) = v59[2];
                *v61 = v62;
                ++v151;
              }
            }
          }

          v63 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
          if (v148)
          {
            mlir::InFlightDiagnostic::report(&v148);
          }

          if (v159 == 1)
          {
            mlir::Diagnostic::~Diagnostic(v149);
          }

          return v63;
        }
      }
    }

LABEL_79:
    v144 = v146;
    v145 = 0x400000000;
    if ((mlir::matchConstantWithIntVector<long long>(a3, &v144) & 1) != 0 && v145)
    {
      v73 = 0;
      while ((*(v144 + v73) & 0x8000000000000000) == 0)
      {
        if (v145 == ++v73)
        {
          goto LABEL_84;
        }
      }

      v134 = 259;
      mlir::Operation::emitOpError(a1, &v131, &v148);
      if (v148)
      {
        v79 = *(v144 + v73);
        v141 = 2;
        v142 = v79;
        v80 = &v141;
        v81 = v150;
        if (v151 >= v152)
        {
          if (v150 <= &v141 && v150 + 24 * v151 > &v141)
          {
            v117 = &v141 - v150;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
            v81 = v150;
            v80 = (v150 + v117);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
            v80 = &v141;
            v81 = v150;
          }
        }

        v82 = &v81[24 * v151];
        v83 = *v80;
        *(v82 + 2) = *(v80 + 2);
        *v82 = v83;
        v84 = ++v151;
        if (v148)
        {
          v141 = 3;
          v142 = " at index ";
          v143 = 10;
          v85 = &v141;
          v86 = v150;
          if (v84 >= v152)
          {
            if (v150 <= &v141 && v150 + 24 * v84 > &v141)
            {
              v118 = &v141 - v150;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v84 + 1, 24);
              v86 = v150;
              v85 = (v150 + v118);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v84 + 1, 24);
              v85 = &v141;
              v86 = v150;
            }
          }

          v87 = &v86[24 * v151];
          v88 = *v85;
          *(v87 + 2) = *(v85 + 2);
          *v87 = v88;
          v89 = ++v151;
          if (v148)
          {
            v141 = 5;
            v142 = v73;
            v90 = &v141;
            v91 = v150;
            if (v89 >= v152)
            {
              if (v150 <= &v141 && v150 + 24 * v89 > &v141)
              {
                v119 = &v141 - v150;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v89 + 1, 24);
                v91 = v150;
                v90 = (v150 + v119);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v89 + 1, 24);
                v90 = &v141;
                v91 = v150;
              }
            }

            v92 = &v91[24 * v151];
            v93 = *v90;
            *(v92 + 2) = *(v90 + 2);
            *v92 = v93;
            ++v151;
          }
        }
      }

      v63 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
      if (v148)
      {
        mlir::InFlightDiagnostic::report(&v148);
      }

      if (v159)
      {
        if (v158 != &v159)
        {
          free(v158);
        }

        v94 = __p;
        if (__p)
        {
          v95 = v157;
          v96 = __p;
          if (v157 != __p)
          {
            do
            {
              v95 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v95 - 1);
            }

            while (v95 != v94);
            v96 = __p;
          }

          v157 = v94;
          operator delete(v96);
        }

        v97 = v154;
        if (v154)
        {
          v98 = v155;
          v99 = v154;
          if (v155 != v154)
          {
            do
            {
              v101 = *--v98;
              v100 = v101;
              *v98 = 0;
              if (v101)
              {
                MEMORY[0x1AC55A040](v100, 0x1000C8077774924);
              }
            }

            while (v98 != v97);
            v99 = v154;
          }

          v155 = v97;
          operator delete(v99);
        }

        if (v150 != v153)
        {
          free(v150);
        }
      }
    }

    else
    {
LABEL_84:
      if (!v30 && mlir::ElementsAttr::getShapedType(&v135) && mlir::ElementsAttr::getShapedType(&v139) && (mlir::ShapedType::getShape(&v135), v75 = v74, mlir::ShapedType::getShape(&v139), v75 != v76))
      {
        v134 = 259;
        mlir::Operation::emitOpError(a1, &v131, &v148);
        mlir::ShapedType::getShape(&v139);
        if (v148)
        {
          v141 = 2;
          v142 = v102;
          v103 = &v141;
          v104 = v150;
          if (v151 >= v152)
          {
            if (v150 <= &v141 && v150 + 24 * v151 > &v141)
            {
              v120 = &v141 - v150;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v104 = v150;
              v103 = (v150 + v120);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v103 = &v141;
              v104 = v150;
            }
          }

          v105 = &v104[24 * v151];
          v106 = *v103;
          *(v105 + 2) = *(v103 + 2);
          *v105 = v106;
          v107 = ++v151;
          if (v148)
          {
            v141 = 3;
            v143 = 26;
            v108 = &v141;
            v109 = v150;
            if (v107 >= v152)
            {
              if (v150 <= &v141 && v150 + 24 * v107 > &v141)
              {
                v123 = &v141 - v150;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v107 + 1, 24);
                v109 = v150;
                v108 = (v150 + v123);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v107 + 1, 24);
                v108 = &v141;
                v109 = v150;
              }
            }

            v110 = &v109[24 * v151];
            v111 = *v108;
            *(v110 + 2) = *(v108 + 2);
            *v110 = v111;
            ++v151;
          }
        }

        mlir::ShapedType::getShape(&v135);
        if (v148)
        {
          v141 = 2;
          v142 = v112;
          v113 = &v141;
          v114 = v150;
          if (v151 >= v152)
          {
            if (v150 <= &v141 && v150 + 24 * v151 > &v141)
            {
              v121 = &v141 - v150;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v114 = v150;
              v113 = (v150 + v121);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v113 = &v141;
              v114 = v150;
            }
          }

          v115 = &v114[24 * v151];
          v116 = *v113;
          *(v115 + 2) = *(v113 + 2);
          *v115 = v116;
          ++v151;
        }

        v63 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
        if (v148)
        {
          mlir::InFlightDiagnostic::report(&v148);
        }

        if (v159 == 1)
        {
          mlir::Diagnostic::~Diagnostic(v149);
        }
      }

      else
      {
        v63 = 1;
      }
    }

    v77 = v144;
    if (v144 != v146)
    {
      goto LABEL_90;
    }

    return v63;
  }

  v147 = 259;
  mlir::Operation::emitOpError(a1, &v144, &v148);
  v63 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
  if (v148)
  {
    mlir::InFlightDiagnostic::report(&v148);
  }

  if (v159 == 1)
  {
    if (v158 != &v159)
    {
      free(v158);
    }

    v64 = __p;
    if (__p)
    {
      v65 = v157;
      v66 = __p;
      if (v157 != __p)
      {
        do
        {
          v65 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v65 - 1);
        }

        while (v65 != v64);
        v66 = __p;
      }

      v157 = v64;
      operator delete(v66);
    }

    v67 = v154;
    if (v154)
    {
      v68 = v155;
      v69 = v154;
      if (v155 != v154)
      {
        do
        {
          v71 = *--v68;
          v70 = v71;
          *v68 = 0;
          if (v71)
          {
            MEMORY[0x1AC55A040](v70, 0x1000C8077774924);
          }
        }

        while (v68 != v67);
        v69 = v154;
      }

      v155 = v67;
      operator delete(v69);
    }

    v77 = v150;
    if (v150 != v153)
    {
LABEL_90:
      free(v77);
    }
  }

  return v63;
}