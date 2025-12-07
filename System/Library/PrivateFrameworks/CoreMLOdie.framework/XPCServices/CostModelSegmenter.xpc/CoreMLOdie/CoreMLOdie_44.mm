uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verify(mlir::Operation **this)
{
  v42[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::RankedTensorType::getElementType(v42);
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v42[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = mlir::RankedTensorType::getElementType(v42);
  if (ElementType == v4)
  {
    return 1;
  }

  v6 = v4;
  v37 = "expected source ";
  v38 = 259;
  mlir::OpState::emitOpError(v42, this, &v37);
  if (v42[0])
  {
    v7 = &v39;
    mlir::DiagnosticArgument::DiagnosticArgument(&v39, ElementType);
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v39 && v43 + 24 * v44 > &v39)
      {
        v33 = &v39 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v33);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v39;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v44;
    if (v42[0])
    {
      v39 = 3;
      v40 = " and result element type ";
      v41 = 25;
      v12 = &v39;
      v13 = v43;
      if (v11 >= v45)
      {
        if (v43 <= &v39 && v43 + 24 * v11 > &v39)
        {
          v34 = &v39 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v11 + 1, 24);
          v13 = v43;
          v12 = (v43 + v34);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v11 + 1, 24);
          v12 = &v39;
          v13 = v43;
        }
      }

      v14 = &v13[24 * v44];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      ++v44;
      if (v42[0])
      {
        v16 = &v39;
        mlir::DiagnosticArgument::DiagnosticArgument(&v39, v6);
        v17 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v39 && v43 + 24 * v44 > &v39)
          {
            v35 = &v39 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v17 = v43;
            v16 = (v43 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v16 = &v39;
            v17 = v43;
          }
        }

        v18 = &v17[24 * v44];
        v19 = *v16;
        *(v18 + 2) = *(v16 + 2);
        *v18 = v19;
        v20 = ++v44;
        if (v42[0])
        {
          v39 = 3;
          v40 = " to match";
          v41 = 9;
          v21 = &v39;
          v22 = v43;
          if (v20 >= v45)
          {
            if (v43 <= &v39 && v43 + 24 * v20 > &v39)
            {
              v36 = &v39 - v43;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v20 + 1, 24);
              v22 = v43;
              v21 = (v43 + v36);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v20 + 1, 24);
              v21 = &v39;
              v22 = v43;
            }
          }

          v23 = &v22[24 * v44];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v44;
        }
      }
    }
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
  if (v42[0])
  {
    mlir::InFlightDiagnostic::report(v42);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v50;
      v27 = __p;
      if (v50 != __p)
      {
        do
        {
          v26 = sub_100052FFC(v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v50 = v25;
      operator delete(v27);
    }

    v28 = v47;
    if (v47)
    {
      v29 = v48;
      v30 = v47;
      if (v48 != v47)
      {
        do
        {
          v31 = *--v29;
          *v29 = 0;
          if (v31)
          {
            operator delete[]();
          }
        }

        while (v29 != v28);
        v30 = v47;
      }

      v48 = v28;
      operator delete(v30);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v5;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::verify(mlir::Operation **this)
{
  v42[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::RankedTensorType::getElementType(v42);
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v42[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = mlir::RankedTensorType::getElementType(v42);
  if (ElementType == v4)
  {
    return 1;
  }

  v6 = v4;
  v37 = "expected source ";
  v38 = 259;
  mlir::OpState::emitOpError(v42, this, &v37);
  if (v42[0])
  {
    v7 = &v39;
    mlir::DiagnosticArgument::DiagnosticArgument(&v39, ElementType);
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v39 && v43 + 24 * v44 > &v39)
      {
        v33 = &v39 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v33);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v39;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v44;
    if (v42[0])
    {
      v39 = 3;
      v40 = " and result element type ";
      v41 = 25;
      v12 = &v39;
      v13 = v43;
      if (v11 >= v45)
      {
        if (v43 <= &v39 && v43 + 24 * v11 > &v39)
        {
          v34 = &v39 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v11 + 1, 24);
          v13 = v43;
          v12 = (v43 + v34);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v11 + 1, 24);
          v12 = &v39;
          v13 = v43;
        }
      }

      v14 = &v13[24 * v44];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      ++v44;
      if (v42[0])
      {
        v16 = &v39;
        mlir::DiagnosticArgument::DiagnosticArgument(&v39, v6);
        v17 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v39 && v43 + 24 * v44 > &v39)
          {
            v35 = &v39 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v17 = v43;
            v16 = (v43 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v16 = &v39;
            v17 = v43;
          }
        }

        v18 = &v17[24 * v44];
        v19 = *v16;
        *(v18 + 2) = *(v16 + 2);
        *v18 = v19;
        v20 = ++v44;
        if (v42[0])
        {
          v39 = 3;
          v40 = " to match";
          v41 = 9;
          v21 = &v39;
          v22 = v43;
          if (v20 >= v45)
          {
            if (v43 <= &v39 && v43 + 24 * v20 > &v39)
            {
              v36 = &v39 - v43;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v20 + 1, 24);
              v22 = v43;
              v21 = (v43 + v36);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v20 + 1, 24);
              v21 = &v39;
              v22 = v43;
            }
          }

          v23 = &v22[24 * v44];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v44;
        }
      }
    }
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
  if (v42[0])
  {
    mlir::InFlightDiagnostic::report(v42);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v50;
      v27 = __p;
      if (v50 != __p)
      {
        do
        {
          v26 = sub_100052FFC(v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v50 = v25;
      operator delete(v27);
    }

    v28 = v47;
    if (v47)
    {
      v29 = v48;
      v30 = v47;
      if (v48 != v47)
      {
        do
        {
          v31 = *--v29;
          *v29 = 0;
          if (v31)
          {
            operator delete[]();
          }
        }

        while (v29 != v28);
        v30 = v47;
      }

      v48 = v28;
      operator delete(v30);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v5;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ViewOp::verify(mlir::Operation **this)
{
  v2 = *this;
  v62 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 + 9);
  v4 = v2 - 16;
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v61 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::RankedTensorType::getElementType(&v62);
  if (ElementType != mlir::RankedTensorType::getElementType(&v61))
  {
    __s1 = "expected source ";
    v71[8] = 259;
    mlir::OpState::emitOpError(&v72, this, &__s1);
    v24 = mlir::RankedTensorType::getElementType(&v62);
    if (v72)
    {
      p_s2 = &__s2;
      mlir::DiagnosticArgument::DiagnosticArgument(&__s2, v24);
      v26 = v74;
      if (v75 >= v76)
      {
        if (v74 <= &__s2 && v74 + 24 * v75 > &__s2)
        {
          v53 = &__s2 - v74;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v26 = v74;
          p_s2 = (v74 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          p_s2 = &__s2;
          v26 = v74;
        }
      }

      v27 = &v26[24 * v75];
      v28 = *p_s2;
      *(v27 + 2) = p_s2[2];
      *v27 = v28;
      v29 = ++v75;
      if (v72)
      {
        LODWORD(__s2) = 3;
        v67 = " and result element type ";
        v68[0] = 25;
        v30 = &__s2;
        v31 = v74;
        if (v29 >= v76)
        {
          if (v74 <= &__s2 && v74 + 24 * v29 > &__s2)
          {
            v55 = &__s2 - v74;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v29 + 1, 24);
            v31 = v74;
            v30 = (v74 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v29 + 1, 24);
            v30 = &__s2;
            v31 = v74;
          }
        }

        v32 = &v31[24 * v75];
        v33 = *v30;
        *(v32 + 2) = v30[2];
        *v32 = v33;
        ++v75;
      }
    }

    v34 = mlir::RankedTensorType::getElementType(&v61);
    if (v72)
    {
      v35 = &__s2;
      mlir::DiagnosticArgument::DiagnosticArgument(&__s2, v34);
      v36 = v74;
      if (v75 >= v76)
      {
        if (v74 <= &__s2 && v74 + 24 * v75 > &__s2)
        {
          v54 = &__s2 - v74;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v36 = v74;
          v35 = (v74 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v35 = &__s2;
          v36 = v74;
        }
      }

      v37 = &v36[24 * v75];
      v38 = *v35;
      *(v37 + 2) = v35[2];
      *v37 = v38;
      v39 = ++v75;
      if (v72)
      {
        LODWORD(__s2) = 3;
        v67 = " to match";
        v68[0] = 9;
        v40 = &__s2;
        v41 = v74;
        if (v39 >= v76)
        {
          if (v74 <= &__s2 && v74 + 24 * v39 > &__s2)
          {
            v56 = &__s2 - v74;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v39 + 1, 24);
            v41 = v74;
            v40 = (v74 + v56);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v39 + 1, 24);
            v40 = &__s2;
            v41 = v74;
          }
        }

        v42 = &v41[24 * v75];
        v43 = *v40;
        *(v42 + 2) = v40[2];
        *v42 = v43;
        ++v75;
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v72);
    if (v72)
    {
      mlir::InFlightDiagnostic::report(&v72);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v81;
        v46 = __p;
        if (v81 != __p)
        {
          do
          {
            v45 = sub_100052FFC(v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v81 = v44;
        operator delete(v46);
      }

      v47 = v78;
      if (v78)
      {
        v48 = v79;
        v49 = v78;
        if (v79 != v78)
        {
          do
          {
            v50 = *--v48;
            *v48 = 0;
            if (v50)
            {
              operator delete[]();
            }
          }

          while (v48 != v47);
          v49 = v78;
        }

        v79 = v47;
        operator delete(v49);
      }

      v51 = v74;
      if (v74 != v77)
      {
        goto LABEL_69;
      }
    }

    return v16;
  }

  mlir::ODIE::Compiler::CoreMLAX::getStrides(v62, &__s1);
  mlir::ODIE::Compiler::CoreMLAX::getStrides(v61, &__s2);
  if (v70 == v67 && (v7 = __s2, !memcmp(__s1, __s2, 8 * v70)))
  {
    v16 = 1;
    if (v7 != v68)
    {
LABEL_67:
      free(v7);
    }
  }

  else
  {
    v59 = "source strides [";
    v60 = 259;
    mlir::OpState::emitOpError(&v72, this, &v59);
    if (v72)
    {
      v63 = ", ";
      sub_10005DF34(__s1, __s1 + v70, v73, v73, &v63);
      if (v72)
      {
        LODWORD(v63) = 3;
        v64 = "] do not match dest strides [";
        v65 = 29;
        v8 = &v63;
        v9 = v74;
        if (v75 >= v76)
        {
          if (v74 <= &v63 && v74 + 24 * v75 > &v63)
          {
            v57 = &v63 - v74;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
            v9 = v74;
            v8 = (v74 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
            v8 = &v63;
            v9 = v74;
          }
        }

        v10 = &v9[24 * v75];
        v11 = *v8;
        *(v10 + 2) = v8[2];
        *v10 = v11;
        ++v75;
        if (v72)
        {
          v63 = ", ";
          sub_10005DF34(__s2, __s2 + v67, v73, v73, &v63);
          if (v72)
          {
            LODWORD(v63) = 3;
            v64 = "]";
            v65 = 1;
            v12 = &v63;
            v13 = v74;
            if (v75 >= v76)
            {
              if (v74 <= &v63 && v74 + 24 * v75 > &v63)
              {
                v58 = &v63 - v74;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                v13 = v74;
                v12 = (v74 + v58);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                v12 = &v63;
                v13 = v74;
              }
            }

            v14 = &v13[24 * v75];
            v15 = *v12;
            *(v14 + 2) = v12[2];
            *v14 = v15;
            ++v75;
          }
        }
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v72);
    if (v72)
    {
      mlir::InFlightDiagnostic::report(&v72);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v81;
        v19 = __p;
        if (v81 != __p)
        {
          do
          {
            v18 = sub_100052FFC(v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v81 = v17;
        operator delete(v19);
      }

      v20 = v78;
      if (v78)
      {
        v21 = v79;
        v22 = v78;
        if (v79 != v78)
        {
          do
          {
            v23 = *--v21;
            *v21 = 0;
            if (v23)
            {
              operator delete[]();
            }
          }

          while (v21 != v20);
          v22 = v78;
        }

        v79 = v20;
        operator delete(v22);
      }

      if (v74 != v77)
      {
        free(v74);
      }
    }

    v7 = __s2;
    if (__s2 != v68)
    {
      goto LABEL_67;
    }
  }

  v51 = __s1;
  if (__s1 != v71)
  {
LABEL_69:
    free(v51);
  }

  return v16;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ViewOp::fold(uint64_t a1)
{
  v2 = *(*(*(*a1 + 72) + 24) + 8);
  if (*(*a1 + 36))
  {
    v3 = *a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  result = 0;
  if ((*(NextResultAtOffset + 8) ^ v2) <= 7)
  {
    return *(*(*a1 + 72) + 24) | 4;
  }

  return result;
}

double mlir::ODIE::Compiler::CoreMLAX::ViewOp::getOutputIntents@<D0>(mlir::ODIE::Compiler::CoreMLAX::ViewOp *this@<X0>, uint64_t a2@<X8>)
{
  Context = mlir::Attribute::getContext((*this + 24));
  *(a2 + 16) = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 2uLL);
  *a2 = a2 + 16;
  *&result = 0x600000001;
  *(a2 + 8) = 0x600000001;
  *(a2 + 64) = 1;
  return result;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 4)
  {
    mlir::RegionRange::RegionRange(&v27, 0, 0);
    v27 = a4;
    v28 = 0;
    v14 = mlir::ValueRange::dereference_iterator(&v27, 0);
    v27 = a4;
    v28 = 2;
    v27 = mlir::ValueRange::offset_base(&v27, 2);
    v28 = 0;
    v15 = mlir::ValueRange::dereference_iterator(&v27, 0);
    v27 = sub_100140050((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
    v28 = v16;
    if (v27)
    {
      v26[0] = sub_100140050((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
      v26[1] = v17;
      if (v26[0])
      {
        Shape = mlir::ShapedType::getShape(v26);
        v20 = v19;
        ElementType = mlir::ShapedType::getElementType(&v27);
        v22 = mlir::RankedTensorType::get(Shape, v20, ElementType, 0);
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
        return 1;
      }

      else
      {
        return sub_1001D4DAC(a2, a3, "expect shaped type for input");
      }
    }

    else
    {
      return sub_1001D4DAC(a2, a3, "expect shaped type for zero_scale");
    }
  }

  else
  {

    return sub_1001D4DAC(a2, a3, "expect 4 operands");
  }
}

BOOL mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 4)
  {
    mlir::RegionRange::RegionRange(&v28, 0, 0);
    v28 = a4;
    v29 = 0;
    v14 = mlir::ValueRange::dereference_iterator(&v28, 0);
    v28 = a4;
    v29 = 1;
    v28 = mlir::ValueRange::offset_base(&v28, 1);
    v29 = 0;
    v15 = mlir::ValueRange::dereference_iterator(&v28, 0);
    v28 = sub_100140050((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
    v29 = v16;
    if (v28)
    {
      v27[0] = sub_100140050((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
      v27[1] = v17;
      if (v27[0])
      {
        Shape = mlir::ShapedType::getShape(v27);
        v20 = v19;
        ElementType = mlir::ShapedType::getElementType(&v28);
        v22 = mlir::RankedTensorType::get(Shape, v20, ElementType, 0);
        v23 = *(a11 + 8);
        if (v23 >= *(a11 + 12))
        {
          v26 = v22;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v23 + 1, 8);
          v22 = v26;
          LODWORD(v23) = *(a11 + 8);
        }

        *(*a11 + 8 * v23) = v22;
        ++*(a11 + 8);
        return 1;
      }

      v25 = "expect shaped type for input";
    }

    else
    {
      v25 = "expect shaped type for scale";
    }

    return sub_1001D4DAC(a2, a3, v25);
  }

  return sub_1001D4DAC(a2, a3, "expect 4 operands");
}

BOOL mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::verify(mlir::ODIE::Compiler::CoreMLAX::DequantizeOp *this)
{
  v1 = *(*this + 72);
  v2 = v1[7];
  v3 = v1[11];
  v4 = v1[15];
  v5 = v1[3];
  v15 = this;
  sub_100269EAC(&v16, sub_100274C44, &v15, v5, v2, v3, v4);
  if (!mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16))
  {
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
    if (!v16)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 1;
  if (v16)
  {
LABEL_5:
    mlir::InFlightDiagnostic::report(&v16);
  }

LABEL_6:
  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }

  return v6;
}

void sub_100269EAC(_OWORD *a1, void (*a2)(void **__return_ptr, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = a5;
  v108 = *(a5 + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v108);
  v15 = v14;
  v107 = *(a6 + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v107);
  v17 = v16;
  v106 = a7[1] & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v106);
  if (v15 >= 2)
  {
    a2(v110, a3);
    if (v110[0])
    {
      LODWORD(v100) = 3;
      *(&v100 + 1) = "scale can only be a scalar or rank-1 tensor";
      *&v101 = 43;
      v19 = &v100;
      v20 = *(&v111 + 1);
      if (v112 >= HIDWORD(v112))
      {
        if (*(&v111 + 1) <= &v100 && *(&v111 + 1) + 24 * v112 > &v100)
        {
          v96 = &v100 - *(&v111 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v111 + 8, v113, v112 + 1, 24);
          v20 = *(&v111 + 1);
          v19 = &v96[*(&v111 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v111 + 8, v113, v112 + 1, 24);
          v19 = &v100;
          v20 = *(&v111 + 1);
        }
      }

      v21 = v20 + 24 * v112;
      v22 = *v19;
      *(v21 + 16) = *(v19 + 2);
      *v21 = v22;
      LODWORD(v112) = v112 + 1;
    }

    sub_100062C04(a1, v110);
    if (v110[0])
    {
      mlir::InFlightDiagnostic::report(v110);
    }

    if (v121 == 1)
    {
      if (v120 != &v121)
      {
        free(v120);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v119;
        v25 = __p;
        if (v119 != __p)
        {
          do
          {
            v24 = sub_100052FFC(v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v119 = v23;
        operator delete(v25);
      }

      v26 = v116;
      if (!v116)
      {
        goto LABEL_63;
      }

      v27 = v117;
      v28 = v116;
      if (v117 == v116)
      {
LABEL_62:
        v117 = v26;
        operator delete(v28);
LABEL_63:
        if (*(&v111 + 1) != v113)
        {
          free(*(&v111 + 1));
        }

        return;
      }

      do
      {
        v29 = *--v27;
        *v27 = 0;
        if (v29)
        {
          operator delete[]();
        }
      }

      while (v27 != v26);
LABEL_61:
      v28 = v116;
      goto LABEL_62;
    }

    return;
  }

  if (v17 <= 1)
  {
    if (v18 >= 1)
    {
      a2(v110, a3);
      if (v110[0])
      {
        LODWORD(v100) = 3;
        *(&v100 + 1) = "axis can only be a scalar";
        *&v101 = 25;
        v39 = &v100;
        v40 = *(&v111 + 1);
        if (v112 >= HIDWORD(v112))
        {
          if (*(&v111 + 1) <= &v100 && *(&v111 + 1) + 24 * v112 > &v100)
          {
            v98 = &v100 - *(&v111 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v111 + 8, v113, v112 + 1, 24);
            v40 = *(&v111 + 1);
            v39 = &v98[*(&v111 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v111 + 8, v113, v112 + 1, 24);
            v39 = &v100;
            v40 = *(&v111 + 1);
          }
        }

        v41 = v40 + 24 * v112;
        v42 = *v39;
        *(v41 + 16) = *(v39 + 2);
        *v41 = v42;
        LODWORD(v112) = v112 + 1;
      }

      sub_100062C04(a1, v110);
      if (v110[0])
      {
        mlir::InFlightDiagnostic::report(v110);
      }

      if (v121 == 1)
      {
        if (v120 != &v121)
        {
          free(v120);
        }

        v43 = __p;
        if (__p)
        {
          v44 = v119;
          v45 = __p;
          if (v119 != __p)
          {
            do
            {
              v44 = sub_100052FFC(v44 - 1);
            }

            while (v44 != v43);
            v45 = __p;
          }

          v119 = v43;
          operator delete(v45);
        }

        v26 = v116;
        if (!v116)
        {
          goto LABEL_63;
        }

        v46 = v117;
        v28 = v116;
        if (v117 == v116)
        {
          goto LABEL_62;
        }

        do
        {
          v47 = *--v46;
          *v46 = 0;
          if (v47)
          {
            operator delete[]();
          }
        }

        while (v46 != v26);
        goto LABEL_61;
      }

      return;
    }

    Shape = mlir::TensorType::getShape(&v108);
    NumElements = mlir::ShapedType::getNumElements(Shape, v49);
    v51 = mlir::TensorType::getShape(&v107);
    if (NumElements == mlir::ShapedType::getNumElements(v51, v52))
    {
      v105 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::TensorType::getShape(&v105);
      v54 = v53;
      v104 = v53;
      v55 = mlir::TensorType::getShape(&v108);
      if (mlir::ShapedType::getNumElements(v55, v56) < 2)
      {
        goto LABEL_77;
      }

      sub_1001F2F84(a7, v110);
      if (v115)
      {
        v57 = *v110[0];
        if (v110[0] != &v111)
        {
          free(v110[0]);
        }

        LODWORD(v103) = v57;
        if (v54 <= v57 || v57 < -v54)
        {
          a2(v110, a3);
          sub_100081F48(v110, "axis must be within range (-data_rank - 1, data_rank) (exclusive). Provided axis: ");
          sub_1001F291C(v84, &v103);
          sub_100081F48(v85, " for input with rank: ");
          v87 = &v104;
        }

        else
        {
          v58 = mlir::TensorType::getShape(&v105);
          if (v57 >= 0)
          {
            v59 = 0;
          }

          else
          {
            v59 = v54;
          }

          v60 = v59 + v57;
          if (*(mlir::TensorType::getShape(&v105) + 8 * v60) == 0x8000000000000000 || (*&v100 = *(v58 + 8 * v60), v61 = mlir::TensorType::getShape(&v108), v100 == mlir::ShapedType::getNumElements(v61, v62)))
          {
LABEL_77:
            v103 = 0;
            *&v100 = &v103;
            v110[0] = v9;
            DefiningOp = mlir::Value::getDefiningOp(v110);
            if (DefiningOp && sub_10025106C(&v100, DefiningOp) && (mlir::DenseElementsAttr::tryGetFloatValues(v110, &v103), v100 = *v110, v101 = v111, v102 = v112, mlir::DenseElementsAttr::tryGetFloatValues(v110, &v103), v64 = v114, v101 != v114))
            {
              while (1)
              {
                v77 = mlir::DenseElementsAttr::IntElementIterator::operator*(&v100, v110);
                v78 = v102;
                v80 = llvm::APFloatBase::PPCDoubleDouble(v77);
                if (v80 == v78)
                {
                  llvm::detail::DoubleAPFloat::DoubleAPFloat(v109, v78, v110);
                }

                llvm::detail::IEEEFloat::IEEEFloat(v109, v78, v110, v79);
                if (LODWORD(v110[1]) >= 0x41 && v110[0])
                {
                  operator delete[]();
                }

                if (llvm::APFloat::convertToFloat(v109, v81, v82, v83) < 0.0)
                {
                  break;
                }

                if (v80 == v109[0])
                {
                  sub_100029F40(v109);
                  *&v101 = v101 + 1;
                  if (v101 == v64)
                  {
                    goto LABEL_110;
                  }
                }

                else
                {
                  llvm::detail::IEEEFloat::~IEEEFloat(v109);
                  *&v101 = v101 + 1;
                  if (v101 == v64)
                  {
                    goto LABEL_110;
                  }
                }
              }

              a2(v110, a3);
              sub_100081F48(v110, "All scale values must be positive");
              sub_100062C04(a1, v95);
              sub_100059A74(v110);
              sub_10002999C(v109);
            }

            else
            {
LABEL_110:
              a1[11] = 0u;
              a1[12] = 0u;
              a1[9] = 0u;
              a1[10] = 0u;
              a1[7] = 0u;
              a1[8] = 0u;
              a1[5] = 0u;
              a1[6] = 0u;
              a1[3] = 0u;
              a1[4] = 0u;
              a1[1] = 0u;
              a1[2] = 0u;
              *a1 = 0u;
            }

            return;
          }

          a2(v110, a3);
          sub_100081F48(v89, "Provided length of scale is ");
          v91 = v90;
          v92 = mlir::TensorType::getShape(&v108);
          v109[0] = mlir::ShapedType::getNumElements(v92, v93);
          sub_1001F15F8(v91, v109);
          sub_100081F48(v94, ", but dimension of input at axis is ");
          v87 = &v100;
        }

        sub_1001F15F8(v86, v87);
        sub_100062C04(a1, v88);
        sub_100059A74(v110);
        return;
      }

      sub_10024F430();
      goto LABEL_136;
    }

    v9 = v110;
    a2(v110, a3);
    if (!v110[0])
    {
LABEL_84:
      sub_100062C04(a1, v110);
      if (v110[0])
      {
        mlir::InFlightDiagnostic::report(v110);
      }

      if (v121 == 1)
      {
        if (v120 != &v121)
        {
          free(v120);
        }

        v70 = __p;
        if (__p)
        {
          v71 = v119;
          v72 = __p;
          if (v119 != __p)
          {
            do
            {
              v71 = sub_100052FFC(v71 - 1);
            }

            while (v71 != v70);
            v72 = __p;
          }

          v119 = v70;
          operator delete(v72);
        }

        v73 = v116;
        if (v116)
        {
          v74 = v117;
          v75 = v116;
          if (v117 != v116)
          {
            do
            {
              v76 = *--v74;
              *v74 = 0;
              if (v76)
              {
                operator delete[]();
              }
            }

            while (v74 != v73);
            v75 = v116;
          }

          v117 = v73;
          operator delete(v75);
        }

        if (*(&v111 + 1) != v113)
        {
          free(*(&v111 + 1));
        }
      }

      return;
    }

    LODWORD(v100) = 3;
    *(&v100 + 1) = "zero_point and scale should be of same length";
    *&v101 = 45;
    v65 = v112;
    v66 = &v100;
    v67 = *(&v111 + 1);
    if (v112 >= HIDWORD(v112))
    {
      if (*(&v111 + 1) <= &v100 && *(&v111 + 1) + 24 * v112 > &v100)
      {
LABEL_136:
        v99 = &v100 - v67;
        llvm::SmallVectorBase<unsigned int>::grow_pod((v9 + 3), v113, v65 + 1, 24);
        v67 = *(&v111 + 1);
        v66 = &v99[*(&v111 + 1)];
        goto LABEL_83;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&v111 + 8, v113, v112 + 1, 24);
      v66 = &v100;
      v67 = *(&v111 + 1);
    }

LABEL_83:
    v68 = v67 + 24 * v112;
    v69 = *v66;
    *(v68 + 16) = *(v66 + 2);
    *v68 = v69;
    LODWORD(v112) = v112 + 1;
    goto LABEL_84;
  }

  a2(v110, a3);
  if (v110[0])
  {
    LODWORD(v100) = 3;
    *(&v100 + 1) = "zero-point can only be a scalar or rank-1 tensor";
    *&v101 = 48;
    v30 = &v100;
    v31 = *(&v111 + 1);
    if (v112 >= HIDWORD(v112))
    {
      if (*(&v111 + 1) <= &v100 && *(&v111 + 1) + 24 * v112 > &v100)
      {
        v97 = &v100 - *(&v111 + 1);
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v111 + 8, v113, v112 + 1, 24);
        v31 = *(&v111 + 1);
        v30 = &v97[*(&v111 + 1)];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v111 + 8, v113, v112 + 1, 24);
        v30 = &v100;
        v31 = *(&v111 + 1);
      }
    }

    v32 = v31 + 24 * v112;
    v33 = *v30;
    *(v32 + 16) = *(v30 + 2);
    *v32 = v33;
    LODWORD(v112) = v112 + 1;
  }

  sub_100062C04(a1, v110);
  if (v110[0])
  {
    mlir::InFlightDiagnostic::report(v110);
  }

  if (v121 == 1)
  {
    if (v120 != &v121)
    {
      free(v120);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v119;
      v36 = __p;
      if (v119 != __p)
      {
        do
        {
          v35 = sub_100052FFC(v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v119 = v34;
      operator delete(v36);
    }

    v26 = v116;
    if (!v116)
    {
      goto LABEL_63;
    }

    v37 = v117;
    v28 = v116;
    if (v117 == v116)
    {
      goto LABEL_62;
    }

    do
    {
      v38 = *--v37;
      *v37 = 0;
      if (v38)
      {
        operator delete[]();
      }
    }

    while (v37 != v26);
    goto LABEL_61;
  }
}

BOOL mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::verify(mlir::ODIE::Compiler::CoreMLAX::QuantizeOp *this)
{
  v1 = *(*this + 72);
  v2 = v1[3];
  v3 = v1[7];
  v4 = v1[11];
  v5 = v1[15];
  v15 = this;
  sub_100269EAC(&v16, sub_100274C74, &v15, v2, v3, v4, v5);
  if (!mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16))
  {
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
    if (!v16)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 1;
  if (v16)
  {
LABEL_5:
    mlir::InFlightDiagnostic::report(&v16);
  }

LABEL_6:
  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }

  return v6;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::verify(mlir::Operation **this)
{
  v2 = *(*this + 9);
  v3 = v2[3];
  v4 = v2[7];
  v5 = v2[11];
  v6 = *(v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v120 = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
  v121 = v6;
  v119 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v120))
  {
    goto LABEL_18;
  }

  Shape = mlir::TensorType::getShape(&v120);
  if (!v8)
  {
LABEL_6:
    if (mlir::TensorType::hasRank(&v121))
    {
      v10 = mlir::TensorType::getShape(&v121);
      if (!v11)
      {
LABEL_11:
        mlir::TensorType::getShape(&v121);
        v14 = v13;
        mlir::TensorType::getShape(&v120);
        v16 = v15;
        mlir::TensorType::getShape(&v119);
        v18 = v17;
        if (v14 == v16 && v16 == v17)
        {
          v19 = mlir::TensorType::getShape(&v121);
          v20 = mlir::TensorType::getShape(&v120);
          v22 = v21;
          v23 = mlir::TensorType::getShape(&v119);
          v24 = 1;
          if (!v22)
          {
            return v24;
          }

          while (1)
          {
            v26 = *v20++;
            v25 = v26;
            v27 = *v23++;
            if (v25 != v27)
            {
              break;
            }

            if (*v19 % v25)
            {
              v118 = 257;
              mlir::OpState::emitError(this, v117, v125);
              if (v125[0])
              {
                v122 = 3;
                v123 = "scale size across each dimension should be a factor of corresponding size of dimension in data argument";
                v124 = 103;
                v96 = &v122;
                v97 = v126;
                if (v127 >= v128)
                {
                  if (v126 <= &v122 && v126 + 24 * v127 > &v122)
                  {
                    v113 = &v122 - v126;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
                    v97 = v126;
                    v96 = (v126 + v113);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
                    v96 = &v122;
                    v97 = v126;
                  }
                }

                v98 = &v97[24 * v127];
                v99 = *v96;
                *(v98 + 2) = *(v96 + 2);
                *v98 = v99;
                ++v127;
              }

              v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
              if (v125[0])
              {
                mlir::InFlightDiagnostic::report(v125);
              }

              if (v135 != 1)
              {
                return v24;
              }

              if (v134 != &v135)
              {
                free(v134);
              }

              v100 = __p;
              if (__p)
              {
                v101 = v133;
                v102 = __p;
                if (v133 != __p)
                {
                  do
                  {
                    v101 = sub_100052FFC(v101 - 1);
                  }

                  while (v101 != v100);
                  v102 = __p;
                }

                v133 = v100;
                operator delete(v102);
              }

              v35 = v130;
              if (!v130)
              {
                goto LABEL_127;
              }

              v103 = v131;
              v37 = v130;
              if (v131 == v130)
              {
                goto LABEL_126;
              }

              do
              {
                v104 = *--v103;
                *v103 = 0;
                if (v104)
                {
                  operator delete[]();
                }
              }

              while (v103 != v35);
              goto LABEL_125;
            }

            ++v19;
            if (!--v22)
            {
              return v24;
            }
          }

          v118 = 257;
          mlir::OpState::emitError(this, v117, v125);
          if (v125[0])
          {
            v122 = 3;
            v123 = "shape of scale, and offset are not matching";
            v124 = 43;
            v87 = &v122;
            v88 = v126;
            if (v127 >= v128)
            {
              if (v126 <= &v122 && v126 + 24 * v127 > &v122)
              {
                v112 = &v122 - v126;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
                v88 = v126;
                v87 = (v126 + v112);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
                v87 = &v122;
                v88 = v126;
              }
            }

            v89 = &v88[24 * v127];
            v90 = *v87;
            *(v89 + 2) = *(v87 + 2);
            *v89 = v90;
            ++v127;
          }

          v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
          if (v125[0])
          {
            mlir::InFlightDiagnostic::report(v125);
          }

          if (v135 != 1)
          {
            return v24;
          }

          if (v134 != &v135)
          {
            free(v134);
          }

          v91 = __p;
          if (__p)
          {
            v92 = v133;
            v93 = __p;
            if (v133 != __p)
            {
              do
              {
                v92 = sub_100052FFC(v92 - 1);
              }

              while (v92 != v91);
              v93 = __p;
            }

            v133 = v91;
            operator delete(v93);
          }

          v35 = v130;
          if (!v130)
          {
            goto LABEL_127;
          }

          v94 = v131;
          v37 = v130;
          if (v131 == v130)
          {
            goto LABEL_126;
          }

          do
          {
            v95 = *--v94;
            *v94 = 0;
            if (v95)
            {
              operator delete[]();
            }
          }

          while (v94 != v35);
        }

        else
        {
          v118 = 257;
          mlir::OpState::emitError(this, v117, v125);
          if (v125[0])
          {
            v122 = 3;
            v123 = "rank of data, scale, and offset should match. ";
            v124 = 46;
            v48 = &v122;
            v49 = v126;
            if (v127 >= v128)
            {
              if (v126 <= &v122 && v126 + 24 * v127 > &v122)
              {
                v108 = &v122 - v126;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
                v49 = v126;
                v48 = (v126 + v108);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
                v48 = &v122;
                v49 = v126;
              }
            }

            v50 = &v49[24 * v127];
            v51 = *v48;
            *(v50 + 2) = *(v48 + 2);
            *v50 = v51;
            v52 = ++v127;
            if (v125[0])
            {
              v122 = 3;
              v123 = "data_rank = ";
              v124 = 12;
              v53 = &v122;
              v54 = v126;
              if (v52 >= v128)
              {
                if (v126 <= &v122 && v126 + 24 * v52 > &v122)
                {
                  v109 = &v122 - v126;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v52 + 1, 24);
                  v54 = v126;
                  v53 = (v126 + v109);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v52 + 1, 24);
                  v53 = &v122;
                  v54 = v126;
                }
              }

              v55 = &v54[24 * v127];
              v56 = *v53;
              *(v55 + 2) = *(v53 + 2);
              *v55 = v56;
              v57 = ++v127;
              if (v125[0])
              {
                v122 = 2;
                v123 = v14;
                v58 = &v122;
                v59 = v126;
                if (v57 >= v128)
                {
                  if (v126 <= &v122 && v126 + 24 * v57 > &v122)
                  {
                    v110 = &v122 - v126;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v57 + 1, 24);
                    v59 = v126;
                    v58 = (v126 + v110);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v57 + 1, 24);
                    v58 = &v122;
                    v59 = v126;
                  }
                }

                v60 = &v59[24 * v127];
                v61 = *v58;
                *(v60 + 2) = *(v58 + 2);
                *v60 = v61;
                v62 = ++v127;
                if (v125[0])
                {
                  v122 = 3;
                  v123 = ", scale_rank = ";
                  v124 = 15;
                  v63 = &v122;
                  v64 = v126;
                  if (v62 >= v128)
                  {
                    if (v126 <= &v122 && v126 + 24 * v62 > &v122)
                    {
                      v111 = &v122 - v126;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v62 + 1, 24);
                      v64 = v126;
                      v63 = (v126 + v111);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v62 + 1, 24);
                      v63 = &v122;
                      v64 = v126;
                    }
                  }

                  v65 = &v64[24 * v127];
                  v66 = *v63;
                  *(v65 + 2) = *(v63 + 2);
                  *v65 = v66;
                  v67 = ++v127;
                  if (v125[0])
                  {
                    v122 = 2;
                    v123 = v16;
                    v68 = &v122;
                    v69 = v126;
                    if (v67 >= v128)
                    {
                      if (v126 <= &v122 && v126 + 24 * v67 > &v122)
                      {
                        v114 = &v122 - v126;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v67 + 1, 24);
                        v69 = v126;
                        v68 = (v126 + v114);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v67 + 1, 24);
                        v68 = &v122;
                        v69 = v126;
                      }
                    }

                    v70 = &v69[24 * v127];
                    v71 = *v68;
                    *(v70 + 2) = *(v68 + 2);
                    *v70 = v71;
                    v72 = ++v127;
                    if (v125[0])
                    {
                      v122 = 3;
                      v123 = ", offset_rank = ";
                      v124 = 16;
                      v73 = &v122;
                      v74 = v126;
                      if (v72 >= v128)
                      {
                        if (v126 <= &v122 && v126 + 24 * v72 > &v122)
                        {
                          v115 = &v122 - v126;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v72 + 1, 24);
                          v74 = v126;
                          v73 = (v126 + v115);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v72 + 1, 24);
                          v73 = &v122;
                          v74 = v126;
                        }
                      }

                      v75 = &v74[24 * v127];
                      v76 = *v73;
                      *(v75 + 2) = *(v73 + 2);
                      *v75 = v76;
                      v77 = ++v127;
                      if (v125[0])
                      {
                        v122 = 2;
                        v123 = v18;
                        v78 = &v122;
                        v79 = v126;
                        if (v77 >= v128)
                        {
                          if (v126 <= &v122 && v126 + 24 * v77 > &v122)
                          {
                            v116 = &v122 - v126;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v77 + 1, 24);
                            v79 = v126;
                            v78 = (v126 + v116);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v77 + 1, 24);
                            v78 = &v122;
                            v79 = v126;
                          }
                        }

                        v80 = &v79[24 * v127];
                        v81 = *v78;
                        *(v80 + 2) = *(v78 + 2);
                        *v80 = v81;
                        ++v127;
                      }
                    }
                  }
                }
              }
            }
          }

          v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
          if (v125[0])
          {
            mlir::InFlightDiagnostic::report(v125);
          }

          if (v135 != 1)
          {
            return v24;
          }

          if (v134 != &v135)
          {
            free(v134);
          }

          v82 = __p;
          if (__p)
          {
            v83 = v133;
            v84 = __p;
            if (v133 != __p)
            {
              do
              {
                v83 = sub_100052FFC(v83 - 1);
              }

              while (v83 != v82);
              v84 = __p;
            }

            v133 = v82;
            operator delete(v84);
          }

          v35 = v130;
          if (!v130)
          {
            goto LABEL_127;
          }

          v85 = v131;
          v37 = v130;
          if (v131 == v130)
          {
LABEL_126:
            v131 = v35;
            operator delete(v37);
LABEL_127:
            if (v126 != v129)
            {
              free(v126);
            }

            return v24;
          }

          do
          {
            v86 = *--v85;
            *v85 = 0;
            if (v86)
            {
              operator delete[]();
            }
          }

          while (v85 != v35);
        }

        goto LABEL_125;
      }

      v12 = 8 * v11;
      while (*v10 != 0x8000000000000000)
      {
        ++v10;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_11;
        }
      }
    }

    v118 = 257;
    mlir::OpState::emitError(this, v117, v125);
    if (v125[0])
    {
      v122 = 3;
      v123 = "data shape is required to be static";
      v124 = 35;
      v39 = &v122;
      v40 = v126;
      if (v127 >= v128)
      {
        if (v126 <= &v122 && v126 + 24 * v127 > &v122)
        {
          v107 = &v122 - v126;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
          v40 = v126;
          v39 = (v126 + v107);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
          v39 = &v122;
          v40 = v126;
        }
      }

      v41 = &v40[24 * v127];
      v42 = *v39;
      *(v41 + 2) = *(v39 + 2);
      *v41 = v42;
      ++v127;
    }

    v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
    if (v125[0])
    {
      mlir::InFlightDiagnostic::report(v125);
    }

    if (v135 != 1)
    {
      return v24;
    }

    if (v134 != &v135)
    {
      free(v134);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v133;
      v45 = __p;
      if (v133 != __p)
      {
        do
        {
          v44 = sub_100052FFC(v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v133 = v43;
      operator delete(v45);
    }

    v35 = v130;
    if (!v130)
    {
      goto LABEL_127;
    }

    v46 = v131;
    v37 = v130;
    if (v131 == v130)
    {
      goto LABEL_126;
    }

    do
    {
      v47 = *--v46;
      *v46 = 0;
      if (v47)
      {
        operator delete[]();
      }
    }

    while (v46 != v35);
LABEL_125:
    v37 = v130;
    goto LABEL_126;
  }

  v9 = 8 * v8;
  while (*Shape != 0x8000000000000000)
  {
    ++Shape;
    v9 -= 8;
    if (!v9)
    {
      goto LABEL_6;
    }
  }

LABEL_18:
  v118 = 257;
  mlir::OpState::emitError(this, v117, v125);
  if (v125[0])
  {
    v122 = 3;
    v123 = "scale shape is required to be static";
    v124 = 36;
    v28 = &v122;
    v29 = v126;
    if (v127 >= v128)
    {
      if (v126 <= &v122 && v126 + 24 * v127 > &v122)
      {
        v106 = &v122 - v126;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
        v29 = v126;
        v28 = (v126 + v106);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
        v28 = &v122;
        v29 = v126;
      }
    }

    v30 = &v29[24 * v127];
    v31 = *v28;
    *(v30 + 2) = *(v28 + 2);
    *v30 = v31;
    ++v127;
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
  if (v125[0])
  {
    mlir::InFlightDiagnostic::report(v125);
  }

  if (v135 == 1)
  {
    if (v134 != &v135)
    {
      free(v134);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v133;
      v34 = __p;
      if (v133 != __p)
      {
        do
        {
          v33 = sub_100052FFC(v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v133 = v32;
      operator delete(v34);
    }

    v35 = v130;
    if (!v130)
    {
      goto LABEL_127;
    }

    v36 = v131;
    v37 = v130;
    if (v131 == v130)
    {
      goto LABEL_126;
    }

    do
    {
      v38 = *--v36;
      *v36 = 0;
      if (v38)
      {
        operator delete[]();
      }
    }

    while (v36 != v35);
    goto LABEL_125;
  }

  return v24;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::verify(mlir::Operation **this)
{
  v2 = *(*this + 9);
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v120 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v121 = v3;
  if (!mlir::TensorType::hasRank(&v121))
  {
LABEL_50:
    v119 = 257;
    mlir::OpState::emitError(this, v118, v125);
    if (v125[0])
    {
      LODWORD(v122) = 3;
      v123 = "indices shape is required to be static";
      v124 = 38;
      v53 = &v122;
      v54 = v127;
      if (v128 >= v129)
      {
        if (v127 <= &v122 && v127 + 24 * v128 > &v122)
        {
          v107 = &v122 - v127;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v130, v128 + 1, 24);
          v54 = v127;
          v53 = (v127 + v107);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v130, v128 + 1, 24);
          v53 = &v122;
          v54 = v127;
        }
      }

      v55 = &v54[24 * v128];
      v56 = *v53;
      *(v55 + 2) = v53[2];
      *v55 = v56;
      ++v128;
    }

    v46 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
    if (v125[0])
    {
      mlir::InFlightDiagnostic::report(v125);
    }

    if (v136 != 1)
    {
      return v46;
    }

    if (v135 != &v136)
    {
      free(v135);
    }

    v57 = v133;
    if (v133)
    {
      v58 = v134;
      v59 = v133;
      if (v134 != v133)
      {
        do
        {
          v58 = sub_100052FFC(v58 - 1);
        }

        while (v58 != v57);
        v59 = v133;
      }

      v134 = v57;
      operator delete(v59);
    }

    v50 = v131;
    if (!v131)
    {
      goto LABEL_131;
    }

    v60 = v132;
    v52 = v131;
    if (v132 == v131)
    {
      goto LABEL_130;
    }

    do
    {
      v61 = *--v60;
      *v60 = 0;
      if (v61)
      {
        operator delete[]();
      }
    }

    while (v60 != v50);
    goto LABEL_129;
  }

  Shape = mlir::TensorType::getShape(&v121);
  if (v5)
  {
    v6 = 8 * v5;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_50;
  }

LABEL_6:
  if (!mlir::TensorType::hasRank(&v120))
  {
LABEL_72:
    v119 = 257;
    mlir::OpState::emitError(this, v118, v125);
    if (v125[0])
    {
      LODWORD(v122) = 3;
      v123 = "lut shape is required to be static";
      v124 = 34;
      v63 = &v122;
      v64 = v127;
      if (v128 >= v129)
      {
        if (v127 <= &v122 && v127 + 24 * v128 > &v122)
        {
          v108 = &v122 - v127;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v130, v128 + 1, 24);
          v64 = v127;
          v63 = (v127 + v108);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v130, v128 + 1, 24);
          v63 = &v122;
          v64 = v127;
        }
      }

      v65 = &v64[24 * v128];
      v66 = *v63;
      *(v65 + 2) = v63[2];
      *v65 = v66;
      ++v128;
    }

    v46 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
    if (v125[0])
    {
      mlir::InFlightDiagnostic::report(v125);
    }

    if (v136 != 1)
    {
      return v46;
    }

    if (v135 != &v136)
    {
      free(v135);
    }

    v67 = v133;
    if (v133)
    {
      v68 = v134;
      v69 = v133;
      if (v134 != v133)
      {
        do
        {
          v68 = sub_100052FFC(v68 - 1);
        }

        while (v68 != v67);
        v69 = v133;
      }

      v134 = v67;
      operator delete(v69);
    }

    v50 = v131;
    if (!v131)
    {
      goto LABEL_131;
    }

    v70 = v132;
    v52 = v131;
    if (v132 == v131)
    {
      goto LABEL_130;
    }

    do
    {
      v71 = *--v70;
      *v70 = 0;
      if (v71)
      {
        operator delete[]();
      }
    }

    while (v70 != v50);
    goto LABEL_129;
  }

  v7 = mlir::TensorType::getShape(&v120);
  if (v8)
  {
    v9 = 8 * v8;
    while (*v7 != 0x8000000000000000)
    {
      ++v7;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_72;
  }

LABEL_11:
  mlir::TensorType::getShape(&v121);
  v11 = v10;
  v117 = v10;
  mlir::TensorType::getShape(&v120);
  if (v12 != v11 + 2)
  {
    v119 = 257;
    mlir::OpState::emitError(this, v118, v125);
    if (v125[0])
    {
      LODWORD(v122) = 3;
      v123 = "Input lut should have rank=K+2 where K is the rank of indices";
      v124 = 61;
      v72 = &v122;
      v73 = v127;
      if (v128 >= v129)
      {
        if (v127 <= &v122 && v127 + 24 * v128 > &v122)
        {
          v109 = &v122 - v127;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v130, v128 + 1, 24);
          v73 = v127;
          v72 = (v127 + v109);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v130, v128 + 1, 24);
          v72 = &v122;
          v73 = v127;
        }
      }

      v74 = &v73[24 * v128];
      v75 = *v72;
      *(v74 + 2) = v72[2];
      *v74 = v75;
      ++v128;
    }

    v46 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
    if (v125[0])
    {
      mlir::InFlightDiagnostic::report(v125);
    }

    if (v136 != 1)
    {
      return v46;
    }

    if (v135 != &v136)
    {
      free(v135);
    }

    v76 = v133;
    if (v133)
    {
      v77 = v134;
      v78 = v133;
      if (v134 != v133)
      {
        do
        {
          v77 = sub_100052FFC(v77 - 1);
        }

        while (v77 != v76);
        v78 = v133;
      }

      v134 = v76;
      operator delete(v78);
    }

    v50 = v131;
    if (!v131)
    {
      goto LABEL_131;
    }

    v79 = v132;
    v52 = v131;
    if (v132 == v131)
    {
      goto LABEL_130;
    }

    do
    {
      v80 = *--v79;
      *v79 = 0;
      if (v80)
      {
        operator delete[]();
      }
    }

    while (v79 != v50);
    goto LABEL_129;
  }

  v13 = mlir::TensorType::getShape(&v121);
  v15 = v14;
  v16 = mlir::TensorType::getShape(&v120);
  if (v15)
  {
    v17 = v16;
    v18 = v13;
    v19 = v15;
    while (1)
    {
      v21 = *v18++;
      v20 = v21;
      v22 = *v17++;
      if (v20 % v22)
      {
        break;
      }

      if (!--v19)
      {
        goto LABEL_16;
      }
    }

    v119 = 257;
    mlir::OpState::emitError(this, v118, v125);
    if (v125[0])
    {
      LODWORD(v122) = 3;
      v123 = "The first K dimensions of lut must be factors of indices dimensions where K is the rank of indices";
      v124 = 98;
      v81 = &v122;
      v82 = v127;
      if (v128 >= v129)
      {
        if (v127 <= &v122 && v127 + 24 * v128 > &v122)
        {
          v112 = &v122 - v127;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v130, v128 + 1, 24);
          v82 = v127;
          v81 = (v127 + v112);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v130, v128 + 1, 24);
          v81 = &v122;
          v82 = v127;
        }
      }

      v83 = &v82[24 * v128];
      v84 = *v81;
      *(v83 + 2) = v81[2];
      *v83 = v84;
      ++v128;
    }

    v46 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
    if (v125[0])
    {
      mlir::InFlightDiagnostic::report(v125);
    }

    if ((v136 & 1) == 0)
    {
      return v46;
    }

    if (v135 != &v136)
    {
      free(v135);
    }

    v85 = v133;
    if (v133)
    {
      v86 = v134;
      v87 = v133;
      if (v134 != v133)
      {
        do
        {
          v86 = sub_100052FFC(v86 - 1);
        }

        while (v86 != v85);
        v87 = v133;
      }

      v134 = v85;
      operator delete(v87);
    }

    v50 = v131;
    if (!v131)
    {
      goto LABEL_131;
    }

    v88 = v132;
    v52 = v131;
    if (v132 == v131)
    {
LABEL_130:
      v132 = v50;
      operator delete(v52);
LABEL_131:
      if (v127 != v130)
      {
        free(v127);
      }

      return v46;
    }

    do
    {
      v89 = *--v88;
      *v88 = 0;
      if (v89)
      {
        operator delete[]();
      }
    }

    while (v88 != v50);
LABEL_129:
    v52 = v131;
    goto LABEL_130;
  }

LABEL_16:
  v23 = (v16 + 8 * v11);
  v24 = *v23;
  v125[0] = mlir::TensorType::getElementType(&v121);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v125);
  v26 = IntOrFloatBitWidth;
  if (IntOrFloatBitWidth == 8 && v24 != 256 || IntOrFloatBitWidth == 6 && v24 != 64 || IntOrFloatBitWidth == 4 && v24 != 16 || IntOrFloatBitWidth == 3 && v24 != 8 || IntOrFloatBitWidth == 2 && v24 != 4 || IntOrFloatBitWidth == 1 && v24 != 2)
  {
    v119 = 257;
    mlir::OpState::emitError(this, v118, v125);
    if (v125[0])
    {
      LODWORD(v122) = 3;
      v123 = "Provided NUM_PALETTES ";
      v124 = 22;
      v27 = &v122;
      v28 = v127;
      if (v128 >= v129)
      {
        if (v127 <= &v122 && v127 + 24 * v128 > &v122)
        {
          v110 = &v122 - v127;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v130, v128 + 1, 24);
          v28 = v127;
          v27 = (v127 + v110);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v130, v128 + 1, 24);
          v27 = &v122;
          v28 = v127;
        }
      }

      v29 = &v28[24 * v128];
      v30 = *v27;
      *(v29 + 2) = v27[2];
      *v29 = v30;
      v31 = ++v128;
      if (v125[0])
      {
        LODWORD(v122) = 2;
        v123 = v24;
        v32 = &v122;
        v33 = v127;
        if (v31 >= v129)
        {
          if (v127 <= &v122 && v127 + 24 * v31 > &v122)
          {
            v111 = &v122 - v127;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v130, v31 + 1, 24);
            v33 = v127;
            v32 = (v127 + v111);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v130, v31 + 1, 24);
            v32 = &v122;
            v33 = v127;
          }
        }

        v34 = &v33[24 * v128];
        v35 = *v32;
        *(v34 + 2) = v32[2];
        *v34 = v35;
        v36 = ++v128;
        if (v125[0])
        {
          LODWORD(v122) = 3;
          v123 = " does not match the indices uint dtype with bitwidth ";
          v124 = 53;
          v37 = &v122;
          v38 = v127;
          if (v36 >= v129)
          {
            if (v127 <= &v122 && v127 + 24 * v36 > &v122)
            {
              v113 = &v122 - v127;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v130, v36 + 1, 24);
              v38 = v127;
              v37 = (v127 + v113);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v130, v36 + 1, 24);
              v37 = &v122;
              v38 = v127;
            }
          }

          v39 = &v38[24 * v128];
          v40 = *v37;
          *(v39 + 2) = v37[2];
          *v39 = v40;
          v41 = ++v128;
          if (v125[0])
          {
            LODWORD(v122) = 5;
            v123 = v26;
            v42 = &v122;
            v43 = v127;
            if (v41 >= v129)
            {
              if (v127 <= &v122 && v127 + 24 * v41 > &v122)
              {
                v114 = &v122 - v127;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v130, v41 + 1, 24);
                v43 = v127;
                v42 = (v127 + v114);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v130, v41 + 1, 24);
                v42 = &v122;
                v43 = v127;
              }
            }

            v44 = &v43[24 * v128];
            v45 = *v42;
            *(v44 + 2) = v42[2];
            *v44 = v45;
            ++v128;
          }
        }
      }
    }

    v46 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
    if (v125[0])
    {
      mlir::InFlightDiagnostic::report(v125);
    }

    if (v136 != 1)
    {
      return v46;
    }

    if (v135 != &v136)
    {
      free(v135);
    }

    v47 = v133;
    if (v133)
    {
      v48 = v134;
      v49 = v133;
      if (v134 != v133)
      {
        do
        {
          v48 = sub_100052FFC(v48 - 1);
        }

        while (v48 != v47);
        v49 = v133;
      }

      v134 = v47;
      operator delete(v49);
    }

    v50 = v131;
    if (!v131)
    {
      goto LABEL_131;
    }

    v51 = v132;
    v52 = v131;
    if (v132 == v131)
    {
      goto LABEL_130;
    }

    do
    {
      v62 = *--v51;
      *v51 = 0;
      if (v62)
      {
        operator delete[]();
      }
    }

    while (v51 != v50);
    goto LABEL_129;
  }

  v91 = v23[1];
  sub_1001F2F84(*(*(*this + 9) + 88), v125);
  if (v130[24])
  {
    v92 = *v125[0];
    if (v125[0] != &v126)
    {
      free(v125[0]);
    }

    v116 = v92;
    if (v91 >= 2 && (v11 <= v92 || v92 < -v11))
    {
      v119 = 257;
      mlir::OpState::emitError(this, v118, v125);
      sub_100081F48(v125, "vector_axis must be within range (-indices_rank - 1, indices_rank) (exclusive). Provided axis: ");
      sub_1001F291C(v104, &v116);
      sub_100081F48(v105, " for indices with rank: ");
      sub_1001F15F8(v106, &v117);
    }

    else
    {
      if (*(*this + 9))
      {
        v93 = *this - 16;
      }

      else
      {
        v93 = 0;
      }

      v122 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v93, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::TensorType::getShape(&v122);
      if (v94 == v11)
      {
        v95 = mlir::TensorType::getShape(&v122);
        if (!v15)
        {
          return 1;
        }

        if (v92 >= 0)
        {
          v96 = 0;
        }

        else
        {
          v96 = v11;
        }

        for (i = v96 + v92; ; --i)
        {
          v98 = i || v91 <= 1;
          v99 = v98 ? 1 : v91;
          v100 = *v13++;
          v101 = v100 * v99;
          v102 = *v95++;
          if (v101 != v102)
          {
            break;
          }

          if (!--v15)
          {
            return 1;
          }
        }

        v119 = 257;
        mlir::OpState::emitError(this, v118, v125);
        sub_100081F48(v125, "The output dimension does not match the indices' dimension with vector size over vector_axis");
      }

      else
      {
        v119 = 257;
        mlir::OpState::emitError(this, v118, v125);
        sub_100081F48(v125, "output must have the same rank as the input indices");
      }
    }

    v46 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v103);
    sub_100059A74(v125);
    return v46;
  }

  v115 = sub_10024F430();
  return mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::verify(v115);
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::verify(mlir::Operation **this)
{
  v2 = *(*this + 9);
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v59 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v60 = v3;
  if (!mlir::TensorType::hasRank(&v60))
  {
    goto LABEL_17;
  }

  Shape = mlir::RankedTensorType::getShape(&v60);
  if (!v5)
  {
LABEL_6:
    if (!mlir::TensorType::hasRank(&v59))
    {
LABEL_36:
      v58 = 257;
      mlir::OpState::emitError(this, v57, v64);
      if (v64[0])
      {
        v61 = 3;
        v62 = "mask shape is required to be static";
        v63 = 35;
        v34 = &v61;
        v35 = v65;
        if (v66 >= v67)
        {
          if (v65 <= &v61 && v65 + 24 * v66 > &v61)
          {
            v55 = &v61 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v35 = v65;
            v34 = (v65 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v34 = &v61;
            v35 = v65;
          }
        }

        v36 = &v35[24 * v66];
        v37 = *v34;
        *(v36 + 2) = *(v34 + 2);
        *v36 = v37;
        ++v66;
      }

      v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
      if (v64[0])
      {
        mlir::InFlightDiagnostic::report(v64);
      }

      if (v74 != 1)
      {
        return v26;
      }

      if (v73 != &v74)
      {
        free(v73);
      }

      v38 = __p;
      if (__p)
      {
        v39 = v72;
        v40 = __p;
        if (v72 != __p)
        {
          do
          {
            v39 = sub_100052FFC(v39 - 1);
          }

          while (v39 != v38);
          v40 = __p;
        }

        v72 = v38;
        operator delete(v40);
      }

      v30 = v69;
      if (!v69)
      {
        goto LABEL_80;
      }

      v41 = v70;
      v32 = v69;
      if (v70 == v69)
      {
        goto LABEL_79;
      }

      do
      {
        v42 = *--v41;
        *v41 = 0;
        if (v42)
        {
          operator delete[]();
        }
      }

      while (v41 != v30);
      goto LABEL_78;
    }

    v7 = mlir::TensorType::getShape(&v59);
    if (v8)
    {
      v9 = 8 * v8;
      while (*v7 != 0x8000000000000000)
      {
        ++v7;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_36;
    }

LABEL_11:
    v10 = mlir::RankedTensorType::getShape(&v60);
    v11 = mlir::TensorType::getShape(&v59);
    if (v12)
    {
      v13 = (v12 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v13)
      {
        v14 = v13 + 1;
        v15 = (v13 + 1) & 0x3FFFFFFFFFFFFFFELL;
        v16 = (v11 + 8 * v15);
        v17 = (v11 + 8);
        v18 = 1;
        v19 = v15;
        v20 = 1;
        do
        {
          v18 *= *(v17 - 1);
          v20 *= *v17;
          v17 += 2;
          v19 -= 2;
        }

        while (v19);
        v21 = v20 * v18;
        if (v14 == v15)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v21 = 1;
        v16 = v11;
      }

      do
      {
        v43 = *v16++;
        v21 *= v43;
      }

      while (v16 != (v11 + 8 * v12));
    }

    else
    {
      v21 = 1;
    }

LABEL_58:
    if (*v10 <= v21)
    {
      return 1;
    }

    v58 = 257;
    mlir::OpState::emitError(this, v57, v64);
    if (v64[0])
    {
      v61 = 3;
      v62 = "The number of elements in nonzero_data should not exceed the number of elements in mask";
      v63 = 87;
      v44 = &v61;
      v45 = v65;
      if (v66 >= v67)
      {
        if (v65 <= &v61 && v65 + 24 * v66 > &v61)
        {
          v56 = &v61 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v45 = v65;
          v44 = (v65 + v56);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v44 = &v61;
          v45 = v65;
        }
      }

      v46 = &v45[24 * v66];
      v47 = *v44;
      *(v46 + 2) = *(v44 + 2);
      *v46 = v47;
      ++v66;
    }

    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
    if (v64[0])
    {
      mlir::InFlightDiagnostic::report(v64);
    }

    if (v74 != 1)
    {
      return v26;
    }

    if (v73 != &v74)
    {
      free(v73);
    }

    v48 = __p;
    if (__p)
    {
      v49 = v72;
      v50 = __p;
      if (v72 != __p)
      {
        do
        {
          v49 = sub_100052FFC(v49 - 1);
        }

        while (v49 != v48);
        v50 = __p;
      }

      v72 = v48;
      operator delete(v50);
    }

    v30 = v69;
    if (!v69)
    {
      goto LABEL_80;
    }

    v51 = v70;
    v32 = v69;
    if (v70 == v69)
    {
LABEL_79:
      v70 = v30;
      operator delete(v32);
LABEL_80:
      if (v65 != v68)
      {
        free(v65);
      }

      return v26;
    }

    do
    {
      v52 = *--v51;
      *v51 = 0;
      if (v52)
      {
        operator delete[]();
      }
    }

    while (v51 != v30);
LABEL_78:
    v32 = v69;
    goto LABEL_79;
  }

  v6 = 8 * v5;
  while (*Shape != 0x8000000000000000)
  {
    ++Shape;
    v6 -= 8;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

LABEL_17:
  v58 = 257;
  mlir::OpState::emitError(this, v57, v64);
  if (v64[0])
  {
    v61 = 3;
    v62 = "nonzero_data shape is required to be static";
    v63 = 43;
    v22 = &v61;
    v23 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &v61 && v65 + 24 * v66 > &v61)
      {
        v54 = &v61 - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v23 = v65;
        v22 = (v65 + v54);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v22 = &v61;
        v23 = v65;
      }
    }

    v24 = &v23[24 * v66];
    v25 = *v22;
    *(v24 + 2) = *(v22 + 2);
    *v24 = v25;
    ++v66;
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
  if (v64[0])
  {
    mlir::InFlightDiagnostic::report(v64);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v72;
      v29 = __p;
      if (v72 != __p)
      {
        do
        {
          v28 = sub_100052FFC(v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v72 = v27;
      operator delete(v29);
    }

    v30 = v69;
    if (!v69)
    {
      goto LABEL_80;
    }

    v31 = v70;
    v32 = v69;
    if (v70 == v69)
    {
      goto LABEL_79;
    }

    do
    {
      v33 = *--v31;
      *v31 = 0;
      if (v33)
      {
        operator delete[]();
      }
    }

    while (v31 != v30);
    goto LABEL_78;
  }

  return v26;
}

void mlir::ODIE::Compiler::CoreMLAX::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  mlir::OperationState::addOperands(a2, &v7, 1uLL);
  v6 = *(a2 + 72);
  if (v6 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v6 + 1, 8);
    LODWORD(v6) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v6) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = sub_10026D02C(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return sub_10026D02C(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t sub_10026D02C(mlir::Operation *this, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v58 = a2;
  Encoding = mlir::RankedTensorType::getEncoding(&v58);
  if (!Encoding || *(*Encoding + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    v37 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? a2 : 0;
    v57 = v37;
    v38 = mlir::RankedTensorType::getEncoding(&v57);
    if (!v38 || *(*v38 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
    {
      goto LABEL_2;
    }
  }

  v39 = *a2;
  {
    sub_100289E80();
    v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v41 = *(v39 + 8);
    v42 = *(v39 + 16);
    if (v42)
    {
      goto LABEL_36;
    }

LABEL_62:
    v49 = 0;
    goto LABEL_64;
  }

  v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v41 = *(v39 + 8);
  v42 = *(v39 + 16);
  if (!v42)
  {
    goto LABEL_62;
  }

LABEL_36:
  v43 = v41;
  v44 = v42;
  do
  {
    v45 = v44 >> 1;
    v46 = &v43[2 * (v44 >> 1)];
    v48 = *v46;
    v47 = v46 + 2;
    v44 += ~(v44 >> 1);
    if (v48 < v40)
    {
      v43 = v47;
    }

    else
    {
      v44 = v45;
    }
  }

  while (v44);
  if (v43 == &v41[2 * v42] || *v43 != v40)
  {
    goto LABEL_62;
  }

  v49 = v43[1];
LABEL_64:
  v61[0] = a2;
  v61[1] = v49;
  v55[0] = mlir::ShapedType::getElementType(v61);
  if (mlir::Type::isF16(v55) || mlir::Type::isF32(v55) || mlir::Type::isSignedInteger(v55, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 32))
  {
    return 1;
  }

LABEL_2:
  v56 = 261;
  v55[0] = a3;
  v55[1] = a4;
  mlir::Operation::emitOpError(v61, this, v55);
  if (v61[0])
  {
    LODWORD(v58) = 3;
    v59 = " #";
    v60 = 2;
    v10 = &v58;
    v11 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v51 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v11 = v62;
        v10 = (v62 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v10 = &v58;
        v11 = v62;
      }
    }

    v12 = &v11[24 * v63];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v63;
    if (v61[0])
    {
      LODWORD(v58) = 5;
      v59 = a5;
      v15 = &v58;
      v16 = v62;
      if (v14 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v14 > &v58)
        {
          v52 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v14 + 1, 24);
          v16 = v62;
          v15 = (v62 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v14 + 1, 24);
          v15 = &v58;
          v16 = v62;
        }
      }

      v17 = &v16[24 * v63];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v63;
      if (v61[0])
      {
        LODWORD(v58) = 3;
        v59 = " must be ranked tensor of 16-bit float or 32-bit float or 8-bit signed integer or 32-bit signed integer values, but got ";
        v60 = 120;
        v20 = &v58;
        v21 = v62;
        if (v19 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v19 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v19 + 1, 24);
            v21 = v62;
            v20 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v19 + 1, 24);
            v20 = &v58;
            v21 = v62;
          }
        }

        v22 = &v21[24 * v63];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v63;
        if (v61[0])
        {
          v24 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v25 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v25 = v62;
              v24 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v24 = &v58;
              v25 = v62;
            }
          }

          v26 = &v25[24 * v63];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v63;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
  if (v61[0])
  {
    mlir::InFlightDiagnostic::report(v61);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v69;
      v31 = __p;
      if (v69 != __p)
      {
        do
        {
          v30 = sub_100052FFC(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v69 = v29;
      operator delete(v31);
    }

    v32 = v66;
    if (v66)
    {
      v33 = v67;
      v34 = v66;
      if (v67 != v66)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v66;
      }

      v67 = v32;
      operator delete(v34);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v28;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CastOp::parse(mlir::ODIE::Compiler::CoreMLAX::CastOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_10023B73C(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001D4484(a2, Results, v8);
          v9 = sub_10023B994(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_10026DCD4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_10026E2E8(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_10026DCD4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_10026E2E8(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v29 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30[0] = sub_10020BDF0(&v29);
  v30[1] = v4;
  Shape = mlir::ShapedType::getShape(v30);
  v7 = v6;
  v28 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v26[0] = sub_10020BDF0(&v28);
  v26[1] = v8;
  v9 = mlir::ShapedType::getShape(v26);
  if (v7 == v10 && !memcmp(Shape, v9, 8 * v7))
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
    if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      return 1;
    }

    v26[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v27 = 259;
    mlir::OpState::emitOpError(v30, this, v26);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v12 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v12;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v12;
      }

      v21 = __p;
      if (__p)
      {
        v22 = v36;
        v23 = __p;
        if (v36 != __p)
        {
          do
          {
            v22 = sub_100052FFC(v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v36 = v21;
        operator delete(v23);
        result = v12;
      }

      v16 = v33;
      if (!v33)
      {
        goto LABEL_48;
      }

      v24 = v34;
      v18 = v33;
      if (v34 == v33)
      {
        goto LABEL_47;
      }

      do
      {
        v25 = *--v24;
        *v24 = 0;
        if (v25)
        {
          operator delete[]();
        }
      }

      while (v24 != v16);
      goto LABEL_46;
    }
  }

  else
  {
    v26[0] = "failed to verify that Result 0 and operand 0 must have the same shape.";
    v27 = 259;
    mlir::OpState::emitOpError(v30, this, v26);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v12 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v12;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v12;
      }

      v13 = __p;
      if (__p)
      {
        v14 = v36;
        v15 = __p;
        if (v36 != __p)
        {
          do
          {
            v14 = sub_100052FFC(v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v36 = v13;
        operator delete(v15);
        result = v12;
      }

      v16 = v33;
      if (!v33)
      {
        goto LABEL_48;
      }

      v17 = v34;
      v18 = v33;
      if (v34 == v33)
      {
LABEL_47:
        v34 = v16;
        operator delete(v18);
        result = v12;
LABEL_48:
        if (v31 != &v32)
        {
          free(v31);
          return v12;
        }

        return result;
      }

      do
      {
        v19 = *--v17;
        *v17 = 0;
        if (v19)
        {
          operator delete[]();
        }
      }

      while (v17 != v16);
LABEL_46:
      v18 = v33;
      goto LABEL_47;
    }
  }

  return result;
}

BOOL sub_10026DCD4(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_34;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v58 = v7;
    sub_100289EC4();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v58 + 8);
    v15 = *(v58 + 16);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_20;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v7 + 8);
  v15 = *(v7 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_18;
  }

  v22 = v16[1];
LABEL_20:
  v64[0] = a2;
  v64[1] = v22;
  v59[0] = mlir::ShapedType::getElementType(v64);
  if (mlir::Type::isUnsignedInteger(v59, 4) || mlir::Type::isSignedInteger(v59, 4) || mlir::Type::isUnsignedInteger(v59, 8) || mlir::Type::isSignedInteger(v59, 8))
  {
    return 1;
  }

  v23 = *(*v59[0] + 136);
  v24 = v23 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
  if (v24 || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    return 1;
  }

  if (mlir::Type::isF16(v59))
  {
    return 1;
  }

  isF32 = mlir::Type::isF32(v59);
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (isF32)
  {
    return 1;
  }

LABEL_34:
  v60 = 261;
  v59[0] = a3;
  v59[1] = a4;
  mlir::Operation::emitOpError(v64, a1, v59);
  if (v64[0])
  {
    v61 = 3;
    v62 = " #";
    v63 = 2;
    v28 = &v61;
    v29 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &v61 && v65 + 24 * v66 > &v61)
      {
        v54 = &v61 - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v29 = v65;
        v28 = (v65 + v54);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v28 = &v61;
        v29 = v65;
      }
    }

    v30 = &v29[24 * v66];
    v31 = *v28;
    *(v30 + 2) = *(v28 + 2);
    *v30 = v31;
    v32 = ++v66;
    if (v64[0])
    {
      v61 = 5;
      v62 = a5;
      v33 = &v61;
      v34 = v65;
      if (v32 >= v67)
      {
        if (v65 <= &v61 && v65 + 24 * v32 > &v61)
        {
          v55 = &v61 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v32 + 1, 24);
          v34 = v65;
          v33 = (v65 + v55);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v32 + 1, 24);
          v33 = &v61;
          v34 = v65;
        }
      }

      v35 = &v34[24 * v66];
      v36 = *v33;
      *(v35 + 2) = *(v33 + 2);
      *v35 = v36;
      v37 = ++v66;
      if (v64[0])
      {
        v61 = 3;
        v62 = " must be tensor of 4-bit unsigned integer or 4-bit signed integer or 8-bit unsigned integer or 8-bit signed integer or f8E5M2 type or f8E4M3FN type or bfloat16 type or 16-bit float or 32-bit float values, but got ";
        v63 = 213;
        v38 = &v61;
        v39 = v65;
        if (v37 >= v67)
        {
          if (v65 <= &v61 && v65 + 24 * v37 > &v61)
          {
            v56 = &v61 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v37 + 1, 24);
            v39 = v65;
            v38 = (v65 + v56);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v37 + 1, 24);
            v38 = &v61;
            v39 = v65;
          }
        }

        v40 = &v39[24 * v66];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v66;
        if (v64[0])
        {
          v42 = &v61;
          mlir::DiagnosticArgument::DiagnosticArgument(&v61, a2);
          v43 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &v61 && v65 + 24 * v66 > &v61)
            {
              v57 = &v61 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v43 = v65;
              v42 = (v65 + v57);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v42 = &v61;
              v43 = v65;
            }
          }

          v44 = &v43[24 * v66];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v66;
        }
      }
    }
  }

  v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
  if (v64[0])
  {
    mlir::InFlightDiagnostic::report(v64);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v72;
      v48 = __p;
      if (v72 != __p)
      {
        do
        {
          v47 = sub_100052FFC(v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v72 = v46;
      operator delete(v48);
    }

    v49 = v69;
    if (v69)
    {
      v50 = v70;
      v51 = v69;
      if (v70 != v69)
      {
        do
        {
          v52 = *--v50;
          *v50 = 0;
          if (v52)
          {
            operator delete[]();
          }
        }

        while (v50 != v49);
        v51 = v69;
      }

      v70 = v49;
      operator delete(v51);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  return v27;
}

BOOL sub_10026E2E8(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_24;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v55 = v7;
    sub_100289EC4();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v55 + 8);
    v15 = *(v55 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v61[0] = a2;
  v61[1] = v22;
  v56[0] = mlir::ShapedType::getElementType(v61);
  if (*(*v56[0] + 136) == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    return 1;
  }

  if (mlir::Type::isF16(v56))
  {
    return 1;
  }

  isF32 = mlir::Type::isF32(v56);
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (isF32)
  {
    return 1;
  }

LABEL_24:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(v61, a1, v56);
  if (v61[0])
  {
    v58 = 3;
    v59 = " #";
    v60 = 2;
    v25 = &v58;
    v26 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v51 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v26 = v62;
        v25 = (v62 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v25 = &v58;
        v26 = v62;
      }
    }

    v27 = &v26[24 * v63];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    v29 = ++v63;
    if (v61[0])
    {
      v58 = 5;
      v59 = a5;
      v30 = &v58;
      v31 = v62;
      if (v29 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v29 > &v58)
        {
          v52 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v29 + 1, 24);
          v31 = v62;
          v30 = (v62 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v29 + 1, 24);
          v30 = &v58;
          v31 = v62;
        }
      }

      v32 = &v31[24 * v63];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v63;
      if (v61[0])
      {
        v58 = 3;
        v59 = " must be tensor of bfloat16 type or 16-bit float or 32-bit float values, but got ";
        v60 = 81;
        v35 = &v58;
        v36 = v62;
        if (v34 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v34 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v34 + 1, 24);
            v36 = v62;
            v35 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v34 + 1, 24);
            v35 = &v58;
            v36 = v62;
          }
        }

        v37 = &v36[24 * v63];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v63;
        if (v61[0])
        {
          v39 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v40 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v40 = v62;
              v39 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v39 = &v58;
              v40 = v62;
            }
          }

          v41 = &v40[24 * v63];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v63;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
  if (v61[0])
  {
    mlir::InFlightDiagnostic::report(v61);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v69;
      v45 = __p;
      if (v69 != __p)
      {
        do
        {
          v44 = sub_100052FFC(v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v69 = v43;
      operator delete(v45);
    }

    v46 = v66;
    if (v66)
    {
      v47 = v67;
      v48 = v66;
      if (v67 != v66)
      {
        do
        {
          v49 = *--v47;
          *v47 = 0;
          if (v49)
          {
            operator delete[]();
          }
        }

        while (v47 != v46);
        v48 = v66;
      }

      v67 = v46;
      operator delete(v48);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v24;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::parse(mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_10023B73C(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001D4484(a2, Results, v8);
          v9 = sub_10023B994(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = *v3;
  v5 = *(*v3 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v4 + 8);
      v9 = *(v4 + 16);
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_100289E80();
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v4 + 8);
      v9 = *(v4 + 16);
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    v10 = v8;
    v11 = v9;
    do
    {
      v12 = v11 >> 1;
      v13 = &v10[2 * (v11 >> 1)];
      v15 = *v13;
      v14 = v13 + 2;
      v11 += ~(v11 >> 1);
      if (v15 < v7)
      {
        v10 = v14;
      }

      else
      {
        v11 = v12;
      }
    }

    while (v11);
    if (v10 != &v8[2 * v9] && *v10 == v7)
    {
      v16 = v10[1];
      goto LABEL_20;
    }

LABEL_18:
    v16 = 0;
LABEL_20:
    v64[0] = v3;
    v64[1] = v16;
    v59[0] = mlir::ShapedType::getElementType(v64);
    if (mlir::Type::isUnsignedInteger(v59, 1) || mlir::Type::isUnsignedInteger(v59, 2) || mlir::Type::isUnsignedInteger(v59, 3) || mlir::Type::isUnsignedInteger(v59, 4) || mlir::Type::isUnsignedInteger(v59, 6) || mlir::Type::isUnsignedInteger(v59, 8))
    {
      goto LABEL_56;
    }
  }

  v60 = 261;
  v59[0] = "operand";
  v59[1] = 7;
  mlir::Operation::emitOpError(v64, v2, v59);
  if (v64[0])
  {
    v61 = 3;
    v62 = " #";
    v63 = 2;
    v17 = &v61;
    v18 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &v61 && v65 + 24 * v66 > &v61)
      {
        v55 = &v61 - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v18 = v65;
        v17 = (v65 + v55);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v17 = &v61;
        v18 = v65;
      }
    }

    v19 = &v18[24 * v66];
    v20 = *v17;
    *(v19 + 2) = *(v17 + 2);
    *v19 = v20;
    v21 = ++v66;
    if (v64[0])
    {
      v61 = 5;
      v62 = 0;
      v22 = &v61;
      v23 = v65;
      if (v21 >= v67)
      {
        if (v65 <= &v61 && v65 + 24 * v21 > &v61)
        {
          v56 = &v61 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v21 + 1, 24);
          v23 = v65;
          v22 = (v65 + v56);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v21 + 1, 24);
          v22 = &v61;
          v23 = v65;
        }
      }

      v24 = &v23[24 * v66];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
      v26 = ++v66;
      if (v64[0])
      {
        v61 = 3;
        v62 = " must be tensor of 1-bit unsigned integer or 2-bit unsigned integer or 3-bit unsigned integer or 4-bit unsigned integer or 6-bit unsigned integer or 8-bit unsigned integer values, but got ";
        v63 = 188;
        v27 = &v61;
        v28 = v65;
        if (v26 >= v67)
        {
          if (v65 <= &v61 && v65 + 24 * v26 > &v61)
          {
            v57 = &v61 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v26 + 1, 24);
            v28 = v65;
            v27 = (v65 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v26 + 1, 24);
            v27 = &v61;
            v28 = v65;
          }
        }

        v29 = &v28[24 * v66];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        ++v66;
        if (v64[0])
        {
          v31 = &v61;
          mlir::DiagnosticArgument::DiagnosticArgument(&v61, v3);
          v32 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &v61 && v65 + 24 * v66 > &v61)
            {
              v58 = &v61 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v32 = v65;
              v31 = (v65 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v31 = &v61;
              v32 = v65;
            }
          }

          v33 = &v32[24 * v66];
          v34 = *v31;
          *(v33 + 2) = *(v31 + 2);
          *v33 = v34;
          ++v66;
        }
      }
    }
  }

  v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
  if (v64[0])
  {
    mlir::InFlightDiagnostic::report(v64);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v72;
      v38 = __p;
      if (v72 != __p)
      {
        do
        {
          v37 = sub_100052FFC(v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v72 = v36;
      operator delete(v38);
    }

    v39 = v69;
    if (v69)
    {
      v40 = v70;
      v41 = v69;
      if (v70 != v69)
      {
        do
        {
          v42 = *--v40;
          *v40 = 0;
          if (v42)
          {
            operator delete[]();
          }
        }

        while (v40 != v39);
        v41 = v69;
      }

      v70 = v39;
      operator delete(v41);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  if (!v35)
  {
    return 0;
  }

LABEL_56:
  if (!sub_10026F2C0(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_10026F8B4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  v43 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v43, 0);
  if (!sub_10026F2C0(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
  {
    return 1;
  }

  v59[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
  v60 = 259;
  mlir::OpState::emitOpError(v64, this, v59);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
  v47 = result;
  if (v64[0])
  {
    mlir::InFlightDiagnostic::report(v64);
    result = v47;
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
      result = v47;
    }

    v48 = __p;
    if (__p)
    {
      v49 = v72;
      v50 = __p;
      if (v72 != __p)
      {
        do
        {
          v49 = sub_100052FFC(v49 - 1);
        }

        while (v49 != v48);
        v50 = __p;
      }

      v72 = v48;
      operator delete(v50);
      result = v47;
    }

    v51 = v69;
    if (v69)
    {
      v52 = v70;
      v53 = v69;
      if (v70 != v69)
      {
        do
        {
          v54 = *--v52;
          *v52 = 0;
          if (v54)
          {
            operator delete[]();
          }
        }

        while (v52 != v51);
        v53 = v69;
      }

      v70 = v51;
      operator delete(v53);
      result = v47;
    }

    if (v65 != v68)
    {
      free(v65);
      return v47;
    }
  }

  return result;
}

BOOL sub_10026F2C0(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_32;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v58 = v7;
    sub_100289EC4();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v58 + 8);
    v15 = *(v58 + 16);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_20;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v7 + 8);
  v15 = *(v7 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_18;
  }

  v22 = v16[1];
LABEL_20:
  v64[0] = a2;
  v64[1] = v22;
  v59[0] = mlir::ShapedType::getElementType(v64);
  if (mlir::Type::isUnsignedInteger(v59, 8) || mlir::Type::isSignedInteger(v59, 8))
  {
    return 1;
  }

  v23 = *(*v59[0] + 136);
  v24 = v23 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
  if (v24 || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    return 1;
  }

  if (mlir::Type::isF16(v59))
  {
    return 1;
  }

  isF32 = mlir::Type::isF32(v59);
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (isF32)
  {
    return 1;
  }

LABEL_32:
  v60 = 261;
  v59[0] = a3;
  v59[1] = a4;
  mlir::Operation::emitOpError(v64, a1, v59);
  if (v64[0])
  {
    v61 = 3;
    v62 = " #";
    v63 = 2;
    v28 = &v61;
    v29 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &v61 && v65 + 24 * v66 > &v61)
      {
        v54 = &v61 - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v29 = v65;
        v28 = (v65 + v54);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v28 = &v61;
        v29 = v65;
      }
    }

    v30 = &v29[24 * v66];
    v31 = *v28;
    *(v30 + 2) = *(v28 + 2);
    *v30 = v31;
    v32 = ++v66;
    if (v64[0])
    {
      v61 = 5;
      v62 = a5;
      v33 = &v61;
      v34 = v65;
      if (v32 >= v67)
      {
        if (v65 <= &v61 && v65 + 24 * v32 > &v61)
        {
          v55 = &v61 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v32 + 1, 24);
          v34 = v65;
          v33 = (v65 + v55);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v32 + 1, 24);
          v33 = &v61;
          v34 = v65;
        }
      }

      v35 = &v34[24 * v66];
      v36 = *v33;
      *(v35 + 2) = *(v33 + 2);
      *v35 = v36;
      v37 = ++v66;
      if (v64[0])
      {
        v61 = 3;
        v62 = " must be tensor of 8-bit unsigned integer or 8-bit signed integer or f8E5M2 type or f8E4M3FN type or bfloat16 type or 16-bit float or 32-bit float values, but got ";
        v63 = 163;
        v38 = &v61;
        v39 = v65;
        if (v37 >= v67)
        {
          if (v65 <= &v61 && v65 + 24 * v37 > &v61)
          {
            v56 = &v61 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v37 + 1, 24);
            v39 = v65;
            v38 = (v65 + v56);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v37 + 1, 24);
            v38 = &v61;
            v39 = v65;
          }
        }

        v40 = &v39[24 * v66];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v66;
        if (v64[0])
        {
          v42 = &v61;
          mlir::DiagnosticArgument::DiagnosticArgument(&v61, a2);
          v43 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &v61 && v65 + 24 * v66 > &v61)
            {
              v57 = &v61 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v43 = v65;
              v42 = (v65 + v57);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v42 = &v61;
              v43 = v65;
            }
          }

          v44 = &v43[24 * v66];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v66;
        }
      }
    }
  }

  v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
  if (v64[0])
  {
    mlir::InFlightDiagnostic::report(v64);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v72;
      v48 = __p;
      if (v72 != __p)
      {
        do
        {
          v47 = sub_100052FFC(v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v72 = v46;
      operator delete(v48);
    }

    v49 = v69;
    if (v69)
    {
      v50 = v70;
      v51 = v69;
      if (v70 != v69)
      {
        do
        {
          v52 = *--v50;
          *v50 = 0;
          if (v52)
          {
            operator delete[]();
          }
        }

        while (v50 != v49);
        v51 = v69;
      }

      v70 = v49;
      operator delete(v51);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  return v27;
}

BOOL sub_10026F8B4(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_22;
  }

  v12 = a1;
  {
    v55 = v9;
    sub_100289EC4();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v55 + 8);
    v15 = *(v55 + 16);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_20;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v9 + 8);
  v15 = *(v9 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_18;
  }

  v22 = v16[1];
LABEL_20:
  v61[0] = a2;
  v61[1] = v22;
  v56[0] = mlir::ShapedType::getElementType(v61);
  isSignedInteger = mlir::Type::isSignedInteger(v56, 32);
  a1 = v12;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_22:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(v61, a1, v56);
  if (v61[0])
  {
    v58 = 3;
    v59 = " #";
    v60 = 2;
    v25 = &v58;
    v26 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v51 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v26 = v62;
        v25 = (v62 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v25 = &v58;
        v26 = v62;
      }
    }

    v27 = &v26[24 * v63];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    v29 = ++v63;
    if (v61[0])
    {
      v58 = 5;
      v59 = a5;
      v30 = &v58;
      v31 = v62;
      if (v29 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v29 > &v58)
        {
          v52 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v29 + 1, 24);
          v31 = v62;
          v30 = (v62 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v29 + 1, 24);
          v30 = &v58;
          v31 = v62;
        }
      }

      v32 = &v31[24 * v63];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v63;
      if (v61[0])
      {
        v58 = 3;
        v59 = " must be tensor of 32-bit signed integer values, but got ";
        v60 = 57;
        v35 = &v58;
        v36 = v62;
        if (v34 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v34 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v34 + 1, 24);
            v36 = v62;
            v35 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v34 + 1, 24);
            v35 = &v58;
            v36 = v62;
          }
        }

        v37 = &v36[24 * v63];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v63;
        if (v61[0])
        {
          v39 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v40 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v40 = v62;
              v39 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v39 = &v58;
              v40 = v62;
            }
          }

          v41 = &v40[24 * v63];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v63;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
  if (v61[0])
  {
    mlir::InFlightDiagnostic::report(v61);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v69;
      v45 = __p;
      if (v69 != __p)
      {
        do
        {
          v44 = sub_100052FFC(v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v69 = v43;
      operator delete(v45);
    }

    v46 = v66;
    if (v66)
    {
      v47 = v67;
      v48 = v66;
      if (v67 != v66)
      {
        do
        {
          v49 = *--v47;
          *v47 = 0;
          if (v49)
          {
            operator delete[]();
          }
        }

        while (v47 != v46);
        v48 = v66;
      }

      v67 = v46;
      operator delete(v48);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v24;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::parse(mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_10023B73C(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001D4484(a2, Results, v8);
          v9 = sub_10023B994(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    {
      v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v32 = *(v4 + 8);
      v33 = *(v4 + 16);
      if (!v33)
      {
        goto LABEL_70;
      }
    }

    else
    {
      sub_100289E80();
      v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v32 = *(v4 + 8);
      v33 = *(v4 + 16);
      if (!v33)
      {
        goto LABEL_70;
      }
    }

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
    if (v34 != &v32[2 * v33] && *v34 == v31)
    {
      v54 = v34[1];
      v148 = v3;
      v149 = v54;
      if (!mlir::ShapedType::hasRank(&v148))
      {
        goto LABEL_2;
      }

LABEL_73:
      v55 = *v3;
      {
        v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v57 = *(v55 + 8);
        v58 = *(v55 + 16);
        if (!v58)
        {
          goto LABEL_179;
        }
      }

      else
      {
        sub_100289E80();
        v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v57 = *(v55 + 8);
        v58 = *(v55 + 16);
        if (!v58)
        {
          goto LABEL_179;
        }
      }

      v59 = v57;
      v60 = v58;
      do
      {
        v61 = v60 >> 1;
        v62 = &v59[2 * (v60 >> 1)];
        v64 = *v62;
        v63 = v62 + 2;
        v60 += ~(v60 >> 1);
        if (v64 < v56)
        {
          v59 = v63;
        }

        else
        {
          v60 = v61;
        }
      }

      while (v60);
      if (v59 != &v57[2 * v58] && *v59 == v56)
      {
        v117 = v59[1];
        v142 = v3;
        v143 = v117;
        mlir::ShapedType::getShape(&v142);
        if (v118 != 1)
        {
          goto LABEL_2;
        }

LABEL_182:
        v119 = *v3;
        {
          v120 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v121 = *(v119 + 8);
          v122 = *(v119 + 16);
          if (!v122)
          {
            goto LABEL_195;
          }
        }

        else
        {
          sub_100289E80();
          v120 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v121 = *(v119 + 8);
          v122 = *(v119 + 16);
          if (!v122)
          {
            goto LABEL_195;
          }
        }

        v123 = v121;
        v124 = v122;
        do
        {
          v125 = v124 >> 1;
          v126 = &v123[2 * (v124 >> 1)];
          v128 = *v126;
          v127 = v126 + 2;
          v124 += ~(v124 >> 1);
          if (v128 < v120)
          {
            v123 = v127;
          }

          else
          {
            v124 = v125;
          }
        }

        while (v124);
        if (v123 != &v121[2 * v122] && *v123 == v120)
        {
          v130 = v123[1];
LABEL_197:
          v145 = v3;
          v146 = v130;
          ElementType = mlir::ShapedType::getElementType(&v145);
          if (mlir::Type::isUnsignedInteger(&ElementType, 4) || mlir::Type::isSignedInteger(&ElementType, 4) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 8))
          {
            goto LABEL_41;
          }

          v131 = *(*ElementType + 136);
          v132 = v131 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v131 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
          v133 = v132 || v131 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
          if (v133 || mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType))
          {
            goto LABEL_41;
          }

          goto LABEL_2;
        }

LABEL_195:
        v130 = 0;
        goto LABEL_197;
      }

LABEL_179:
      v142 = v3;
      v143 = 0;
      mlir::ShapedType::getShape(&v142);
      if (v116 != 1)
      {
        goto LABEL_2;
      }

      goto LABEL_182;
    }

LABEL_70:
    v148 = v3;
    v149 = 0;
    if (!mlir::ShapedType::hasRank(&v148))
    {
      goto LABEL_2;
    }

    goto LABEL_73;
  }

LABEL_2:
  v144 = 261;
  v142 = "operand";
  v143 = 7;
  mlir::Operation::emitOpError(&v148, v2, &v142);
  if (v148)
  {
    LODWORD(v145) = 3;
    v146 = " #";
    v147 = 2;
    v5 = &v145;
    v6 = v150;
    if (v151 >= v152)
    {
      if (v150 <= &v145 && v150 + 24 * v151 > &v145)
      {
        v129 = &v145 - v150;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
        v6 = v150;
        v5 = v150 + v129;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
        v5 = &v145;
        v6 = v150;
      }
    }

    v7 = &v6[24 * v151];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    v9 = ++v151;
    if (v148)
    {
      LODWORD(v145) = 5;
      v146 = 0;
      v10 = &v145;
      v11 = v150;
      if (v9 >= v152)
      {
        if (v150 <= &v145 && v150 + 24 * v9 > &v145)
        {
          v134 = &v145 - v150;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v9 + 1, 24);
          v11 = v150;
          v10 = v150 + v134;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v9 + 1, 24);
          v10 = &v145;
          v11 = v150;
        }
      }

      v12 = &v11[24 * v151];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      v14 = ++v151;
      if (v148)
      {
        LODWORD(v145) = 3;
        v146 = " must be 1D tensor of 4-bit unsigned integer or 4-bit signed integer or 8-bit unsigned integer or 8-bit signed integer or f8E5M2 type or f8E4M3FN type or bfloat16 type or 16-bit float or 32-bit float values, but got ";
        v147 = 216;
        v15 = &v145;
        v16 = v150;
        if (v14 >= v152)
        {
          if (v150 <= &v145 && v150 + 24 * v14 > &v145)
          {
            v136 = &v145 - v150;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v14 + 1, 24);
            v16 = v150;
            v15 = v150 + v136;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v14 + 1, 24);
            v15 = &v145;
            v16 = v150;
          }
        }

        v17 = &v16[24 * v151];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        ++v151;
        if (v148)
        {
          v19 = &v145;
          mlir::DiagnosticArgument::DiagnosticArgument(&v145, v3);
          v20 = v150;
          if (v151 >= v152)
          {
            if (v150 <= &v145 && v150 + 24 * v151 > &v145)
            {
              v138 = &v145 - v150;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v20 = v150;
              v19 = v150 + v138;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v19 = &v145;
              v20 = v150;
            }
          }

          v21 = &v20[24 * v151];
          v22 = *v19;
          *(v21 + 2) = *(v19 + 2);
          *v21 = v22;
          ++v151;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
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

    v24 = __p;
    if (__p)
    {
      v25 = v157;
      v26 = __p;
      if (v157 != __p)
      {
        do
        {
          v25 = sub_100052FFC(v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v157 = v24;
      operator delete(v26);
    }

    v27 = v154;
    if (v154)
    {
      v28 = v155;
      v29 = v154;
      if (v155 != v154)
      {
        do
        {
          v30 = *--v28;
          *v28 = 0;
          if (v30)
          {
            operator delete[]();
          }
        }

        while (v28 != v27);
        v29 = v154;
      }

      v155 = v27;
      operator delete(v29);
    }

    if (v150 != v153)
    {
      free(v150);
    }
  }

  if (!v23)
  {
    return 0;
  }

LABEL_41:
  v40 = *this;
  v41 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v42 = *v41;
  v43 = *(*v41 + 136);
  if (v43 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v43 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v46 = *(v42 + 8);
      v47 = *(v42 + 16);
      if (!v47)
      {
        goto LABEL_85;
      }
    }

    else
    {
      sub_100289E80();
      v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v46 = *(v42 + 8);
      v47 = *(v42 + 16);
      if (!v47)
      {
        goto LABEL_85;
      }
    }

    v48 = v46;
    v49 = v47;
    do
    {
      v50 = v49 >> 1;
      v51 = &v48[2 * (v49 >> 1)];
      v53 = *v51;
      v52 = v51 + 2;
      v49 += ~(v49 >> 1);
      if (v53 < v45)
      {
        v48 = v52;
      }

      else
      {
        v49 = v50;
      }
    }

    while (v49);
    if (v48 != &v46[2 * v47] && *v48 == v45)
    {
      v65 = v48[1];
LABEL_87:
      v148 = v41;
      v149 = v65;
      v142 = mlir::ShapedType::getElementType(&v148);
      if (mlir::Type::isUnsignedInteger(&v142, 1))
      {
        goto LABEL_118;
      }

      goto LABEL_88;
    }

LABEL_85:
    v65 = 0;
    goto LABEL_87;
  }

LABEL_88:
  v144 = 261;
  v142 = "operand";
  v143 = 7;
  mlir::Operation::emitOpError(&v148, v40, &v142);
  if (v148)
  {
    LODWORD(v145) = 3;
    v146 = " #";
    v147 = 2;
    v66 = &v145;
    v67 = v150;
    if (v151 >= v152)
    {
      if (v150 <= &v145 && v150 + 24 * v151 > &v145)
      {
        v135 = &v145 - v150;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
        v67 = v150;
        v66 = v150 + v135;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
        v66 = &v145;
        v67 = v150;
      }
    }

    v68 = &v67[24 * v151];
    v69 = *v66;
    *(v68 + 2) = *(v66 + 2);
    *v68 = v69;
    v70 = ++v151;
    if (v148)
    {
      LODWORD(v145) = 5;
      v146 = 1;
      v71 = &v145;
      v72 = v150;
      if (v70 >= v152)
      {
        if (v150 <= &v145 && v150 + 24 * v70 > &v145)
        {
          v137 = &v145 - v150;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v70 + 1, 24);
          v72 = v150;
          v71 = v150 + v137;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v70 + 1, 24);
          v71 = &v145;
          v72 = v150;
        }
      }

      v73 = &v72[24 * v151];
      v74 = *v71;
      *(v73 + 2) = *(v71 + 2);
      *v73 = v74;
      v75 = ++v151;
      if (v148)
      {
        LODWORD(v145) = 3;
        v146 = " must be tensor of 1-bit unsigned integer values, but got ";
        v147 = 58;
        v76 = &v145;
        v77 = v150;
        if (v75 >= v152)
        {
          if (v150 <= &v145 && v150 + 24 * v75 > &v145)
          {
            v139 = &v145 - v150;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v75 + 1, 24);
            v77 = v150;
            v76 = v150 + v139;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v75 + 1, 24);
            v76 = &v145;
            v77 = v150;
          }
        }

        v78 = &v77[24 * v151];
        v79 = *v76;
        *(v78 + 2) = *(v76 + 2);
        *v78 = v79;
        ++v151;
        if (v148)
        {
          v80 = &v145;
          mlir::DiagnosticArgument::DiagnosticArgument(&v145, v41);
          v81 = v150;
          if (v151 >= v152)
          {
            if (v150 <= &v145 && v150 + 24 * v151 > &v145)
            {
              v140 = &v145 - v150;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v81 = v150;
              v80 = v150 + v140;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v80 = &v145;
              v81 = v150;
            }
          }

          v82 = &v81[24 * v151];
          v83 = *v80;
          *(v82 + 2) = *(v80 + 2);
          *v82 = v83;
          ++v151;
        }
      }
    }
  }

  v84 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
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

    v85 = __p;
    if (__p)
    {
      v86 = v157;
      v87 = __p;
      if (v157 != __p)
      {
        do
        {
          v86 = sub_100052FFC(v86 - 1);
        }

        while (v86 != v85);
        v87 = __p;
      }

      v157 = v85;
      operator delete(v87);
    }

    v88 = v154;
    if (v154)
    {
      v89 = v155;
      v90 = v154;
      if (v155 != v154)
      {
        do
        {
          v91 = *--v89;
          *v89 = 0;
          if (v91)
          {
            operator delete[]();
          }
        }

        while (v89 != v88);
        v90 = v154;
      }

      v155 = v88;
      operator delete(v90);
    }

    if (v150 != v153)
    {
      free(v150);
    }
  }

  if (!v84)
  {
    return 0;
  }

LABEL_118:
  if (*(*this + 9))
  {
    v92 = *this - 16;
  }

  else
  {
    v92 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v92, 0);
  if (!sub_10026DCD4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v145 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v148 = sub_10020BDF0(&v145);
  v149 = v94;
  Shape = mlir::ShapedType::getShape(&v148);
  v97 = v96;
  ElementType = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v142 = sub_10020BDF0(&ElementType);
  v143 = v98;
  v99 = mlir::ShapedType::getShape(&v142);
  if (v97 == v100 && !memcmp(Shape, v99, 8 * v97))
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
    if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
    {
      return 1;
    }

    v142 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v144 = 259;
    mlir::OpState::emitOpError(&v148, this, &v142);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
    v102 = result;
    if (v148)
    {
      mlir::InFlightDiagnostic::report(&v148);
      result = v102;
    }

    if (v159 == 1)
    {
      if (v158 != &v159)
      {
        free(v158);
        result = v102;
      }

      v111 = __p;
      if (__p)
      {
        v112 = v157;
        v113 = __p;
        if (v157 != __p)
        {
          do
          {
            v112 = sub_100052FFC(v112 - 1);
          }

          while (v112 != v111);
          v113 = __p;
        }

        v157 = v111;
        operator delete(v113);
        result = v102;
      }

      v106 = v154;
      if (!v154)
      {
        goto LABEL_162;
      }

      v114 = v155;
      v108 = v154;
      if (v155 == v154)
      {
        goto LABEL_161;
      }

      do
      {
        v115 = *--v114;
        *v114 = 0;
        if (v115)
        {
          operator delete[]();
        }
      }

      while (v114 != v106);
      goto LABEL_160;
    }
  }

  else
  {
    v142 = "failed to verify that Result 0 and operand 1 must have the same shape.";
    v144 = 259;
    mlir::OpState::emitOpError(&v148, this, &v142);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
    v102 = result;
    if (v148)
    {
      mlir::InFlightDiagnostic::report(&v148);
      result = v102;
    }

    if (v159 == 1)
    {
      if (v158 != &v159)
      {
        free(v158);
        result = v102;
      }

      v103 = __p;
      if (__p)
      {
        v104 = v157;
        v105 = __p;
        if (v157 != __p)
        {
          do
          {
            v104 = sub_100052FFC(v104 - 1);
          }

          while (v104 != v103);
          v105 = __p;
        }

        v157 = v103;
        operator delete(v105);
        result = v102;
      }

      v106 = v154;
      if (!v154)
      {
        goto LABEL_162;
      }

      v107 = v155;
      v108 = v154;
      if (v155 == v154)
      {
LABEL_161:
        v155 = v106;
        operator delete(v108);
        result = v102;
LABEL_162:
        if (v150 != v153)
        {
          free(v150);
          return v102;
        }

        return result;
      }

      do
      {
        v109 = *--v107;
        *v107 = 0;
        if (v109)
        {
          operator delete[]();
        }
      }

      while (v107 != v106);
LABEL_160:
      v108 = v154;
      goto LABEL_161;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::parse(mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_10023B73C(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001D4484(a2, Results, v8);
          v9 = sub_10023B994(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = sub_100271314(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return sub_100271964(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t sub_100271314(mlir::Operation *this, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v58 = a2;
  Encoding = mlir::RankedTensorType::getEncoding(&v58);
  if (!Encoding || *(*Encoding + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    v37 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? a2 : 0;
    v57 = v37;
    v38 = mlir::RankedTensorType::getEncoding(&v57);
    if (!v38 || *(*v38 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
    {
      goto LABEL_2;
    }
  }

  v39 = *a2;
  {
    sub_100289E80();
    v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v41 = *(v39 + 8);
    v42 = *(v39 + 16);
    if (v42)
    {
      goto LABEL_36;
    }

LABEL_62:
    v49 = 0;
    goto LABEL_64;
  }

  v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v41 = *(v39 + 8);
  v42 = *(v39 + 16);
  if (!v42)
  {
    goto LABEL_62;
  }

LABEL_36:
  v43 = v41;
  v44 = v42;
  do
  {
    v45 = v44 >> 1;
    v46 = &v43[2 * (v44 >> 1)];
    v48 = *v46;
    v47 = v46 + 2;
    v44 += ~(v44 >> 1);
    if (v48 < v40)
    {
      v43 = v47;
    }

    else
    {
      v44 = v45;
    }
  }

  while (v44);
  if (v43 == &v41[2 * v42] || *v43 != v40)
  {
    goto LABEL_62;
  }

  v49 = v43[1];
LABEL_64:
  v61[0] = a2;
  v61[1] = v49;
  v55[0] = mlir::ShapedType::getElementType(v61);
  if (mlir::Type::isF16(v55) || mlir::Type::isF32(v55) || mlir::Type::isSignedInteger(v55, 4) || mlir::Type::isSignedInteger(v55, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 32))
  {
    return 1;
  }

LABEL_2:
  v56 = 261;
  v55[0] = a3;
  v55[1] = a4;
  mlir::Operation::emitOpError(v61, this, v55);
  if (v61[0])
  {
    LODWORD(v58) = 3;
    v59 = " #";
    v60 = 2;
    v10 = &v58;
    v11 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v51 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v11 = v62;
        v10 = (v62 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v10 = &v58;
        v11 = v62;
      }
    }

    v12 = &v11[24 * v63];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v63;
    if (v61[0])
    {
      LODWORD(v58) = 5;
      v59 = a5;
      v15 = &v58;
      v16 = v62;
      if (v14 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v14 > &v58)
        {
          v52 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v14 + 1, 24);
          v16 = v62;
          v15 = (v62 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v14 + 1, 24);
          v15 = &v58;
          v16 = v62;
        }
      }

      v17 = &v16[24 * v63];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v63;
      if (v61[0])
      {
        LODWORD(v58) = 3;
        v59 = " must be ranked tensor of 16-bit float or 32-bit float or 4-bit signed integer or 8-bit signed integer or 32-bit signed integer values, but got ";
        v60 = 144;
        v20 = &v58;
        v21 = v62;
        if (v19 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v19 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v19 + 1, 24);
            v21 = v62;
            v20 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v19 + 1, 24);
            v20 = &v58;
            v21 = v62;
          }
        }

        v22 = &v21[24 * v63];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v63;
        if (v61[0])
        {
          v24 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v25 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v25 = v62;
              v24 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v24 = &v58;
              v25 = v62;
            }
          }

          v26 = &v25[24 * v63];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v63;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
  if (v61[0])
  {
    mlir::InFlightDiagnostic::report(v61);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v69;
      v31 = __p;
      if (v69 != __p)
      {
        do
        {
          v30 = sub_100052FFC(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v69 = v29;
      operator delete(v31);
    }

    v32 = v66;
    if (v66)
    {
      v33 = v67;
      v34 = v66;
      if (v67 != v66)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v66;
      }

      v67 = v32;
      operator delete(v34);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v28;
}

uint64_t sub_100271964(mlir::Operation *this, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v61 = a2;
  Encoding = mlir::RankedTensorType::getEncoding(&v61);
  if (Encoding)
  {
    if (*(*Encoding + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
    {
      goto LABEL_2;
    }
  }

  v37 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? a2 : 0;
  v60 = v37;
  v38 = mlir::RankedTensorType::getEncoding(&v60);
  if (v38)
  {
    if (*(*v38 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id)
    {
      goto LABEL_2;
    }
  }

  v39 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? a2 : 0;
  v59 = v39;
  v40 = mlir::RankedTensorType::getEncoding(&v59);
  if (v40)
  {
    if (*(*v40 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
    {
      goto LABEL_2;
    }
  }

  v41 = *a2;
  {
    sub_100289E80();
    v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v43 = *(v41 + 8);
    v44 = *(v41 + 16);
    if (v44)
    {
      goto LABEL_41;
    }

LABEL_67:
    v51 = 0;
    goto LABEL_69;
  }

  v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  if (!v44)
  {
    goto LABEL_67;
  }

LABEL_41:
  v45 = v43;
  v46 = v44;
  do
  {
    v47 = v46 >> 1;
    v48 = &v45[2 * (v46 >> 1)];
    v50 = *v48;
    v49 = v48 + 2;
    v46 += ~(v46 >> 1);
    if (v50 < v42)
    {
      v45 = v49;
    }

    else
    {
      v46 = v47;
    }
  }

  while (v46);
  if (v45 == &v43[2 * v44] || *v45 != v42)
  {
    goto LABEL_67;
  }

  v51 = v45[1];
LABEL_69:
  v64[0] = a2;
  v64[1] = v51;
  v57[0] = mlir::ShapedType::getElementType(v64);
  if (mlir::Type::isF16(v57) || mlir::Type::isF32(v57) || mlir::Type::isSignedInteger(v57, 4) || mlir::Type::isSignedInteger(v57, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v57, 32))
  {
    return 1;
  }

LABEL_2:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(v64, this, v57);
  if (v64[0])
  {
    LODWORD(v61) = 3;
    v62 = " #";
    v63 = 2;
    v10 = &v61;
    v11 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &v61 && v65 + 24 * v66 > &v61)
      {
        v53 = &v61 - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v11 = v65;
        v10 = (v65 + v53);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v10 = &v61;
        v11 = v65;
      }
    }

    v12 = &v11[24 * v66];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v66;
    if (v64[0])
    {
      LODWORD(v61) = 5;
      v62 = a5;
      v15 = &v61;
      v16 = v65;
      if (v14 >= v67)
      {
        if (v65 <= &v61 && v65 + 24 * v14 > &v61)
        {
          v54 = &v61 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v14 + 1, 24);
          v16 = v65;
          v15 = (v65 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v14 + 1, 24);
          v15 = &v61;
          v16 = v65;
        }
      }

      v17 = &v16[24 * v66];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v66;
      if (v64[0])
      {
        LODWORD(v61) = 3;
        v62 = " must be ranked tensor of 16-bit float or 32-bit float or 4-bit signed integer or 8-bit signed integer or 32-bit signed integer values, but got ";
        v63 = 144;
        v20 = &v61;
        v21 = v65;
        if (v19 >= v67)
        {
          if (v65 <= &v61 && v65 + 24 * v19 > &v61)
          {
            v55 = &v61 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v19 + 1, 24);
            v21 = v65;
            v20 = (v65 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v19 + 1, 24);
            v20 = &v61;
            v21 = v65;
          }
        }

        v22 = &v21[24 * v66];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v66;
        if (v64[0])
        {
          v24 = &v61;
          mlir::DiagnosticArgument::DiagnosticArgument(&v61, a2);
          v25 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &v61 && v65 + 24 * v66 > &v61)
            {
              v56 = &v61 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v25 = v65;
              v24 = (v65 + v56);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v24 = &v61;
              v25 = v65;
            }
          }

          v26 = &v25[24 * v66];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v66;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
  if (v64[0])
  {
    mlir::InFlightDiagnostic::report(v64);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v72;
      v31 = __p;
      if (v72 != __p)
      {
        do
        {
          v30 = sub_100052FFC(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v72 = v29;
      operator delete(v31);
    }

    v32 = v69;
    if (v69)
    {
      v33 = v70;
      v34 = v69;
      if (v70 != v69)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v69;
      }

      v70 = v32;
      operator delete(v34);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  return v28;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::parse(mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_10023B73C(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001D4484(a2, Results, v8);
          v9 = sub_10023B994(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

void mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  mlir::OperationState::addOperands(a2, &v7, 1uLL);
  v6 = *(a2 + 72);
  if (v6 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v6 + 1, 8);
    LODWORD(v6) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v6) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = sub_100271964(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return sub_100271314(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::parse(mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_10023B73C(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001D4484(a2, Results, v8);
          v9 = sub_10023B994(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002726F8(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_10026E2E8(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_1002726F8(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !sub_10026F8B4(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return sub_10026E2E8(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL sub_1002726F8(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_29;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v56 = v7;
    sub_100289EC4();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_20;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v7 + 8);
  v15 = *(v7 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_18;
  }

  v22 = v16[1];
LABEL_20:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ShapedType::getElementType(v62);
  if (mlir::Type::isSignedInteger(v57, 4) || mlir::Type::isUnsignedInteger(v57, 8) || mlir::Type::isSignedInteger(v57, 8))
  {
    return 1;
  }

  v23 = *(*v57[0] + 136);
  v24 = v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (v24)
  {
    return 1;
  }

LABEL_29:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(v62, a1, v57);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v26 = &v59;
    v27 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v27 = v63;
        v26 = (v63 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = &v59;
        v27 = v63;
      }
    }

    v28 = &v27[24 * v64];
    v29 = *v26;
    *(v28 + 2) = *(v26 + 2);
    *v28 = v29;
    v30 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v31 = &v59;
      v32 = v63;
      if (v30 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v30 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v30 + 1, 24);
          v32 = v63;
          v31 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v30 + 1, 24);
          v31 = &v59;
          v32 = v63;
        }
      }

      v33 = &v32[24 * v64];
      v34 = *v31;
      *(v33 + 2) = *(v31 + 2);
      *v33 = v34;
      v35 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be tensor of 4-bit signed integer or 8-bit unsigned integer or 8-bit signed integer or f8E5M2 type or f8E4M3FN type values, but got ";
        v61 = 138;
        v36 = &v59;
        v37 = v63;
        if (v35 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v35 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v35 + 1, 24);
            v37 = v63;
            v36 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v35 + 1, 24);
            v36 = &v59;
            v37 = v63;
          }
        }

        v38 = &v37[24 * v64];
        v39 = *v36;
        *(v38 + 2) = *(v36 + 2);
        *v38 = v39;
        ++v64;
        if (v62[0])
        {
          v40 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
          v41 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v41 = v63;
              v40 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v40 = &v59;
              v41 = v63;
            }
          }

          v42 = &v41[24 * v64];
          v43 = *v40;
          *(v42 + 2) = *(v40 + 2);
          *v42 = v43;
          ++v64;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v70;
      v46 = __p;
      if (v70 != __p)
      {
        do
        {
          v45 = sub_100052FFC(v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v70 = v44;
      operator delete(v46);
    }

    v47 = v67;
    if (v67)
    {
      v48 = v68;
      v49 = v67;
      if (v68 != v67)
      {
        do
        {
          v50 = *--v48;
          *v48 = 0;
          if (v50)
          {
            operator delete[]();
          }
        }

        while (v48 != v47);
        v49 = v67;
      }

      v68 = v47;
      operator delete(v49);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v25;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::parse(mlir::ODIE::Compiler::CoreMLAX::DequantizeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_10023B73C(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001D4484(a2, Results, v8);
          v9 = sub_10023B994(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_10026E2E8(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_10026E2E8(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_100273064(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !sub_10026F8B4(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return sub_100273064(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL sub_100273064(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_28;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v56 = v7;
    sub_100289EC4();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_20;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v7 + 8);
  v15 = *(v7 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_18;
  }

  v22 = v16[1];
LABEL_20:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ShapedType::getElementType(v62);
  if (mlir::Type::isUnsignedInteger(v57, 8) || mlir::Type::isSignedInteger(v57, 8))
  {
    return 1;
  }

  v23 = *(*v57[0] + 136);
  v24 = v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (v24)
  {
    return 1;
  }

LABEL_28:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(v62, a1, v57);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v26 = &v59;
    v27 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v27 = v63;
        v26 = (v63 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = &v59;
        v27 = v63;
      }
    }

    v28 = &v27[24 * v64];
    v29 = *v26;
    *(v28 + 2) = *(v26 + 2);
    *v28 = v29;
    v30 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v31 = &v59;
      v32 = v63;
      if (v30 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v30 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v30 + 1, 24);
          v32 = v63;
          v31 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v30 + 1, 24);
          v31 = &v59;
          v32 = v63;
        }
      }

      v33 = &v32[24 * v64];
      v34 = *v31;
      *(v33 + 2) = *(v31 + 2);
      *v33 = v34;
      v35 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be tensor of 8-bit unsigned integer or 8-bit signed integer or f8E5M2 type or f8E4M3FN type values, but got ";
        v61 = 114;
        v36 = &v59;
        v37 = v63;
        if (v35 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v35 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v35 + 1, 24);
            v37 = v63;
            v36 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v35 + 1, 24);
            v36 = &v59;
            v37 = v63;
          }
        }

        v38 = &v37[24 * v64];
        v39 = *v36;
        *(v38 + 2) = *(v36 + 2);
        *v38 = v39;
        ++v64;
        if (v62[0])
        {
          v40 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
          v41 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v41 = v63;
              v40 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v40 = &v59;
              v41 = v63;
            }
          }

          v42 = &v41[24 * v64];
          v43 = *v40;
          *(v42 + 2) = *(v40 + 2);
          *v42 = v43;
          ++v64;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v70;
      v46 = __p;
      if (v70 != __p)
      {
        do
        {
          v45 = sub_100052FFC(v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v70 = v44;
      operator delete(v46);
    }

    v47 = v67;
    if (v67)
    {
      v48 = v68;
      v49 = v67;
      if (v68 != v67)
      {
        do
        {
          v50 = *--v48;
          *v48 = 0;
          if (v50)
          {
            operator delete[]();
          }
        }

        while (v48 != v47);
        v49 = v67;
      }

      v68 = v47;
      operator delete(v49);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v25;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::parse(mlir::ODIE::Compiler::CoreMLAX::QuantizeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_10023B73C(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001D4484(a2, Results, v8);
          v9 = sub_10023B994(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

void mlir::ODIE::Compiler::CoreMLAX::ViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  mlir::OperationState::addOperands(a2, &v7, 1uLL);
  v6 = *(a2 + 72);
  if (v6 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v6 + 1, 8);
    LODWORD(v6) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v6) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ViewOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = sub_10026D02C(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return sub_10026D02C(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ViewOp::parse(mlir::ODIE::Compiler::CoreMLAX::ViewOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_10023B73C(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001D4484(a2, Results, v8);
          v9 = sub_10023B994(this, v14, v13, v5, a2 + 16);
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

const char *sub_100273ED4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp]";
  v6 = 130;
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

const char *sub_100274210()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp]";
  v6 = 119;
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

const char *sub_10027454C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp]";
  v6 = 136;
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

const char *sub_100274A5C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp]";
  v6 = 129;
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

const char *sub_100274BC4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp]";
  v6 = 115;
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

mlir::Diagnostic *sub_100274C44@<X0>(mlir::Operation ***a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v5 = 257;
  return mlir::OpState::emitError(v2, v4, a2);
}

mlir::Diagnostic *sub_100274C74@<X0>(mlir::Operation ***a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v5 = 257;
  return mlir::OpState::emitError(v2, v4, a2);
}

uint64_t *sub_100274CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = *(*v19 + 36);
  v22 = *v19 - 16;
  if (!v21)
  {
    v22 = 0;
  }

  a18 = v22;
  a19 = v21;

  return mlir::ResultRange::getTypes(&a10, &a18);
}

llvm::raw_ostream *sub_100274CF4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);

  return sub_10023BF78(v2, va1, va);
}

uint64_t *sub_100274D10@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v5 = a1;
  v7 = v2;

  return mlir::OperandRange::getTypes(va, va1);
}

uint64_t sub_100274D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;

  return mlir::DictionaryAttr::getValue(&a14);
}

unint64_t sub_100274D5C()
{
  v2 = *v0;

  return mlir::Operation::getAttrDictionary(v2);
}

void mlir::ODIE::Compiler::CoreMLAX::getStrides(uint64_t a1@<X0>, void *a2@<X8>)
{
  v19 = a1;
  Shape = mlir::RankedTensorType::getShape(&v19);
  Encoding = mlir::RankedTensorType::getEncoding(&v19);
  if (Encoding)
  {
    v5 = *(*Encoding + 136);
    v6 = v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id;
    v7 = v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id ? Encoding : 0;
    v18 = v7;
    if (v6)
    {
      mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v18, Shape, a2);
      return;
    }
  }

  mlir::RankedTensorType::getShape(&v19);
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  v9 = v8 + 1;
  if (v8 == -1)
  {
    return;
  }

  if (v9 < 7)
  {
    v10 = 0;
    v11 = v8 + 1;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 2, v8 + 1, 8);
    v10 = *(a2 + 2);
    v11 = v9 - v10;
    if (v9 == v10)
    {
      goto LABEL_13;
    }
  }

  bzero((*a2 + 8 * v10), 8 * v11);
LABEL_13:
  *(a2 + 2) = v9;
  if (v9)
  {
    v12 = v9;
    v13 = *a2;
    *(*a2 + 8 * (v9 - 1)) = 1;
    if (v9 != 1)
    {
      v14 = 0;
      v15 = v13 - 16;
      v16 = 1;
      do
      {
        v17 = *(Shape - 16 + 8 * v12);
        v14 |= v17 == 0x8000000000000000;
        v16 *= v17;
        if (v14)
        {
          v16 = 0x8000000000000000;
        }

        *(v15 + 8 * v12--) = v16;
      }

      while (v12 != 1);
    }
  }
}

uint64_t mlir::ODIE::Compiler::getHandleForToken(uint64_t a1)
{
  v4 = a1;
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    v2 = *(*(result + 48) + 16);
    if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WriteHandleOp,void>::id)
    {
      return *(*(result + 72) + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::getSymbolicTypeAffineMap(uint64_t a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v3 = v1;
  if (!v1)
  {
    return 0;
  }

  result = mlir::RankedTensorType::getEncoding(&v3);
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::areTypesCompatible(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  v18 = v4;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v17 = v5;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return a1 == a2;
  }

  Encoding = mlir::RankedTensorType::getEncoding(&v18);
  if (Encoding)
  {
    v8 = *(*Encoding + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
    v9 = mlir::RankedTensorType::getEncoding(&v17);
    if (v9)
    {
      goto LABEL_13;
    }

LABEL_18:
    if (!v8)
    {
      goto LABEL_14;
    }

    return a1 == a2;
  }

  v8 = 1;
  v9 = mlir::RankedTensorType::getEncoding(&v17);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (((v8 ^ (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)) & 1) == 0)
  {
    return a1 == a2;
  }

LABEL_14:
  ElementType = mlir::RankedTensorType::getElementType(&v18);
  if (ElementType == mlir::RankedTensorType::getElementType(&v17) && (Shape = mlir::RankedTensorType::getShape(&v18), v13 = v12, v14 = mlir::RankedTensorType::getShape(&v17), v13 == v15))
  {
    return memcmp(Shape, v14, 8 * v13) == 0;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::ODIE::Compiler::areTypesCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      if (a2 == i)
      {
        break;
      }

      v8 = mlir::TypeRange::dereference_iterator(a1, i);
      v9 = mlir::TypeRange::dereference_iterator(a3, i);
      result = mlir::ODIE::Compiler::areTypesCompatible(v8, v9);
      if (!result)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t mlir::detail::verifyTypesAlongControlFlowEdges(mlir::detail *this, mlir::Operation *a2)
{
  v2 = this;
  v22 = this;
  if (this)
  {
    this = sub_100276190(this);
  }

  v21[0] = v2;
  v21[1] = this;
  v20 = v21;
  if (!sub_100275414(v2, 0, sub_100276D20, &v20))
  {
    return 0;
  }

  v19 = v21;
  v3 = v2[11];
  v4 = 1;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = (((&v2[4 * ((v3 >> 23) & 1) + 17] + ((v3 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10]);
    v6 = (v5 + 24 * (v3 & 0x7FFFFF));
    while (1)
    {
      v23 = v25;
      v24 = 0x300000000;
      v7 = *(v5 + 1);
      if (v7 == v5)
      {
        break;
      }

      do
      {
        v10 = (v7 - 8);
        if (!v7)
        {
          v10 = 0;
        }

        if (v10[4] != v10 + 4)
        {
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
          v12 = v11;
          if (sub_100276A74(v11))
          {
            v13 = sub_100276A74(v12);
            if (v12)
            {
              v8 = v24;
              if (v24 >= HIDWORD(v24))
              {
                v17 = v13;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v24 + 1, 16);
                v13 = v17;
                v8 = v24;
              }

              v9 = (v23 + 16 * v8);
              *v9 = v12;
              v9[1] = v13;
              LODWORD(v24) = v24 + 1;
            }
          }
        }

        v7 = *(v7 + 1);
      }

      while (v7 != v5);
      if (!v24)
      {
        break;
      }

      v18[0] = &v23;
      v18[1] = &v19;
      v18[2] = &v22;
      v18[3] = v5;
      v14 = !sub_100275414(v22, v5, sub_100276DCC, v18);
      v15 = v23;
      if (v23 != v25)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (v14 != 3 && v14)
      {
        return 0;
      }

      v5 = (v5 + 24);
      if (v5 == v6)
      {
        return 1;
      }
    }

    v14 = 3;
    v15 = v23;
    if (v23 == v25)
    {
      goto LABEL_25;
    }

LABEL_24:
    free(v15);
    goto LABEL_25;
  }

  return v4;
}

BOOL sub_100275414(mlir::Operation *a1, mlir::Region *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, unint64_t), uint64_t a4)
{
  if (a1)
  {
    v6 = sub_100276190(a1);
  }

  else
  {
    v6 = 0;
  }

  v125 = v127;
  v126 = 0x200000000;
  (*(v6 + 16))(v6, a1, a2, &v125);
  if (v126)
  {
    v7 = v125;
    v102 = &v125[3 * v126];
    while (1)
    {
      a3(&v122, a4, *v7);
      if ((v124 & 1) == 0)
      {
        v54 = 0;
        goto LABEL_82;
      }

      v119 = *(v7 + 1);
      mlir::ValueRange::getTypes(&v119, &v108);
      v9 = v108.n128_u64[1];
      v8 = v108.n128_u64[0];
      v10 = v109;
      v105 = v108;
      if (v108.n128_u64[1])
      {
        v8 = mlir::ValueRange::offset_base(&v105, v108.n128_i64[1]);
        v9 = v105.n128_u64[1];
      }

      mlir::TypeRange::TypeRange(&v120, v8, v10 - v9);
      v11 = v123;
      if (v123 != v121)
      {
        break;
      }

      if (v123)
      {
        v12 = 0;
        v13 = v122;
        v14 = v120;
        while (v11 != v12)
        {
          v15 = mlir::TypeRange::dereference_iterator(v13, v12);
          v16 = mlir::TypeRange::dereference_iterator(v14, v12);
          if (((*(v6 + 32))(v6, a1, v15, v16) & 1) == 0)
          {
            v105.n128_u64[0] = " along control flow edge ";
            v107 = 259;
            mlir::Operation::emitOpError(&v108, a1, &v105);
            sub_10027643C(&v108, a2, *v7);
            if (v108.n128_u64[0])
            {
              v105.n128_u32[0] = 3;
              v105.n128_u64[1] = ": source type #";
              v106 = 15;
              v17 = &v105;
              v18 = v109;
              if (v110 >= v111)
              {
                if (v109 <= &v105 && v109 + 24 * v110 > &v105)
                {
                  v90 = &v105 - v109;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                  v18 = v109;
                  v17 = (v109 + v90);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                  v17 = &v105;
                  v18 = v109;
                }
              }

              v19 = &v18[24 * v110];
              v20 = *v17;
              *(v19 + 2) = v17[1].n128_u64[0];
              *v19 = v20;
              v21 = ++v110;
              if (v108.n128_u64[0])
              {
                v105.n128_u32[0] = 5;
                v105.n128_u64[1] = v12;
                v22 = &v105;
                v23 = v109;
                if (v21 >= v111)
                {
                  if (v109 <= &v105 && v109 + 24 * v21 > &v105)
                  {
                    v91 = &v105 - v109;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v21 + 1, 24);
                    v23 = v109;
                    v22 = (v109 + v91);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v21 + 1, 24);
                    v22 = &v105;
                    v23 = v109;
                  }
                }

                v24 = &v23[24 * v110];
                v25 = *v22;
                *(v24 + 2) = v22[1].n128_u64[0];
                *v24 = v25;
                v26 = ++v110;
                if (v108.n128_u64[0])
                {
                  v105.n128_u32[0] = 3;
                  v105.n128_u64[1] = " ";
                  v106 = 1;
                  v27 = &v105;
                  v28 = v109;
                  if (v26 >= v111)
                  {
                    if (v109 <= &v105 && v109 + 24 * v26 > &v105)
                    {
                      v92 = &v105 - v109;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v26 + 1, 24);
                      v28 = v109;
                      v27 = (v109 + v92);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v26 + 1, 24);
                      v27 = &v105;
                      v28 = v109;
                    }
                  }

                  v29 = &v28[24 * v110];
                  v30 = *v27;
                  *(v29 + 2) = v27[1].n128_u64[0];
                  *v29 = v30;
                  ++v110;
                  if (v108.n128_u64[0])
                  {
                    v31 = &v105;
                    mlir::DiagnosticArgument::DiagnosticArgument(&v105, v15);
                    v32 = v109;
                    if (v110 >= v111)
                    {
                      if (v109 <= &v105 && v109 + 24 * v110 > &v105)
                      {
                        v93 = &v105 - v109;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                        v32 = v109;
                        v31 = (v109 + v93);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                        v31 = &v105;
                        v32 = v109;
                      }
                    }

                    v33 = &v32[24 * v110];
                    v34 = *v31;
                    *(v33 + 2) = v31[1].n128_u64[0];
                    *v33 = v34;
                    v35 = ++v110;
                    if (v108.n128_u64[0])
                    {
                      v105.n128_u32[0] = 3;
                      v105.n128_u64[1] = " should match input type #";
                      v106 = 26;
                      v36 = &v105;
                      v37 = v109;
                      if (v35 >= v111)
                      {
                        if (v109 <= &v105 && v109 + 24 * v35 > &v105)
                        {
                          v95 = &v105 - v109;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v35 + 1, 24);
                          v37 = v109;
                          v36 = (v109 + v95);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v35 + 1, 24);
                          v36 = &v105;
                          v37 = v109;
                        }
                      }

                      v38 = &v37[24 * v110];
                      v39 = *v36;
                      *(v38 + 2) = v36[1].n128_u64[0];
                      *v38 = v39;
                      v40 = ++v110;
                      if (v108.n128_u64[0])
                      {
                        v105.n128_u32[0] = 5;
                        v105.n128_u64[1] = v12;
                        v41 = &v105;
                        v42 = v109;
                        if (v40 >= v111)
                        {
                          if (v109 <= &v105 && v109 + 24 * v40 > &v105)
                          {
                            v97 = &v105 - v109;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v40 + 1, 24);
                            v42 = v109;
                            v41 = (v109 + v97);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v40 + 1, 24);
                            v41 = &v105;
                            v42 = v109;
                          }
                        }

                        v43 = &v42[24 * v110];
                        v44 = *v41;
                        *(v43 + 2) = v41[1].n128_u64[0];
                        *v43 = v44;
                        v45 = ++v110;
                        if (v108.n128_u64[0])
                        {
                          v105.n128_u32[0] = 3;
                          v105.n128_u64[1] = " ";
                          v106 = 1;
                          v46 = &v105;
                          v47 = v109;
                          if (v45 >= v111)
                          {
                            if (v109 <= &v105 && v109 + 24 * v45 > &v105)
                            {
                              v99 = &v105 - v109;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v45 + 1, 24);
                              v47 = v109;
                              v46 = (v109 + v99);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v45 + 1, 24);
                              v46 = &v105;
                              v47 = v109;
                            }
                          }

                          v48 = &v47[24 * v110];
                          v49 = *v46;
                          *(v48 + 2) = v46[1].n128_u64[0];
                          *v48 = v49;
                          ++v110;
                          if (v108.n128_u64[0])
                          {
                            v50 = &v105;
                            mlir::DiagnosticArgument::DiagnosticArgument(&v105, v16);
                            v51 = v109;
                            if (v110 >= v111)
                            {
                              if (v109 <= &v105 && v109 + 24 * v110 > &v105)
                              {
                                v101 = &v105 - v109;
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                                v51 = v109;
                                v50 = (v109 + v101);
                              }

                              else
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                                v50 = &v105;
                                v51 = v109;
                              }
                            }

                            v52 = &v51[24 * v110];
                            v53 = *v50;
                            *(v52 + 2) = v50[1].n128_u64[0];
                            *v52 = v53;
                            ++v110;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v108);
            if (v108.n128_u64[0])
            {
              mlir::InFlightDiagnostic::report(&v108);
            }

            if ((v118 & 1) == 0)
            {
              goto LABEL_82;
            }

            if (v117 != &v118)
            {
              free(v117);
            }

            v55 = __p;
            if (__p)
            {
              v56 = v116;
              v57 = __p;
              if (v116 != __p)
              {
                do
                {
                  v56 = sub_100052FFC(v56 - 1);
                }

                while (v56 != v55);
                v57 = __p;
              }

              v116 = v55;
              operator delete(v57);
            }

            v58 = v113;
            if (v113)
            {
              v59 = v114;
              v60 = v113;
              if (v114 != v113)
              {
                do
                {
                  v61 = *--v59;
                  *v59 = 0;
                  if (v61)
                  {
                    operator delete[]();
                  }
                }

                while (v59 != v58);
                v60 = v113;
              }

              v114 = v58;
              operator delete(v60);
            }

            v62 = v109;
            if (v109 == v112)
            {
              goto LABEL_82;
            }

            goto LABEL_54;
          }

          if (v11 == ++v12)
          {
            break;
          }
        }
      }

      v7 += 3;
      if (v7 == v102)
      {
        v54 = 1;
        goto LABEL_82;
      }
    }

    v105.n128_u64[0] = " region control flow edge ";
    v107 = 259;
    mlir::Operation::emitOpError(&v108, a1, &v105);
    sub_10027643C(&v108, a2, *v7);
    if (v108.n128_u64[0])
    {
      v105.n128_u32[0] = 3;
      v105.n128_u64[1] = ": source has ";
      v106 = 13;
      v63 = &v105;
      v64 = v109;
      if (v110 >= v111)
      {
        if (v109 <= &v105 && v109 + 24 * v110 > &v105)
        {
          v94 = &v105 - v109;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
          v64 = v109;
          v63 = (v109 + v94);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
          v63 = &v105;
          v64 = v109;
        }
      }

      v65 = &v64[24 * v110];
      v66 = *v63;
      *(v65 + 2) = v63[1].n128_u64[0];
      *v65 = v66;
      v67 = ++v110;
      if (v108.n128_u64[0])
      {
        v105.n128_u32[0] = 5;
        v105.n128_u64[1] = v123;
        v68 = &v105;
        v69 = v109;
        if (v67 >= v111)
        {
          if (v109 <= &v105 && v109 + 24 * v67 > &v105)
          {
            v96 = &v105 - v109;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v67 + 1, 24);
            v69 = v109;
            v68 = (v109 + v96);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v67 + 1, 24);
            v68 = &v105;
            v69 = v109;
          }
        }

        v70 = &v69[24 * v110];
        v71 = *v68;
        *(v70 + 2) = v68[1].n128_u64[0];
        *v70 = v71;
        v72 = ++v110;
        if (v108.n128_u64[0])
        {
          v105.n128_u32[0] = 3;
          v105.n128_u64[1] = " operands, but target successor needs ";
          v106 = 38;
          v73 = &v105;
          v74 = v109;
          if (v72 >= v111)
          {
            if (v109 <= &v105 && v109 + 24 * v72 > &v105)
            {
              v98 = &v105 - v109;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v72 + 1, 24);
              v74 = v109;
              v73 = (v109 + v98);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v72 + 1, 24);
              v73 = &v105;
              v74 = v109;
            }
          }

          v75 = &v74[24 * v110];
          v76 = *v73;
          *(v75 + 2) = v73[1].n128_u64[0];
          *v75 = v76;
          v77 = ++v110;
          if (v108.n128_u64[0])
          {
            v105.n128_u32[0] = 5;
            v105.n128_u64[1] = v121;
            v78 = &v105;
            v79 = v109;
            if (v77 >= v111)
            {
              if (v109 <= &v105 && v109 + 24 * v77 > &v105)
              {
                v100 = &v105 - v109;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v77 + 1, 24);
                v79 = v109;
                v78 = (v109 + v100);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v77 + 1, 24);
                v78 = &v105;
                v79 = v109;
              }
            }

            v80 = &v79[24 * v110];
            v81 = *v78;
            *(v80 + 2) = v78[1].n128_u64[0];
            *v80 = v81;
            ++v110;
          }
        }
      }
    }

    v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v108);
    if (v108.n128_u64[0])
    {
      mlir::InFlightDiagnostic::report(&v108);
    }

    if (v118 == 1)
    {
      if (v117 != &v118)
      {
        free(v117);
      }

      v82 = __p;
      if (__p)
      {
        v83 = v116;
        v84 = __p;
        if (v116 != __p)
        {
          do
          {
            v83 = sub_100052FFC(v83 - 1);
          }

          while (v83 != v82);
          v84 = __p;
        }

        v116 = v82;
        operator delete(v84);
      }

      v85 = v113;
      if (v113)
      {
        v86 = v114;
        v87 = v113;
        if (v114 != v113)
        {
          do
          {
            v88 = *--v86;
            *v86 = 0;
            if (v88)
            {
              operator delete[]();
            }
          }

          while (v86 != v85);
          v87 = v113;
        }

        v114 = v85;
        operator delete(v87);
      }

      v62 = v109;
      if (v109 != v112)
      {
LABEL_54:
        free(v62);
      }
    }
  }

  else
  {
    v54 = 1;
  }

LABEL_82:
  if (v125 != v127)
  {
    free(v125);
  }

  return v54;
}

uint64_t sub_100276190(uint64_t a1)
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
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      sub_10028D248();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &unk_1002C1000;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;
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
    sub_10028D1F4();
    v3 = v21;
    a1 = v22;
    v4 = &unk_1002C1000;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;
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
    sub_10028D1F4();
    v4 = &unk_1002C1000;
    v18 = v23;
  }

  v19 = v4[353];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t sub_100276374(uint64_t a1, uint64_t a2)
{
  {
    sub_10028D288();
  }

  return llvm::getTypeName<mlir::RegionBranchOpInterface>(void)::Name;
}

const char *sub_1002763BC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::RegionBranchOpInterface]";
  v6 = 91;
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

uint64_t *sub_10027643C(uint64_t *a1, mlir::Region *this, unint64_t a3)
{
  if (*a1)
  {
    v5 = a1 + 3;
    v6 = a1[3];
    v70 = 3;
    v71 = "from ";
    v72 = 5;
    v7 = *(a1 + 8);
    v8 = &v70;
    if (v7 >= *(a1 + 9))
    {
      v60 = this;
      if (v6 <= &v70 && v6 + 24 * v7 > &v70)
      {
        v62 = &v70 - v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5, a1 + 5, v7 + 1, 24);
        v6 = a1[3];
        v8 = &v62[v6];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5, a1 + 5, v7 + 1, 24);
        v6 = a1[3];
        v8 = &v70;
      }

      this = v60;
    }

    v9 = v6 + 24 * *(a1 + 8);
    v10 = *v8;
    *(v9 + 16) = *(v8 + 2);
    *v9 = v10;
    ++*(a1 + 8);
  }

  v11 = *a1;
  if (this)
  {
    if (v11)
    {
      v12 = a1 + 3;
      v13 = a1[3];
      v70 = 3;
      v71 = "Region #";
      v72 = 8;
      v14 = *(a1 + 8);
      v15 = &v70;
      if (v14 >= *(a1 + 9))
      {
        v61 = this;
        if (v13 <= &v70 && v13 + 24 * v14 > &v70)
        {
          v63 = &v70 - v13;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, a1 + 5, v14 + 1, 24);
          v13 = a1[3];
          v15 = &v63[v13];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, a1 + 5, v14 + 1, 24);
          v13 = a1[3];
          v15 = &v70;
        }

        this = v61;
      }

      v16 = v13 + 24 * *(a1 + 8);
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      ++*(a1 + 8);
    }

    RegionNumber = mlir::Region::getRegionNumber(this);
    if (!*a1)
    {
      goto LABEL_17;
    }

    v19 = RegionNumber;
    v20 = a1 + 3;
    v21 = a1[3];
    v70 = 5;
    v71 = v19;
    v22 = *(a1 + 8);
    v23 = &v70;
    if (v22 >= *(a1 + 9))
    {
      if (v21 <= &v70 && v21 + 24 * v22 > &v70)
      {
        v64 = &v70 - v21;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v20, a1 + 5, v22 + 1, 24);
        v21 = a1[3];
        v23 = &v64[v21];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v20, a1 + 5, v22 + 1, 24);
        v21 = a1[3];
        v23 = &v70;
      }
    }

    v24 = v21 + 24 * *(a1 + 8);
    v25 = *v23;
    *(v24 + 16) = *(v23 + 2);
    *v24 = v25;
    v26 = *(a1 + 8) + 1;
    *(a1 + 8) = v26;
    if (!*a1)
    {
      goto LABEL_17;
    }

LABEL_15:
    v33 = a1 + 3;
    v34 = a1[3];
    v70 = 3;
    v71 = " to ";
    v72 = 4;
    v35 = &v70;
    if (v26 >= *(a1 + 9))
    {
      if (v34 <= &v70 && v34 + 24 * v26 > &v70)
      {
        v65 = &v70 - v34;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v33, a1 + 5, v26 + 1, 24);
        v34 = a1[3];
        v35 = &v65[v34];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v33, a1 + 5, v26 + 1, 24);
        v34 = a1[3];
        v35 = &v70;
      }
    }

    v36 = v34 + 24 * *(a1 + 8);
    v37 = *v35;
    *(v36 + 16) = *(v35 + 2);
    *v36 = v37;
    ++*(a1 + 8);
    goto LABEL_17;
  }

  if (v11)
  {
    v27 = a1 + 3;
    v28 = a1[3];
    v70 = 3;
    v71 = "parent operands";
    v72 = 15;
    v29 = *(a1 + 8);
    v30 = &v70;
    if (v29 >= *(a1 + 9))
    {
      if (v28 <= &v70 && v28 + 24 * v29 > &v70)
      {
        v68 = &v70 - v28;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v27, a1 + 5, v29 + 1, 24);
        v28 = a1[3];
        v30 = &v68[v28];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v27, a1 + 5, v29 + 1, 24);
        v28 = a1[3];
        v30 = &v70;
      }
    }

    v31 = v28 + 24 * *(a1 + 8);
    v32 = *v30;
    *(v31 + 16) = *(v30 + 2);
    *v31 = v32;
    v26 = *(a1 + 8) + 1;
    *(a1 + 8) = v26;
    if (*a1)
    {
      goto LABEL_15;
    }
  }

LABEL_17:
  v38 = *a1;
  if (a3)
  {
    if (v38)
    {
      v39 = a1 + 3;
      v40 = a1[3];
      v70 = 3;
      v71 = "Region #";
      v72 = 8;
      v41 = *(a1 + 8);
      v42 = &v70;
      if (v41 >= *(a1 + 9))
      {
        if (v40 <= &v70 && v40 + 24 * v41 > &v70)
        {
          v66 = &v70 - v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39, a1 + 5, v41 + 1, 24);
          v40 = a1[3];
          v42 = &v66[v40];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39, a1 + 5, v41 + 1, 24);
          v40 = a1[3];
          v42 = &v70;
        }
      }

      v43 = v40 + 24 * *(a1 + 8);
      v44 = *v42;
      *(v43 + 16) = *(v42 + 2);
      *v43 = v44;
      ++*(a1 + 8);
    }

    v45 = mlir::Region::getRegionNumber(a3);
    if (*a1)
    {
      v46 = v45;
      v47 = a1 + 3;
      v48 = a1[3];
      v70 = 5;
      v71 = v46;
      v49 = *(a1 + 8);
      v50 = &v70;
      if (v49 >= *(a1 + 9))
      {
        if (v48 <= &v70 && v48 + 24 * v49 > &v70)
        {
          v67 = &v70 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v47, a1 + 5, v49 + 1, 24);
          v48 = a1[3];
          v50 = &v67[v48];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v47, a1 + 5, v49 + 1, 24);
          v48 = a1[3];
          v50 = &v70;
        }
      }

      v51 = v48 + 24 * *(a1 + 8);
      v52 = *v50;
      *(v51 + 16) = *(v50 + 2);
      *v51 = v52;
LABEL_27:
      ++*(a1 + 8);
    }
  }

  else if (v38)
  {
    v53 = a1 + 3;
    v54 = a1[3];
    v70 = 3;
    v71 = "parent results";
    v72 = 14;
    v55 = *(a1 + 8);
    v56 = &v70;
    if (v55 >= *(a1 + 9))
    {
      if (v54 <= &v70 && v54 + 24 * v55 > &v70)
      {
        v69 = &v70 - v54;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v53, a1 + 5, v55 + 1, 24);
        v54 = a1[3];
        v56 = &v69[v54];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v53, a1 + 5, v55 + 1, 24);
        v54 = a1[3];
        v56 = &v70;
      }
    }

    v57 = v54 + 24 * *(a1 + 8);
    v58 = *v56;
    *(v57 + 16) = *(v56 + 2);
    *v57 = v58;
    goto LABEL_27;
  }

  return a1;
}