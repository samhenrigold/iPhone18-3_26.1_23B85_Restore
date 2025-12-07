_BYTE *mlir::Operation::CloneOptions::cloneOperands(_BYTE *this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *this = *this & 0xFD | v2;
  return this;
}

uint64_t mlir::OpState::parse(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (*(v4 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v19[0] = *(v4 + 8);
    Values = mlir::SparseElementsAttr::getValues(v19);
    v4 = *(a2 + 8);
  }

  else
  {
    Values = *(v4 + 24);
  }

  v19[0] = *(v4 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v19);
  (*(*Values + 64))(v21, Values, AttrData, v7);
  if (v22 == 1)
  {
    return (v21[0])(v21[1], a1, a2);
  }

  v9 = (*(*a1 + 16))(a1);
  v19[0] = "has no custom assembly form";
  v20 = 259;
  (*(*a1 + 24))(v21, a1, v9, v19);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v28;
      v12 = __p;
      if (v28 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v28 = v10;
      operator delete(v12);
    }

    v13 = v25;
    if (v25)
    {
      v14 = v26;
      v15 = v25;
      if (v26 != v25)
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
        v15 = v25;
      }

      v26 = v13;
      operator delete(v15);
    }

    if (v23 != &v24)
    {
      free(v23);
    }
  }

  return v8;
}

uint64_t mlir::OpState::print(uint64_t a1, uint64_t a2, llvm::formatv_object_base *a3, llvm::formatv_object_base *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  if (*(v8 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v14[0] = *(v8 + 8);
    Values = mlir::SparseElementsAttr::getValues(v14);
  }

  else
  {
    Values = *(v8 + 24);
  }

  (*(*Values + 72))(v14);
  if (v15 < 8)
  {
    result = (*(*a2 + 216))(a2, a1, 1);
    v12 = v15;
    if (v15 < 8)
    {
      return result;
    }
  }

  else
  {
    mlir::OpState::printOpName(a1, a2, a3, a4);
    if ((v15 & 2) != 0)
    {
      v10 = v14;
    }

    else
    {
      v10 = v14[0];
    }

    result = (*(v15 & 0xFFFFFFFFFFFFFFF8))(v10, a1, a2);
    v12 = v15;
    if (v15 < 8)
    {
      return result;
    }
  }

  if ((v12 & 4) != 0)
  {
    if ((v12 & 2) != 0)
    {
      v13 = v14;
    }

    else
    {
      v13 = v14[0];
    }

    result = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16))(v13);
  }

  if ((v12 & 2) == 0)
  {
    llvm::deallocate_buffer(v14[0], v14[1]);
  }

  return result;
}

void **mlir::OpState::printOpName(uint64_t a1, uint64_t a2, llvm::formatv_object_base *a3, llvm::formatv_object_base *a4)
{
  v78[0] = *(*(a1 + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v78);
  v9 = v8;
  v79 = 773;
  v78[0] = a3;
  v78[1] = a4;
  v78[2] = ".";
  llvm::Twine::str(v78, v80);
  v10 = v81;
  v11 = v80[0];
  if (v81 >= 0)
  {
    v12 = v80;
  }

  else
  {
    v12 = v80[0];
  }

  if (v81 >= 0)
  {
    v13 = v81;
  }

  else
  {
    v13 = v80[1];
  }

  if (v9 < v13 || v13 && memcmp(AttrData, v12, v13))
  {
    if (v10 < 0)
    {
      operator delete(v11);
    }

    goto LABEL_37;
  }

  if (v9)
  {
    if (v9 < 8)
    {
      v14 = 0;
      v15 = 0;
      goto LABEL_26;
    }

    if (v9 >= 0x20)
    {
      v17 = 0uLL;
      v18.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
      v18.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
      v19 = vdupq_n_s64(1uLL);
      v14 = v9 & 0xFFFFFFFFFFFFFFE0;
      v20 = 0uLL;
      v21 = AttrData + 1;
      v22 = 0uLL;
      v23 = v9 & 0xFFFFFFFFFFFFFFE0;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      do
      {
        v37 = vceqq_s8(v21[-1], v18);
        v38 = vmovl_u8(*v37.i8);
        v39 = vmovl_high_u8(v37);
        v40 = vmovl_high_u16(v39);
        v41.i64[0] = v40.u32[2];
        v41.i64[1] = v40.u32[3];
        v28 = vaddq_s64(v28, vandq_s8(v41, v19));
        v42 = vmovl_high_u16(v38);
        v43 = vmovl_u16(*v39.i8);
        v41.i64[0] = v40.u32[0];
        v41.i64[1] = v40.u32[1];
        v27 = vaddq_s64(v27, vandq_s8(v41, v19));
        v41.i64[0] = v43.u32[2];
        v41.i64[1] = v43.u32[3];
        v26 = vaddq_s64(v26, vandq_s8(v41, v19));
        v41.i64[0] = v42.u32[2];
        v41.i64[1] = v42.u32[3];
        v24 = vaddq_s64(v24, vandq_s8(v41, v19));
        v44 = vmovl_u16(*v38.i8);
        v41.i64[0] = v43.u32[0];
        v41.i64[1] = v43.u32[1];
        v25 = vaddq_s64(v25, vandq_s8(v41, v19));
        v41.i64[0] = v44.u32[0];
        v41.i64[1] = v44.u32[1];
        v45 = vandq_s8(v41, v19);
        v41.i64[0] = v44.u32[2];
        v41.i64[1] = v44.u32[3];
        v46 = vandq_s8(v41, v19);
        v41.i64[0] = v42.u32[0];
        v41.i64[1] = v42.u32[1];
        v47 = vceqq_s8(*v21, v18);
        v22 = vaddq_s64(v22, vandq_s8(v41, v19));
        v48 = vmovl_u8(*v47.i8);
        v49 = vmovl_high_u8(v47);
        v20 = vaddq_s64(v20, v46);
        v50 = vmovl_high_u16(v49);
        v17 = vaddq_s64(v17, v45);
        v41.i64[0] = v50.u32[2];
        v41.i64[1] = v50.u32[3];
        v36 = vaddq_s64(v36, vandq_s8(v41, v19));
        v51 = vmovl_high_u16(v48);
        v52 = vmovl_u16(*v49.i8);
        v41.i64[0] = v50.u32[0];
        v41.i64[1] = v50.u32[1];
        v35 = vaddq_s64(v35, vandq_s8(v41, v19));
        v41.i64[0] = v52.u32[2];
        v41.i64[1] = v52.u32[3];
        v34 = vaddq_s64(v34, vandq_s8(v41, v19));
        v41.i64[0] = v51.u32[2];
        v41.i64[1] = v51.u32[3];
        v32 = vaddq_s64(v32, vandq_s8(v41, v19));
        v41.i64[0] = v52.u32[0];
        v41.i64[1] = v52.u32[1];
        v33 = vaddq_s64(v33, vandq_s8(v41, v19));
        v53 = vmovl_u16(*v48.i8);
        v41.i64[0] = v51.u32[0];
        v41.i64[1] = v51.u32[1];
        v31 = vaddq_s64(v31, vandq_s8(v41, v19));
        v41.i64[0] = v53.u32[2];
        v41.i64[1] = v53.u32[3];
        v30 = vaddq_s64(v30, vandq_s8(v41, v19));
        v41.i64[0] = v53.u32[0];
        v41.i64[1] = v53.u32[1];
        v29 = vaddq_s64(v29, vandq_s8(v41, v19));
        v21 += 2;
        v23 -= 32;
      }

      while (v23);
      v15 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v29, v17), vaddq_s64(v33, v25)), vaddq_s64(vaddq_s64(v31, v22), vaddq_s64(v35, v27))), vaddq_s64(vaddq_s64(vaddq_s64(v30, v20), vaddq_s64(v34, v26)), vaddq_s64(vaddq_s64(v32, v24), vaddq_s64(v36, v28)))));
      if (v9 == v14)
      {
        goto LABEL_30;
      }

      if ((v9 & 0x18) == 0)
      {
LABEL_26:
        v70 = v9 - v14;
        v71 = &AttrData->u8[v14];
        do
        {
          v72 = *v71++;
          if (v72 == 46)
          {
            ++v15;
          }

          --v70;
        }

        while (v70);
LABEL_30:
        v16 = v15 == 1;
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v54 = v14;
    v14 = v9 & 0xFFFFFFFFFFFFFFF8;
    v55 = 0uLL;
    v56 = v15;
    v57 = &AttrData->i8[v54];
    v58 = v54 - (v9 & 0xFFFFFFFFFFFFFFF8);
    v59 = vdupq_n_s64(1uLL);
    v60 = 0uLL;
    v61 = 0uLL;
    do
    {
      v62 = *v57++;
      v63 = vmovl_u8(vceq_s8(v62, 0x2E2E2E2E2E2E2E2ELL));
      v64 = vmovl_u16(*v63.i8);
      v65.i64[0] = v64.u32[0];
      v65.i64[1] = v64.u32[1];
      v66 = vandq_s8(v65, v59);
      v65.i64[0] = v64.u32[2];
      v65.i64[1] = v64.u32[3];
      v67 = vandq_s8(v65, v59);
      v68 = vmovl_high_u16(v63);
      v65.i64[0] = v68.u32[0];
      v65.i64[1] = v68.u32[1];
      v69 = vandq_s8(v65, v59);
      v65.i64[0] = v68.u32[2];
      v65.i64[1] = v68.u32[3];
      v61 = vaddq_s64(v61, vandq_s8(v65, v59));
      v60 = vaddq_s64(v60, v69);
      v55 = vaddq_s64(v55, v67);
      v56 = vaddq_s64(v56, v66);
      v58 += 8;
    }

    while (v58);
    v15 = vaddvq_s64(vaddq_s64(vaddq_s64(v56, v60), vaddq_s64(v55, v61)));
    if (v9 == v14)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v16 = 0;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_31:
  operator delete(v11);
LABEL_32:
  if (v9 >= a4 + 1)
  {
    v73 = a4 + 1;
  }

  else
  {
    v73 = v9;
  }

  v74 = &v73[AttrData];
  v75 = v9 - v73;
  if (v16)
  {
    AttrData = v74;
    v9 = v75;
  }

LABEL_37:
  result = (*(*a2 + 16))(a2);
  if (v9 > result[3] - result[4])
  {
    return llvm::raw_ostream::write(result, AttrData->i8, v9);
  }

  if (v9)
  {
    v77 = result;
    result = memcpy(result[4], AttrData, v9);
    v77[4] = v77[4] + v9;
  }

  return result;
}

uint64_t mlir::OpTrait::impl::foldIdempotent(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if ((*(this + 46) & 0x80) == 0 || *(this + 17) != 1)
  {
    v4 = *(this + 9);
    v5 = *(v4 + 24);
    if (v5 != *(v4 + 56))
    {
      return 0;
    }

    return v5 | 4;
  }

  v6 = *(*(this + 9) + 24);
  result = mlir::Value::getDefiningOp(&v6);
  if (!result)
  {
    return result;
  }

  if (*(this + 6) == *(result + 48))
  {
    v5 = *(*(this + 9) + 24);
    return v5 | 4;
  }

  return 0;
}

uint64_t mlir::OpTrait::impl::verifyOneOperand(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(this + 46) & 0x80) != 0 && *(this + 17) == 1)
  {
    return 1;
  }

  v18 = 257;
  mlir::Operation::emitOpError(this, v17, v22);
  if (v22[0])
  {
    v19 = 3;
    v20 = "requires a single operand";
    v21 = 25;
    v3 = &v19;
    v4 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v16 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v4 = v23;
        v3 = (v23 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v3 = &v19;
        v4 = v23;
      }
    }

    v5 = &v4[24 * v24];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v24;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v30;
      v9 = __p;
      if (v30 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v30 = v7;
      operator delete(v9);
    }

    v10 = v27;
    if (v27)
    {
      v11 = v28;
      v12 = v27;
      if (v28 != v27)
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
        v12 = v27;
      }

      v28 = v10;
      operator delete(v12);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v2;
}

uint64_t mlir::OpTrait::impl::verifyZeroRegions(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(this + 11) & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v18 = 257;
  mlir::Operation::emitOpError(this, v17, v22);
  if (v22[0])
  {
    v19 = 3;
    v20 = "requires zero regions";
    v21 = 21;
    v2 = &v19;
    v3 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v16 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v3 = v23;
        v2 = (v23 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v2 = &v19;
        v3 = v23;
      }
    }

    v4 = &v3[24 * v24];
    v5 = *v2;
    *(v4 + 2) = *(v2 + 2);
    *v4 = v5;
    ++v24;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v30;
      v9 = __p;
      if (v30 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v30 = v7;
      operator delete(v9);
    }

    v10 = v27;
    if (v27)
    {
      v11 = v28;
      v12 = v27;
      if (v28 != v27)
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
        v12 = v27;
      }

      v28 = v10;
      operator delete(v12);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v6;
}

uint64_t mlir::OpTrait::impl::verifyOneRegion(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(this + 11) & 0x7FFFFF) == 1)
  {
    return 1;
  }

  v18 = 257;
  mlir::Operation::emitOpError(this, v17, v22);
  if (v22[0])
  {
    v19 = 3;
    v20 = "requires one region";
    v21 = 19;
    v3 = &v19;
    v4 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v16 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v4 = v23;
        v3 = (v23 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v3 = &v19;
        v4 = v23;
      }
    }

    v5 = &v4[24 * v24];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v24;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v30;
      v9 = __p;
      if (v30 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v30 = v7;
      operator delete(v9);
    }

    v10 = v27;
    if (v27)
    {
      v11 = v28;
      v12 = v27;
      if (v28 != v27)
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
        v12 = v27;
      }

      v28 = v10;
      operator delete(v12);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v2;
}

uint64_t mlir::OpTrait::impl::verifyNRegions(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((*(this + 11) & 0x7FFFFF) == a2)
  {
    return 1;
  }

  v3 = a2;
  v31 = 257;
  mlir::Operation::emitOpError(this, v30, v35);
  if (v35[0])
  {
    v32 = 3;
    v33 = "expected ";
    v34 = 9;
    v4 = &v32;
    v5 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v32 && v36 + 24 * v37 > &v32)
      {
        v27 = &v32 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v5 = v36;
        v4 = (v36 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v4 = &v32;
        v5 = v36;
      }
    }

    v6 = &v5[24 * v37];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    v8 = ++v37;
    if (v35[0])
    {
      v32 = 5;
      v33 = v3;
      v9 = &v32;
      v10 = v36;
      if (v8 >= v38)
      {
        if (v36 <= &v32 && v36 + 24 * v8 > &v32)
        {
          v28 = &v32 - v36;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v8 + 1, 24);
          v10 = v36;
          v9 = (v36 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v8 + 1, 24);
          v9 = &v32;
          v10 = v36;
        }
      }

      v11 = &v10[24 * v37];
      v12 = *v9;
      *(v11 + 2) = *(v9 + 2);
      *v11 = v12;
      v13 = ++v37;
      if (v35[0])
      {
        v32 = 3;
        v33 = " regions";
        v34 = 8;
        v14 = &v32;
        v15 = v36;
        if (v13 >= v38)
        {
          if (v36 <= &v32 && v36 + 24 * v13 > &v32)
          {
            v29 = &v32 - v36;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v13 + 1, 24);
            v15 = v36;
            v14 = (v36 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v13 + 1, 24);
            v14 = &v32;
            v15 = v36;
          }
        }

        v16 = &v15[24 * v37];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v37;
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v43;
      v20 = __p;
      if (v43 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v43 = v18;
      operator delete(v20);
    }

    v21 = v40;
    if (v40)
    {
      v22 = v41;
      v23 = v40;
      if (v41 != v40)
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
        v23 = v40;
      }

      v41 = v21;
      operator delete(v23);
    }

    if (v36 != v39)
    {
      free(v36);
    }
  }

  return v2;
}

uint64_t mlir::OpTrait::impl::verifyAtLeastNRegions(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((*(this + 11) & 0x7FFFFFu) >= a2)
  {
    return 1;
  }

  v2 = a2;
  v31 = 257;
  mlir::Operation::emitOpError(this, v30, v35);
  if (v35[0])
  {
    v32 = 3;
    v33 = "expected ";
    v34 = 9;
    v3 = &v32;
    v4 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v32 && v36 + 24 * v37 > &v32)
      {
        v27 = &v32 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v4 = v36;
        v3 = (v36 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v3 = &v32;
        v4 = v36;
      }
    }

    v5 = &v4[24 * v37];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    v7 = ++v37;
    if (v35[0])
    {
      v32 = 5;
      v33 = v2;
      v8 = &v32;
      v9 = v36;
      if (v7 >= v38)
      {
        if (v36 <= &v32 && v36 + 24 * v7 > &v32)
        {
          v28 = &v32 - v36;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v7 + 1, 24);
          v9 = v36;
          v8 = (v36 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v7 + 1, 24);
          v8 = &v32;
          v9 = v36;
        }
      }

      v10 = &v9[24 * v37];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      v12 = ++v37;
      if (v35[0])
      {
        v32 = 3;
        v33 = " or more regions";
        v34 = 16;
        v13 = &v32;
        v14 = v36;
        if (v12 >= v38)
        {
          if (v36 <= &v32 && v36 + 24 * v12 > &v32)
          {
            v29 = &v32 - v36;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v12 + 1, 24);
            v14 = v36;
            v13 = (v36 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v12 + 1, 24);
            v13 = &v32;
            v14 = v36;
          }
        }

        v15 = &v14[24 * v37];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        ++v37;
      }
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v43;
      v20 = __p;
      if (v43 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v43 = v18;
      operator delete(v20);
    }

    v21 = v40;
    if (v40)
    {
      v22 = v41;
      v23 = v40;
      if (v41 != v40)
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
        v23 = v40;
      }

      v41 = v21;
      operator delete(v23);
    }

    if (v36 != v39)
    {
      free(v36);
    }
  }

  return v17;
}

uint64_t mlir::OpTrait::impl::verifyZeroResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!*(this + 9))
  {
    return 1;
  }

  v18 = 257;
  mlir::Operation::emitOpError(this, v17, v22);
  if (v22[0])
  {
    v19 = 3;
    v20 = "requires zero results";
    v21 = 21;
    v2 = &v19;
    v3 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v16 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v3 = v23;
        v2 = (v23 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v2 = &v19;
        v3 = v23;
      }
    }

    v4 = &v3[24 * v24];
    v5 = *v2;
    *(v4 + 2) = *(v2 + 2);
    *v4 = v5;
    ++v24;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v30;
      v9 = __p;
      if (v30 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v30 = v7;
      operator delete(v9);
    }

    v10 = v27;
    if (v27)
    {
      v11 = v28;
      v12 = v27;
      if (v28 != v27)
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
        v12 = v27;
      }

      v28 = v10;
      operator delete(v12);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v6;
}

uint64_t mlir::OpTrait::impl::verifyOneResult(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(this + 9) == 1)
  {
    return 1;
  }

  v18 = 257;
  mlir::Operation::emitOpError(this, v17, v22);
  if (v22[0])
  {
    v19 = 3;
    v20 = "requires one result";
    v21 = 19;
    v3 = &v19;
    v4 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v16 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v4 = v23;
        v3 = (v23 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v3 = &v19;
        v4 = v23;
      }
    }

    v5 = &v4[24 * v24];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v24;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v30;
      v9 = __p;
      if (v30 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v30 = v7;
      operator delete(v9);
    }

    v10 = v27;
    if (v27)
    {
      v11 = v28;
      v12 = v27;
      if (v28 != v27)
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
        v12 = v27;
      }

      v28 = v10;
      operator delete(v12);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v2;
}

uint64_t mlir::OpTrait::impl::verifyNResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(this + 9) == a2)
  {
    return 1;
  }

  v3 = a2;
  v31 = 257;
  mlir::Operation::emitOpError(this, v30, v35);
  if (v35[0])
  {
    v32 = 3;
    v33 = "expected ";
    v34 = 9;
    v4 = &v32;
    v5 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v32 && v36 + 24 * v37 > &v32)
      {
        v27 = &v32 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v5 = v36;
        v4 = (v36 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v4 = &v32;
        v5 = v36;
      }
    }

    v6 = &v5[24 * v37];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    v8 = ++v37;
    if (v35[0])
    {
      v32 = 5;
      v33 = v3;
      v9 = &v32;
      v10 = v36;
      if (v8 >= v38)
      {
        if (v36 <= &v32 && v36 + 24 * v8 > &v32)
        {
          v28 = &v32 - v36;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v8 + 1, 24);
          v10 = v36;
          v9 = (v36 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v8 + 1, 24);
          v9 = &v32;
          v10 = v36;
        }
      }

      v11 = &v10[24 * v37];
      v12 = *v9;
      *(v11 + 2) = *(v9 + 2);
      *v11 = v12;
      v13 = ++v37;
      if (v35[0])
      {
        v32 = 3;
        v33 = " results";
        v34 = 8;
        v14 = &v32;
        v15 = v36;
        if (v13 >= v38)
        {
          if (v36 <= &v32 && v36 + 24 * v13 > &v32)
          {
            v29 = &v32 - v36;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v13 + 1, 24);
            v15 = v36;
            v14 = (v36 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v13 + 1, 24);
            v14 = &v32;
            v15 = v36;
          }
        }

        v16 = &v15[24 * v37];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v37;
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v43;
      v20 = __p;
      if (v43 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v43 = v18;
      operator delete(v20);
    }

    v21 = v40;
    if (v40)
    {
      v22 = v41;
      v23 = v40;
      if (v41 != v40)
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
        v23 = v40;
      }

      v41 = v21;
      operator delete(v23);
    }

    if (v36 != v39)
    {
      free(v36);
    }
  }

  return v2;
}

uint64_t mlir::OpTrait::impl::verifyAtLeastNResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(this + 9) >= a2)
  {
    return 1;
  }

  v2 = a2;
  v31 = 257;
  mlir::Operation::emitOpError(this, v30, v35);
  if (v35[0])
  {
    v32 = 3;
    v33 = "expected ";
    v34 = 9;
    v3 = &v32;
    v4 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v32 && v36 + 24 * v37 > &v32)
      {
        v27 = &v32 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v4 = v36;
        v3 = (v36 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v3 = &v32;
        v4 = v36;
      }
    }

    v5 = &v4[24 * v37];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    v7 = ++v37;
    if (v35[0])
    {
      v32 = 5;
      v33 = v2;
      v8 = &v32;
      v9 = v36;
      if (v7 >= v38)
      {
        if (v36 <= &v32 && v36 + 24 * v7 > &v32)
        {
          v28 = &v32 - v36;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v7 + 1, 24);
          v9 = v36;
          v8 = (v36 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v7 + 1, 24);
          v8 = &v32;
          v9 = v36;
        }
      }

      v10 = &v9[24 * v37];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      v12 = ++v37;
      if (v35[0])
      {
        v32 = 3;
        v33 = " or more results";
        v34 = 16;
        v13 = &v32;
        v14 = v36;
        if (v12 >= v38)
        {
          if (v36 <= &v32 && v36 + 24 * v12 > &v32)
          {
            v29 = &v32 - v36;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v12 + 1, 24);
            v14 = v36;
            v13 = (v36 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v12 + 1, 24);
            v13 = &v32;
            v14 = v36;
          }
        }

        v15 = &v14[24 * v37];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        ++v37;
      }
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v43;
      v20 = __p;
      if (v43 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v43 = v18;
      operator delete(v20);
    }

    v21 = v40;
    if (v40)
    {
      v22 = v41;
      v23 = v40;
      if (v41 != v40)
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
        v23 = v40;
      }

      v41 = v21;
      operator delete(v23);
    }

    if (v36 != v39)
    {
      free(v36);
    }
  }

  return v17;
}

uint64_t mlir::OpTrait::impl::verifyIsTerminator(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2 && *(v2 + 32) == this)
  {
    return 1;
  }

  v13 = "must be the last operation in the parent block";
  v14 = 259;
  mlir::Operation::emitOpError(this, &v13, v15);
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

uint64_t mlir::OpTrait::impl::verifyZeroSuccessors(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!*(this + 10))
  {
    return 1;
  }

  v19 = "requires 0 successors but found ";
  v20 = 259;
  mlir::Operation::emitOpError(this, &v19, v23);
  if (v23[0])
  {
    v3 = *(this + 10);
    v21 = 5;
    v22 = v3;
    v4 = &v21;
    v5 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v21 && v24 + 24 * v25 > &v21)
      {
        v18 = &v21 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v5 = v24;
        v4 = (v24 + v18);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v4 = &v21;
        v5 = v24;
      }
    }

    v6 = &v5[24 * v25];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v25;
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v31;
      v11 = __p;
      if (v31 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v31 = v9;
      operator delete(v11);
    }

    v12 = v28;
    if (v28)
    {
      v13 = v29;
      v14 = v28;
      if (v29 != v28)
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
        v14 = v28;
      }

      v29 = v12;
      operator delete(v14);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return v8;
}

uint64_t mlir::OpTrait::impl::verifyOneSuccessor(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(this + 10) == 1)
  {

    return verifyTerminatorSuccessors(this);
  }

  else
  {
    v19 = "requires 1 successor but found ";
    v20 = 259;
    mlir::Operation::emitOpError(this, &v19, v23);
    if (v23[0])
    {
      v4 = *(this + 10);
      v21 = 5;
      v22 = v4;
      v5 = &v21;
      v6 = v24;
      if (v25 >= v26)
      {
        if (v24 <= &v21 && v24 + 24 * v25 > &v21)
        {
          v18 = &v21 - v24;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
          v6 = v24;
          v5 = (v24 + v18);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
          v5 = &v21;
          v6 = v24;
        }
      }

      v7 = &v6[24 * v25];
      v8 = *v5;
      *(v7 + 2) = *(v5 + 2);
      *v7 = v8;
      ++v25;
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
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

    return v9;
  }
}

uint64_t verifyTerminatorSuccessors(mlir::Operation *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 2);
  if (v2)
  {
    Parent = mlir::Block::getParent(v2);
    mlir::SuccessorRange::SuccessorRange(&v18, a1);
    v4 = v19;
    if (!v19)
    {
      return 1;
    }
  }

  else
  {
    Parent = 0;
    mlir::SuccessorRange::SuccessorRange(&v18, a1);
    v4 = v19;
    if (!v19)
    {
      return 1;
    }
  }

  for (i = (v18 + 24); mlir::Block::getParent(*i) == Parent; i += 4)
  {
    if (!--v4)
    {
      return 1;
    }
  }

  v16 = "reference to block defined in another region";
  v17 = 259;
  mlir::Operation::emitError(a1, &v16, &v18);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v18);
  if (v18)
  {
    mlir::InFlightDiagnostic::report(&v18);
  }

  if (v27)
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

uint64_t mlir::OpTrait::impl::verifyNSuccessors(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(this + 10) == a2)
  {

    return verifyTerminatorSuccessors(this);
  }

  else
  {
    v3 = a2;
    v32 = "requires ";
    v33 = 259;
    mlir::Operation::emitOpError(this, &v32, v37);
    if (v37[0])
    {
      v34 = 5;
      v35 = v3;
      v5 = &v34;
      v6 = v38;
      if (v39 >= v40)
      {
        if (v38 <= &v34 && v38 + 24 * v39 > &v34)
        {
          v29 = &v34 - v38;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
          v6 = v38;
          v5 = (v38 + v29);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
          v5 = &v34;
          v6 = v38;
        }
      }

      v7 = &v6[24 * v39];
      v8 = *v5;
      *(v7 + 2) = *(v5 + 2);
      *v7 = v8;
      v9 = ++v39;
      if (v37[0])
      {
        v34 = 3;
        v35 = " successors but found ";
        v36 = 22;
        v10 = &v34;
        v11 = v38;
        if (v9 >= v40)
        {
          if (v38 <= &v34 && v38 + 24 * v9 > &v34)
          {
            v30 = &v34 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v9 + 1, 24);
            v11 = v38;
            v10 = (v38 + v30);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v9 + 1, 24);
            v10 = &v34;
            v11 = v38;
          }
        }

        v12 = &v11[24 * v39];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        v14 = ++v39;
        if (v37[0])
        {
          v15 = *(this + 10);
          v34 = 5;
          v35 = v15;
          v16 = &v34;
          v17 = v38;
          if (v14 >= v40)
          {
            if (v38 <= &v34 && v38 + 24 * v14 > &v34)
            {
              v31 = &v34 - v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v14 + 1, 24);
              v17 = v38;
              v16 = (v38 + v31);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v14 + 1, 24);
              v16 = &v34;
              v17 = v38;
            }
          }

          v18 = &v17[24 * v39];
          v19 = *v16;
          *(v18 + 2) = *(v16 + 2);
          *v18 = v19;
          ++v39;
        }
      }
    }

    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v47 == 1)
    {
      if (v46 != &v47)
      {
        free(v46);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v45;
        v23 = __p;
        if (v45 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v45 = v21;
        operator delete(v23);
      }

      v24 = v42;
      if (v42)
      {
        v25 = v43;
        v26 = v42;
        if (v43 != v42)
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
          v26 = v42;
        }

        v43 = v24;
        operator delete(v26);
      }

      if (v38 != v41)
      {
        free(v38);
      }
    }

    return v20;
  }
}

uint64_t mlir::OpTrait::impl::verifyAtLeastNSuccessors(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(this + 10) >= a2)
  {

    return verifyTerminatorSuccessors(this);
  }

  else
  {
    v2 = a2;
    v32 = "requires at least ";
    v33 = 259;
    mlir::Operation::emitOpError(this, &v32, v37);
    if (v37[0])
    {
      v34 = 5;
      v35 = v2;
      v4 = &v34;
      v5 = v38;
      if (v39 >= v40)
      {
        if (v38 <= &v34 && v38 + 24 * v39 > &v34)
        {
          v29 = &v34 - v38;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
          v5 = v38;
          v4 = (v38 + v29);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
          v4 = &v34;
          v5 = v38;
        }
      }

      v6 = &v5[24 * v39];
      v7 = *v4;
      *(v6 + 2) = *(v4 + 2);
      *v6 = v7;
      v8 = ++v39;
      if (v37[0])
      {
        v34 = 3;
        v35 = " successors but found ";
        v36 = 22;
        v9 = &v34;
        v10 = v38;
        if (v8 >= v40)
        {
          if (v38 <= &v34 && v38 + 24 * v8 > &v34)
          {
            v30 = &v34 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v8 + 1, 24);
            v10 = v38;
            v9 = (v38 + v30);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v8 + 1, 24);
            v9 = &v34;
            v10 = v38;
          }
        }

        v11 = &v10[24 * v39];
        v12 = *v9;
        *(v11 + 2) = *(v9 + 2);
        *v11 = v12;
        v13 = ++v39;
        if (v37[0])
        {
          v14 = *(this + 10);
          v34 = 5;
          v35 = v14;
          v15 = &v34;
          v16 = v38;
          if (v13 >= v40)
          {
            if (v38 <= &v34 && v38 + 24 * v13 > &v34)
            {
              v31 = &v34 - v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v13 + 1, 24);
              v16 = v38;
              v15 = (v38 + v31);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v13 + 1, 24);
              v15 = &v34;
              v16 = v38;
            }
          }

          v17 = &v16[24 * v39];
          v18 = *v15;
          *(v17 + 2) = *(v15 + 2);
          *v17 = v18;
          ++v39;
        }
      }
    }

    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v47 == 1)
    {
      if (v46 != &v47)
      {
        free(v46);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v45;
        v22 = __p;
        if (v45 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v45 = v20;
        operator delete(v22);
      }

      v23 = v42;
      if (v42)
      {
        v24 = v43;
        v25 = v42;
        if (v43 != v42)
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
          v25 = v42;
        }

        v43 = v23;
        operator delete(v25);
      }

      if (v38 != v41)
      {
        free(v38);
      }
    }

    return v19;
  }
}

BOOL mlir::OpTrait::impl::verifyValueSizeAttr(uint64_t a1, const void *a2, const char *a3, const char *a4, const char *a5, const char *a6)
{
  v115 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 47) || (v12 = (*(**(a1 + 48) + 80))(*(a1 + 48), a1, a2, a3), (v13 & 1) == 0))
  {
    v12 = mlir::DictionaryAttr::get(a1 + 56, a2, a3);
  }

  if (!v12)
  {
    v98 = 0;
    goto LABEL_16;
  }

  v14 = v12;
  if (mlir::detail::DenseArrayAttrImpl<int>::classof(v12))
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v98 = v15;
  if (!v15)
  {
LABEL_16:
    v96[0] = "requires dense i32 array attribute '";
    v97 = 259;
    mlir::Operation::emitOpError(a1, v96, &v103);
    if (v103)
    {
      v102 = 261;
      v99 = a2;
      v100 = a3;
      mlir::Diagnostic::operator<<(v104, &v99);
      if (v103)
      {
        LODWORD(v99) = 3;
        v100 = "'";
        v101 = 1;
        v22 = &v99;
        v23 = v105;
        if (v106 >= v107)
        {
          if (v105 <= &v99 && v105 + 24 * v106 > &v99)
          {
            v88 = &v99 - v105;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
            v23 = v105;
            v22 = (v105 + v88);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
            v22 = &v99;
            v23 = v105;
          }
        }

        v24 = &v23[24 * v106];
        v25 = *v22;
        *(v24 + 2) = v22[2];
        *v24 = v25;
        ++v106;
      }
    }

    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v103);
    if (v103)
    {
      mlir::InFlightDiagnostic::report(&v103);
    }

    if (v114 == 1)
    {
      if (v113 != &v114)
      {
        free(v113);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v112;
        v29 = __p;
        if (v112 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v112 = v27;
        operator delete(v29);
      }

      v30 = v109;
      if (!v109)
      {
        goto LABEL_96;
      }

      v31 = v110;
      v32 = v109;
      if (v110 == v109)
      {
        goto LABEL_95;
      }

      do
      {
        v34 = *--v31;
        v33 = v34;
        *v31 = 0;
        if (v34)
        {
          MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
        }
      }

      while (v31 != v30);
      goto LABEL_94;
    }

    return v26;
  }

  v16 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v98);
  if (v17)
  {
    v18 = 0;
    while ((*(v16 + v18) & 0x80000000) == 0)
    {
      v18 += 4;
      if (4 * v17 == v18)
      {
        v19 = (v17 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        if (v19 <= 6)
        {
          v20 = 0;
          v21 = v16;
          goto LABEL_61;
        }

        v46 = v19 + 1;
        v47 = (v19 + 1) & 0x7FFFFFFFFFFFFFF8;
        v21 = (v16 + 4 * v47);
        v48 = (v16 + 16);
        v49 = 0uLL;
        v50 = v47;
        v51 = 0uLL;
        do
        {
          v49 = vaddq_s32(v48[-1], v49);
          v51 = vaddq_s32(*v48, v51);
          v48 += 2;
          v50 -= 8;
        }

        while (v50);
        v20 = vaddvq_s32(vaddq_s32(v51, v49));
        if (v46 != v47)
        {
          do
          {
LABEL_61:
            v52 = *v21++;
            v20 += v52;
          }

          while (v21 != (v16 + 4 * v17));
        }

        v35 = v20;
        if (v20 == a6)
        {
          return 1;
        }

        goto LABEL_63;
      }
    }

    v96[0] = "'";
    v97 = 259;
    mlir::Operation::emitOpError(a1, v96, &v103);
    if (v103)
    {
      v102 = 261;
      v99 = a2;
      v100 = a3;
      mlir::Diagnostic::operator<<(v104, &v99);
      if (v103)
      {
        LODWORD(v99) = 3;
        v100 = "' attribute cannot have negative elements";
        v101 = 41;
        v36 = &v99;
        v37 = v105;
        if (v106 >= v107)
        {
          if (v105 <= &v99 && v105 + 24 * v106 > &v99)
          {
            v90 = &v99 - v105;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
            v37 = v105;
            v36 = (v105 + v90);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
            v36 = &v99;
            v37 = v105;
          }
        }

        v38 = &v37[24 * v106];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v106;
      }
    }

    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v103);
    if (v103)
    {
      mlir::InFlightDiagnostic::report(&v103);
    }

    if (v114 != 1)
    {
      return v26;
    }

    if (v113 != &v114)
    {
      free(v113);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v112;
      v42 = __p;
      if (v112 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v112 = v40;
      operator delete(v42);
    }

    v30 = v109;
    if (!v109)
    {
      goto LABEL_96;
    }

    v43 = v110;
    v32 = v109;
    if (v110 == v109)
    {
      goto LABEL_95;
    }

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

    while (v43 != v30);
    goto LABEL_94;
  }

  v35 = 0;
  if (!a6)
  {
    return 1;
  }

LABEL_63:
  v97 = 257;
  mlir::Operation::emitOpError(a1, v96, &v103);
  if (v103)
  {
    v102 = 261;
    v99 = a4;
    v100 = a5;
    mlir::Diagnostic::operator<<(v104, &v99);
    if (v103)
    {
      LODWORD(v99) = 3;
      v100 = " count (";
      v101 = 8;
      v53 = &v99;
      v54 = v105;
      if (v106 >= v107)
      {
        if (v105 <= &v99 && v105 + 24 * v106 > &v99)
        {
          v89 = &v99 - v105;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
          v54 = v105;
          v53 = (v105 + v89);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
          v53 = &v99;
          v54 = v105;
        }
      }

      v55 = &v54[24 * v106];
      v56 = *v53;
      *(v55 + 2) = v53[2];
      *v55 = v56;
      v57 = ++v106;
      if (v103)
      {
        LODWORD(v99) = 5;
        v100 = a6;
        v58 = &v99;
        v59 = v105;
        if (v57 >= v107)
        {
          if (v105 <= &v99 && v105 + 24 * v57 > &v99)
          {
            v91 = &v99 - v105;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v57 + 1, 24);
            v59 = v105;
            v58 = (v105 + v91);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v57 + 1, 24);
            v58 = &v99;
            v59 = v105;
          }
        }

        v60 = &v59[24 * v106];
        v61 = *v58;
        *(v60 + 2) = v58[2];
        *v60 = v61;
        v62 = ++v106;
        if (v103)
        {
          LODWORD(v99) = 3;
          v100 = ") does not match with the total size (";
          v101 = 38;
          v63 = &v99;
          v64 = v105;
          if (v62 >= v107)
          {
            if (v105 <= &v99 && v105 + 24 * v62 > &v99)
            {
              v92 = &v99 - v105;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v62 + 1, 24);
              v64 = v105;
              v63 = (v105 + v92);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v62 + 1, 24);
              v63 = &v99;
              v64 = v105;
            }
          }

          v65 = &v64[24 * v106];
          v66 = *v63;
          *(v65 + 2) = v63[2];
          *v65 = v66;
          v67 = ++v106;
          if (v103)
          {
            LODWORD(v99) = 5;
            v100 = v35;
            v68 = &v99;
            v69 = v105;
            if (v67 >= v107)
            {
              if (v105 <= &v99 && v105 + 24 * v67 > &v99)
              {
                v93 = &v99 - v105;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v67 + 1, 24);
                v69 = v105;
                v68 = (v105 + v93);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v67 + 1, 24);
                v68 = &v99;
                v69 = v105;
              }
            }

            v70 = &v69[24 * v106];
            v71 = *v68;
            *(v70 + 2) = v68[2];
            *v70 = v71;
            v72 = ++v106;
            if (v103)
            {
              LODWORD(v99) = 3;
              v100 = ") specified in attribute '";
              v101 = 26;
              v73 = &v99;
              v74 = v105;
              if (v72 >= v107)
              {
                if (v105 <= &v99 && v105 + 24 * v72 > &v99)
                {
                  v94 = &v99 - v105;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v72 + 1, 24);
                  v74 = v105;
                  v73 = (v105 + v94);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v72 + 1, 24);
                  v73 = &v99;
                  v74 = v105;
                }
              }

              v75 = &v74[24 * v106];
              v76 = *v73;
              *(v75 + 2) = v73[2];
              *v75 = v76;
              ++v106;
              if (v103)
              {
                v102 = 261;
                v99 = a2;
                v100 = a3;
                mlir::Diagnostic::operator<<(v104, &v99);
                if (v103)
                {
                  LODWORD(v99) = 3;
                  v100 = "'";
                  v101 = 1;
                  v77 = &v99;
                  v78 = v105;
                  if (v106 >= v107)
                  {
                    if (v105 <= &v99 && v105 + 24 * v106 > &v99)
                    {
                      v95 = &v99 - v105;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
                      v78 = v105;
                      v77 = (v105 + v95);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
                      v77 = &v99;
                      v78 = v105;
                    }
                  }

                  v79 = &v78[24 * v106];
                  v80 = *v77;
                  *(v79 + 2) = v77[2];
                  *v79 = v80;
                  ++v106;
                }
              }
            }
          }
        }
      }
    }
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v103);
  if (v103)
  {
    mlir::InFlightDiagnostic::report(&v103);
  }

  if (v114 == 1)
  {
    if (v113 != &v114)
    {
      free(v113);
    }

    v81 = __p;
    if (__p)
    {
      v82 = v112;
      v83 = __p;
      if (v112 != __p)
      {
        do
        {
          v82 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v82 - 1);
        }

        while (v82 != v81);
        v83 = __p;
      }

      v112 = v81;
      operator delete(v83);
    }

    v30 = v109;
    if (!v109)
    {
      goto LABEL_96;
    }

    v84 = v110;
    v32 = v109;
    if (v110 == v109)
    {
LABEL_95:
      v110 = v30;
      operator delete(v32);
LABEL_96:
      if (v105 != v108)
      {
        free(v105);
      }

      return v26;
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

    while (v84 != v30);
LABEL_94:
    v32 = v109;
    goto LABEL_95;
  }

  return v26;
}

BOOL mlir::OpTrait::impl::verifyNoRegionArguments(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v3 = (((this + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
  v4 = 24 * (v2 & 0x7FFFFF);
  while (1)
  {
    if (v3 != *v3)
    {
      v5 = v3[1];
      v6 = v5 ? v5 - 8 : 0;
      if (((*(v6 + 56) - *(v6 + 48)) & 0x7FFFFFFF8) != 0)
      {
        break;
      }
    }

    v3 += 3;
    v4 -= 24;
    if (!v4)
    {
      return 1;
    }
  }

  if ((v2 & 0x7FFFFE) != 0)
  {
    v35[0] = "region #";
    v36 = 259;
    mlir::Operation::emitOpError(this, v35, v40);
    RegionNumber = mlir::Region::getRegionNumber(v3);
    if (v40[0])
    {
      v37 = 5;
      v38 = RegionNumber;
      v8 = &v37;
      v9 = v41;
      if (v42 >= v43)
      {
        if (v41 <= &v37 && v41 + 24 * v42 > &v37)
        {
          v33 = &v37 - v41;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
          v9 = v41;
          v8 = (v41 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
          v8 = &v37;
          v9 = v41;
        }
      }

      v10 = &v9[24 * v42];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      v12 = ++v42;
      if (v40[0])
      {
        v37 = 3;
        v38 = " should have no arguments";
        v39 = 25;
        v13 = &v37;
        v14 = v41;
        if (v12 >= v43)
        {
          if (v41 <= &v37 && v41 + 24 * v12 > &v37)
          {
            v34 = &v37 - v41;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v12 + 1, 24);
            v14 = v41;
            v13 = (v41 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v12 + 1, 24);
            v13 = &v37;
            v14 = v41;
          }
        }

        v15 = &v14[24 * v42];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        ++v42;
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
    v18 = result;
    if (v40[0])
    {
      mlir::InFlightDiagnostic::report(v40);
      result = v18;
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
        result = v18;
      }

      v19 = __p;
      if (__p)
      {
        v20 = v48;
        v21 = __p;
        if (v48 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v48 = v19;
        operator delete(v21);
        result = v18;
      }

      v22 = v45;
      if (!v45)
      {
        goto LABEL_51;
      }

      v23 = v46;
      v24 = v45;
      if (v46 == v45)
      {
LABEL_50:
        v46 = v22;
        operator delete(v24);
        result = v18;
LABEL_51:
        if (v41 != v44)
        {
          free(v41);
          return v18;
        }

        return result;
      }

      do
      {
        v26 = *--v23;
        v25 = v26;
        *v23 = 0;
        if (v26)
        {
          MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
        }
      }

      while (v23 != v22);
LABEL_49:
      v24 = v45;
      goto LABEL_50;
    }
  }

  else
  {
    v35[0] = "region should have no arguments";
    v36 = 259;
    mlir::Operation::emitOpError(this, v35, v40);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
    v18 = result;
    if (v40[0])
    {
      mlir::InFlightDiagnostic::report(v40);
      result = v18;
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
        result = v18;
      }

      v27 = __p;
      if (__p)
      {
        v28 = v48;
        v29 = __p;
        if (v48 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v48 = v27;
        operator delete(v29);
        result = v18;
      }

      v22 = v45;
      if (!v45)
      {
        goto LABEL_51;
      }

      v30 = v46;
      v24 = v45;
      if (v46 == v45)
      {
        goto LABEL_50;
      }

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

      while (v30 != v22);
      goto LABEL_49;
    }
  }

  return result;
}

BOOL mlir::OpTrait::impl::verifyIsIsolatedFromAbove(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v54[8] = *MEMORY[0x1E69E9840];
  v52 = v54;
  v53 = 0x800000000;
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) == 0)
  {
LABEL_31:
    v20 = 1;
    goto LABEL_54;
  }

  v4 = (((this + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
  v5 = (v4 + 24 * (v2 & 0x7FFFFF));
  while (1)
  {
    if (HIDWORD(v53))
    {
      *v52 = v4;
      v6 = __CFADD__(v53, 1);
      v7 = v53 + 1;
      LODWORD(v53) = v53 + 1;
      if (!v6)
      {
        break;
      }

      goto LABEL_26;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, 1uLL, 8);
    v52[v53] = v4;
    v6 = __CFADD__(v53, 1);
    v7 = v53 + 1;
    LODWORD(v53) = v53 + 1;
    if (!v6)
    {
      break;
    }

LABEL_26:
    v4 = (v4 + 24);
    if (v4 == v5)
    {
      goto LABEL_31;
    }
  }

  while (1)
  {
    v8 = v52[v7 - 1];
    LODWORD(v53) = v7 - 1;
    mlir::Region::OpIterator::OpIterator(&v42, v8, 0);
    mlir::Region::OpIterator::OpIterator(&v38, v8, 1);
    v9 = v43;
    v37 = v43;
    v36 = v42;
    v34 = v42;
    v35 = v43;
    v10 = v39;
    if (v43 != v39)
    {
      break;
    }

LABEL_25:
    v7 = v53;
    if (!v53)
    {
      goto LABEL_26;
    }
  }

  while (1)
  {
    v11 = *(v9 + 44);
    if ((v11 & 0x800000) != 0)
    {
      v12 = *(v9 + 68);
      if (v12)
      {
        break;
      }
    }

LABEL_15:
    if ((v11 & 0x7FFFFF) != 0)
    {
      {
      }

      if (((*(**(v9 + 48) + 32))(*(v9 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
      {
        v15 = *(v9 + 44);
        v16 = v15 & 0x7FFFFF;
        if ((v15 & 0x7FFFFF) != 0)
        {
          v17 = ((v9 + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v9 + 40);
          v18 = v53;
          v19 = 24 * v16;
          do
          {
            if (v18 >= HIDWORD(v53))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v18 + 1, 8);
              v18 = v53;
            }

            v52[v18] = v17;
            v18 = v53 + 1;
            LODWORD(v53) = v53 + 1;
            v17 += 24;
            v19 -= 24;
          }

          while (v19);
        }
      }
    }

    mlir::Region::OpIterator::operator++(&v34);
    v9 = v35;
    if (v35 == v10)
    {
      goto LABEL_25;
    }
  }

  v13 = (*(v9 + 72) + 24);
  while (1)
  {
    v33 = *v13;
    ParentRegion = mlir::Value::getParentRegion(&v33);
    if (!ParentRegion)
    {
      break;
    }

    if (v4 != ParentRegion && (mlir::Region::isProperAncestor(v4, ParentRegion) & 1) == 0)
    {
      v40 = "using value defined outside the region";
      v41 = 259;
      mlir::Operation::emitOpError(v9, &v40, &v42);
      mlir::Diagnostic::attachNote(&v42 + 1, *(this + 3), 1);
    }

    v13 += 4;
    if (!--v12)
    {
      v11 = *(v9 + 44);
      goto LABEL_15;
    }
  }

  v31 = "operation's operand is unlinked";
  v32 = 259;
  mlir::emitError(*(v9 + 24), &v31, &v42);
  Context = mlir::Attribute::getContext((v9 + 24));
  if (mlir::MLIRContext::shouldPrintOpOnDiagnostic(Context))
  {
    mlir::Diagnostic::attachNote(&v42 + 1, *(v9 + 24), 1);
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
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

    v22 = __p;
    if (__p)
    {
      v23 = v49;
      v24 = __p;
      if (v49 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v49 = v22;
      operator delete(v24);
    }

    v25 = v46;
    if (v46)
    {
      v26 = v47;
      v27 = v46;
      if (v47 != v46)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            MEMORY[0x1AC55A040](v28, 0x1000C8077774924);
          }
        }

        while (v26 != v25);
        v27 = v46;
      }

      v47 = v25;
      operator delete(v27);
    }

    if (v44 != &v45)
    {
      free(v44);
    }
  }

LABEL_54:
  if (v52 != v54)
  {
    free(v52);
  }

  return v20;
}

mlir::Operation *mlir::impl::ensureRegionTerminator(uint64_t *Block, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v9 = a2 + 16;
  v17 = *(a2 + 16);
  v10 = *Block;
  if (*Block == Block)
  {
    mlir::ValueRange::ValueRange(v18, 0, 0);
    mlir::OpBuilder::createBlock(a2, Block, 0, v18[0], v18[1], 0, 0);
  }

  if (v10)
  {
    v12 = v10 - 8;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v12 + 32);
  if (v13 == v12 + 32)
  {
    goto LABEL_10;
  }

  {
    v16 = v13;
    v13 = v16;
  }

  result = (*(**(v13 + 48) + 32))(*(v13 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id);
  if ((result & 1) == 0)
  {
LABEL_10:
    *(a2 + 16) = v12;
    *(a2 + 24) = v12 + 32;
    v15 = a4(a5, a2, a3);
    result = mlir::OpBuilder::insert(a2, v15);
  }

  if (v17)
  {
    *v9 = v17;
  }

  else
  {
    *v9 = 0;
    *(v9 + 8) = 0;
  }

  return result;
}

mlir::Operation *mlir::impl::ensureRegionTerminator(uint64_t *a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v6[0] = *a2;
  memset(&v6[1], 0, 24);
  return mlir::impl::ensureRegionTerminator(a1, v6, a3, a4, a5);
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::DialectFoldInterface>(uint64_t a1)
{
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    mlir::Dialect::getRegisteredInterface<mlir::DialectFoldInterface>();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

const char *llvm::getTypeName<mlir::DialectFoldInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectFoldInterface]";
  v6 = 76;
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>,mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 16 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

void *llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::grow(uint64_t a1, int a2)
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
        goto LABEL_41;
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
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = ((v24 >> 4) ^ (v24 >> 9)) & v16;
          v23 = &result[2 * v25];
          v26 = *v23;
          if (v24 != *v23)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = &result[2 * (v30 & v16)];
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = (*a1 + 16 * (v14 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  v7[1] = 0;
  return v7 + 1;
}

uint64_t *std::__stable_partition_impl<std::_ClassicAlgPolicy,mlir::OpTrait::impl::foldCommutative(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &,mlir::OpOperand *,long,std::pair<mlir::OpOperand *,long>>(uint64_t *a1, uint64_t *a2, uint64_t **a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6 = a2;
  if (a4 == 3)
  {
    v8 = a1 + 4;
    if (*(**a3 + ((a1 - *a3[1] + 32) >> 2)))
    {
      v17 = a1;
      std::swap[abi:nn200100]<mlir::OpOperand>(a1 + 4, a2);
      std::swap[abi:nn200100]<mlir::OpOperand>(v17, v8);
      return v8;
    }

    std::swap[abi:nn200100]<mlir::OpOperand>(a1, a1 + 4);
    a1 = v8;
LABEL_50:
    std::swap[abi:nn200100]<mlir::OpOperand>(a1, v6);
    return v6;
  }

  if (a4 == 2)
  {
    goto LABEL_50;
  }

  if (a6 < a4)
  {
    v7 = a4 / 2;
    v8 = &a1[4 * (a4 / 2)];
    v9 = **a3;
    v10 = *a3[1];
    v11 = v8 - 4;
    if (*(v9 + ((v8 - v10 - 32) >> 2)))
    {
      v12 = 32 - 32 * v7;
      v13 = &a1[4 * v7 - 8] - v10;
      v14 = a4 / 2;
      while (v12)
      {
        --v14;
        v15 = *(v9 + (v13 >> 2));
        v12 += 32;
        v13 -= 32;
        if (!v15)
        {
          v16 = a4;
          v11 = (a1 - v12);
          goto LABEL_53;
        }
      }

      v45 = a6;
      v44 = a5;
      v48 = a1;
      v49 = a4 - v7;
      v50 = v8 - v10;
      if (!*(v9 + ((v8 - v10) >> 2)))
      {
LABEL_86:
        v70 = (v6 + 4);
        v71 = v50 + 32;
        v51 = v8;
        v52 = v44;
        v53 = v45;
        while (1)
        {
          v51 += 4;
          if (v51 == v6)
          {
            goto LABEL_90;
          }

          --v49;
          v72 = *(v9 + (v71 >> 2));
          v71 += 32;
          if (v72)
          {
            goto LABEL_89;
          }
        }
      }
    }

    else
    {
      v16 = a4;
      v14 = a4 / 2;
LABEL_53:
      v43 = a3;
      v44 = a5;
      v45 = a6;
      v46 = std::__stable_partition_impl<std::_ClassicAlgPolicy,mlir::OpTrait::impl::foldCommutative(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &,mlir::OpOperand *,long,std::pair<mlir::OpOperand *,long>>(a1, v11, a3, v14, a5, a6);
      a3 = v43;
      v9 = **v43;
      v47 = v16;
      v48 = v46;
      v49 = v47 - v7;
      v50 = v8 - *v43[1];
      if (!*(v9 + (v50 >> 2)))
      {
        goto LABEL_86;
      }
    }

    v51 = v8;
    v52 = v44;
    v53 = v45;
LABEL_89:
    v70 = std::__stable_partition_impl<std::_ClassicAlgPolicy,mlir::OpTrait::impl::foldCommutative(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &,mlir::OpOperand *,long,std::pair<mlir::OpOperand *,long>>(v51, v6, a3, v49, v52, v53);
LABEL_90:
    if (v48 == v8)
    {
      return v70;
    }

    if (v8 == v70)
    {
      return v48;
    }

    std::swap[abi:nn200100]<mlir::OpOperand>(v48, v8);
    v6 = v48 + 4;
    for (i = v8 + 4; i != v70; i += 4)
    {
      if (v6 == v8)
      {
        v8 = i;
      }

      std::swap[abi:nn200100]<mlir::OpOperand>(v6, i);
      v6 += 4;
    }

    if (v6 != v8)
    {
      v74 = v6;
      v75 = v8;
      while (1)
      {
        std::swap[abi:nn200100]<mlir::OpOperand>(v74, v8);
        v8 += 4;
        v76 = v74 + 4 == v75;
        if (v8 == v70)
        {
          if (v74 + 4 == v75)
          {
            return v6;
          }

          v8 = v75 + 4;
          for (v74 += 8; ; v74 += 4)
          {
            std::swap[abi:nn200100]<mlir::OpOperand>(v74 - 4, v75);
            v76 = v74 == v75;
            if (v8 != v70)
            {
              break;
            }

            if (v74 == v75)
            {
              return v6;
            }
          }
        }

        else
        {
          v74 += 4;
        }

        if (v76)
        {
          v75 = v8;
        }
      }
    }

    return v8;
  }

  *a5 = 0;
  a5[1] = 0;
  v18 = a1[1];
  a5[2] = a1[2];
  if (v18)
  {
    v19 = *a1;
    *v18 = *a1;
    if (v19)
    {
      *(v19 + 8) = v18;
    }
  }

  a1[1] = 0;
  *a5 = 0;
  a5[1] = 0;
  a5[3] = 0;
  v20 = a1[1];
  if (v20)
  {
    v21 = *a1;
    *v20 = *a1;
    if (v21)
    {
      *(v21 + 8) = v20;
    }
  }

  a1[1] = 0;
  *a5 = 0;
  a5[1] = 0;
  a5[3] = a1[3];
  a1[3] = 0;
  v22 = a5[3];
  if (v22)
  {
    v23 = *v22;
    *a5 = *v22;
    a5[1] = v22;
    if (v23)
    {
      *(v23 + 8) = a5;
    }

    *v22 = a5;
  }

  v24 = a5 + 4;
  v25 = a1 + 4;
  v26 = 1;
  if (a1 + 4 != a2)
  {
    v27 = a1 + 4;
    do
    {
      while (*(**a3 + ((v27 - *a3[1]) >> 2)))
      {
        *v24 = 0;
        v24[1] = 0;
        v28 = v25[1];
        v24[2] = v25[2];
        if (v28)
        {
          v29 = *v25;
          *v28 = *v25;
          if (v29)
          {
            *(v29 + 8) = v28;
          }
        }

        v25[1] = 0;
        *v24 = 0;
        v24[1] = 0;
        v24[3] = 0;
        v30 = v25[1];
        if (v30)
        {
          v31 = *v25;
          *v30 = *v25;
          if (v31)
          {
            *(v31 + 8) = v30;
          }
        }

        v25[1] = 0;
        *v24 = 0;
        v24[1] = 0;
        v24[3] = v25[3];
        v25[3] = 0;
        v32 = v24[3];
        if (v32)
        {
          v33 = *v32;
          *v24 = *v32;
          v24[1] = v32;
          if (v33)
          {
            *(v33 + 8) = v24;
          }

          *v32 = v24;
        }

        ++v26;
        v24 += 4;
        v25 += 4;
        v27 += 4;
        if (v25 == a2)
        {
          goto LABEL_47;
        }
      }

      v34 = a1[1];
      if (v34)
      {
        v35 = *a1;
        *v34 = *a1;
        if (v35)
        {
          *(v35 + 8) = v34;
        }
      }

      v36 = v25[1];
      if (v36)
      {
        v37 = *v25;
        *v36 = *v25;
        if (v37)
        {
          *(v37 + 8) = v36;
        }
      }

      v25[1] = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[3] = v25[3];
      v25[3] = 0;
      v38 = a1[3];
      if (v38)
      {
        v39 = *v38;
        *a1 = *v38;
        a1[1] = v38;
        if (v39)
        {
          *(v39 + 8) = a1;
        }

        *v38 = a1;
      }

      a1 += 4;
      v25 += 4;
      v27 += 4;
    }

    while (v25 != a2);
LABEL_47:
    v40 = v25 - 4;
    v41 = a1[1];
    if (!v41)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  v40 = a1;
  v41 = a1[1];
  if (v41)
  {
LABEL_56:
    v54 = *a1;
    *v41 = *a1;
    if (v54)
    {
      *(v54 + 8) = v41;
    }
  }

LABEL_58:
  v55 = v40[5];
  if (v55)
  {
    v56 = *v25;
    *v55 = v56;
    if (v56)
    {
      *(v56 + 8) = v55;
    }
  }

  v40[5] = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[3] = v40[7];
  v40[7] = 0;
  v57 = a1[3];
  if (v57)
  {
    v58 = *v57;
    *a1 = *v57;
    a1[1] = v57;
    if (v58)
    {
      *(v58 + 8) = a1;
    }

    *v57 = a1;
  }

  v6 = a1 + 4;
  if (v24 > a5)
  {
    v59 = a5;
    v60 = a1 + 4;
    do
    {
      v61 = v60[1];
      if (v61)
      {
        v62 = *v60;
        *v61 = *v60;
        if (v62)
        {
          *(v62 + 8) = v61;
        }
      }

      v63 = v59[1];
      if (v63)
      {
        v64 = *v59;
        *v63 = *v59;
        if (v64)
        {
          *(v64 + 8) = v63;
        }
      }

      v59[1] = 0;
      *v60 = 0;
      v60[1] = 0;
      v60[3] = v59[3];
      v59[3] = 0;
      v65 = v60[3];
      if (v65)
      {
        v66 = *v65;
        *v60 = *v65;
        v60[1] = v65;
        if (v66)
        {
          *(v66 + 8) = v60;
        }

        *v65 = v60;
      }

      v59 += 4;
      v60 += 4;
    }

    while (v59 < v24);
  }

  if (a5 && v26)
  {
    v67 = a5 + 1;
    do
    {
      v68 = *v67;
      if (*v67)
      {
        v69 = *(v67 - 1);
        *v68 = v69;
        if (v69)
        {
          *(v69 + 8) = v68;
        }
      }

      v67 += 4;
      --v26;
    }

    while (v26);
  }

  return v6;
}

uint64_t *std::swap[abi:nn200100]<mlir::OpOperand>(uint64_t *result, uint64_t *a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *result;
    *v2 = *result;
    if (v3)
    {
      *(v3 + 8) = v2;
    }
  }

  result[1] = 0;
  v4 = result[3];
  result[3] = 0;
  if (v4)
  {
    v5 = *v4;
    v19 = v5;
    v20 = v4;
    if (v5)
    {
      *(v5 + 8) = &v19;
      v6 = result[1];
      *v4 = &v19;
      if (v6)
      {
        v7 = *result;
        *v6 = *result;
        if (v7)
        {
          *(v7 + 8) = v6;
        }
      }
    }

    else
    {
      *v4 = &v19;
    }
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *a2;
    *v8 = *a2;
    if (v9)
    {
      *(v9 + 8) = v8;
    }
  }

  a2[1] = 0;
  *result = 0;
  result[1] = 0;
  result[3] = a2[3];
  a2[3] = 0;
  v10 = result[3];
  if (v10)
  {
    v11 = *v10;
    *result = *v10;
    result[1] = v10;
    if (v11)
    {
      *(v11 + 8) = result;
    }

    *v10 = result;
  }

  v12 = a2[1];
  if (v12)
  {
    v13 = *a2;
    *v12 = *a2;
    if (v13)
    {
      *(v13 + 8) = v12;
    }
  }

  v14 = v20;
  if (v20)
  {
    v15 = v19;
    *v20 = v19;
    if (v15)
    {
      *(v15 + 8) = v14;
    }
  }

  v20 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[3] = v4;
  if (v4)
  {
    v16 = *v4;
    *a2 = *v4;
    a2[1] = v4;
    if (v16)
    {
      *(v16 + 8) = a2;
      v17 = v20;
      *v4 = a2;
      if (v17)
      {
        v18 = v19;
        *v17 = v19;
        if (v18)
        {
          *(v18 + 8) = v17;
        }
      }
    }

    else
    {
      *v4 = a2;
    }
  }

  return result;
}

void llvm::SmallVectorImpl<mlir::Type>::append<llvm::filter_iterator_impl<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,llvm::detail::IsaCheckPredicate<mlir::VectorType,mlir::TensorType>,std::bidirectional_iterator_tag>,void>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v6 = *(a3 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v18 = *a2;
    v19 = a2[3];
    do
    {
      v20 = v5 + 1;
      v5 = v19;
      if (v20 != v19)
      {
        v5 = v20;
        while (1)
        {
          v21 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v18, v5) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v22 = v21 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v22 || v21 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          if (v19 == ++v5)
          {
            v5 = v19;
            break;
          }
        }
      }

      ++v7;
    }

    while (v5 != v6);
  }

  v8 = *(result + 8);
  if (v7 + v8 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v7 + v8, 8);
    v8 = *(result + 8);
  }

  v9 = a2[1];
  v10 = *(a3 + 8);
  if (v9 != v10)
  {
    v11 = *a2;
    v12 = a2[3];
    v13 = (*result + 8 * v8);
    do
    {
      *v13 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v9) + 8) & 0xFFFFFFFFFFFFFFF8;
      v14 = v9 + 1;
      v9 = v12;
      if (v14 != v12)
      {
        v9 = v14;
        while (1)
        {
          v15 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v9) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v16 = v15 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v16 || v15 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          if (v12 == ++v9)
          {
            v9 = v12;
            break;
          }
        }
      }

      ++v13;
    }

    while (v9 != v10);
    LODWORD(v8) = *(result + 8);
  }

  *(result + 8) = v8 + v7;
}

void llvm::SmallVectorImpl<mlir::Type>::append<llvm::filter_iterator_impl<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,llvm::detail::IsaCheckPredicate<mlir::VectorType,mlir::TensorType>,std::bidirectional_iterator_tag>,void>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v9 = *(a3 + 8);
  if (v7 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v19 = a2[1];
    do
    {
      v20 = v19 + 1;
      v21 = a2[3];
      if (v19 + 1 != v8)
      {
        v22 = v6 + 56 + 32 * v19;
        v21 = v20;
        while (1)
        {
          v23 = *(*(*(*v22 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v24 = v23 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v24 || v23 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          ++v21;
          v22 += 32;
          if (v8 == v21)
          {
            v21 = a2[3];
            break;
          }
        }
      }

      ++v10;
      v19 = v21;
    }

    while (v21 != v9);
  }

  v11 = *(result + 8);
  if (v10 + v11 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v10 + v11, 8);
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v9 = *(a3 + 8);
    v11 = *(result + 8);
  }

  if (v7 != v9)
  {
    v12 = (*result + 8 * v11);
    do
    {
      *v12 = *(*(v6 + 32 * v7 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v13 = v7 + 1;
      v14 = v8;
      if (v7 + 1 != v8)
      {
        v15 = v6 + 56 + 32 * v7;
        v14 = v13;
        while (1)
        {
          v16 = *(*(*(*v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v17 = v16 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v17 || v16 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          ++v14;
          v15 += 32;
          if (v8 == v14)
          {
            v14 = v8;
            break;
          }
        }
      }

      ++v12;
      v7 = v14;
    }

    while (v14 != v9);
    LODWORD(v11) = *(result + 8);
  }

  *(result + 8) = v11 + v10;
}

void llvm::SmallVectorImpl<mlir::Type>::append<llvm::concat_iterator<mlir::Type,mlir::Type*,mlir::Type*>,void>(uint64_t result, int64x2_t *a2, int64x2_t *a3)
{
  v6 = a2->i64[0];
  v7 = a2->i64[1];
  v8 = a3->i64[0];
  v9 = a3->i64[1];
  v10 = 0;
  if (a2->i64[0] != a3->i64[0] || v7 != v9)
  {
    do
    {
      if (v6 == a2[1].i64[0])
      {
        v7 += 8;
      }

      else
      {
        v6 += 8;
      }

      ++v10;
    }

    while (v6 != v8 || v7 != v9);
  }

  v12 = *(result + 8);
  if (v10 + v12 <= *(result + 12))
  {
    v21 = a3[1];
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v10 + v12, 8);
    v8 = a3->i64[0];
    v9 = a3->i64[1];
    v21 = a3[1];
    v12 = *(result + 8);
  }

  v13 = a2[1];
  v22 = *a2;
  v23 = v13;
  v14 = (*result + 8 * v12);
  if (v22 == v8)
  {
    goto LABEL_16;
  }

  while (1)
  {
    do
    {
      while (1)
      {
        v16 = &unk_1F19FECE8;
        do
        {
          while (1)
          {
            v18 = *(v16 - 1);
            v19 = (&v22 + (*v16 >> 1));
            if (*v16)
            {
              break;
            }

            v16 += 2;
            v17 = v18(v19);
            if (v17)
            {
              goto LABEL_22;
            }
          }

          v16 += 2;
          v17 = (*(*v19 + v18))();
        }

        while (!v17);
LABEL_22:
        *v14 = *v17;
        v20 = v22;
        if (v22 == v23.i64[0])
        {
          break;
        }

        *&v22 = v22 + 8;
        ++v14;
        if (v20 + 8 == v8)
        {
          goto LABEL_16;
        }
      }

      if (*(&v22 + 1) != v23.i64[1])
      {
        *(&v22 + 1) += 8;
      }

      ++v14;
    }

    while (v22 != v8);
LABEL_16:
    if (*(&v22 + 1) == v9)
    {
      v15 = vmovn_s64(vmvnq_s8(vceqq_s64(v23, v21)));
      if (((v15.i32[0] | v15.i32[1]) & 1) == 0)
      {
        break;
      }
    }
  }

  *(result + 8) += v10;
}

uint64_t llvm::concat_iterator<mlir::Type,mlir::Type*,mlir::Type*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[2])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::Type,mlir::Type*,mlir::Type*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

__n128 OUTLINED_FUNCTION_0_26@<Q0>(uint64_t a1@<X8>)
{
  v3 = (a1 + 24 * v2);
  result = *v1;
  v3[1].n128_u64[0] = v1[1].n128_u64[0];
  *v3 = result;
  return result;
}

__n128 OUTLINED_FUNCTION_4_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22)
{
  v24 = (v22 + 24 * a22);
  result = *v23;
  v24[1].n128_u64[0] = v23[1].n128_u64[0];
  *v24 = result;
  return result;
}

void OUTLINED_FUNCTION_6_9(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, va, a1 + 1, 24);
}

void OUTLINED_FUNCTION_8_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, va, v22 + 1, 24);
}

void OUTLINED_FUNCTION_10_7(uint64_t a1@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, (a1 + 40), v1 + 1, 24);
}

void OUTLINED_FUNCTION_16_4(const char *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v11 = a1;
  LOWORD(v16) = 259;

  mlir::Operation::emitOpError(v9, va, va1);
}

void OUTLINED_FUNCTION_20_2(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, int a7, char a8)
{
  a2 = a1;
  a6 = 259;

  mlir::Operation::emitOpError(v8, &a2, &a8);
}

uint64_t OUTLINED_FUNCTION_21_2()
{
  result = *(v0 - 8);
  *(v0 - 8) = 0;
  return result;
}

void OUTLINED_FUNCTION_23_3()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, v0 + 1, 24);
}

void *OUTLINED_FUNCTION_27_3@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a8 = a1;

  return llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v8, &a8);
}

void OUTLINED_FUNCTION_30_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a11, v11 + 1, 24);
}

void OUTLINED_FUNCTION_31_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, const char *);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);

  mlir::Operation::emitOpError(v16, va, va1);
}

uint64_t OUTLINED_FUNCTION_38_0()
{
  result = *(v0 - 8);
  *(v0 - 8) = 0;
  return result;
}

void OUTLINED_FUNCTION_43_1(llvm *a1@<X0>, uint64_t a2@<X8>)
{

  llvm::deallocate_buffer(a1, (16 * a2));
}

void OUTLINED_FUNCTION_52_1(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
}

void OUTLINED_FUNCTION_63_0(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{

  operator delete(a1);
}

void *mlir::NamedAttrList::NamedAttrList(void *a1, uint64_t a2)
{
  v4 = a2;
  if (a2)
  {
    mlir::ArrayAttr::getValue(&v4);
  }

  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  a1[10] = 0;
  mlir::DictionaryAttr::sort();
  a1[10] = v4 | 4;
  return a1;
}

void mlir::NamedAttrList::findDuplicate(uint64_t *__return_ptr a1@<X8>, uint64_t **this@<X0>)
{
  mlir::DictionaryAttr::findDuplicate(this, (this[10] & 4) != 0, a1);
  if ((this[10] & 4) == 0)
  {
    this[10] = 4;
  }
}

unint64_t mlir::NamedAttrList::getDictionary(mlir::NamedAttrList *this, mlir::MLIRContext *a2)
{
  v4 = *(this + 10);
  if ((v4 & 4) == 0)
  {
    mlir::DictionaryAttr::sortInPlace(this);
    *(this + 10) = 4;
LABEL_4:
    v4 = *(this + 10) & 7 | mlir::DictionaryAttr::getWithSorted(a2, *this, *(this + 2));
    *(this + 10) = v4;
    return v4 & 0xFFFFFFFFFFFFFFF8;
  }

  if (v4 <= 7)
  {
    goto LABEL_4;
  }

  return v4 & 0xFFFFFFFFFFFFFFF8;
}

void mlir::NamedAttrList::append(uint64_t a1, size_t a2, size_t a3, uint64_t a4)
{
  v11 = a4;
  Context = mlir::Attribute::getContext(&v11);
  v10 = 261;
  v9[0] = a2;
  v9[1] = a3;
  v8 = mlir::StringAttr::get(Context, v9);
  mlir::NamedAttrList::append(a1, v8, v11);
}

void mlir::NamedAttrList::append(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ZinMirCacheTensors::ZinMirCacheTensors(&v11, a2, a3);
  v4 = v11;
  v12 = v11;
  v5 = *(a1 + 80);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = mlir::NamedAttribute::operator<((*a1 + 16 * v6 - 16), &v12);
      v5 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFBLL;
      if (!v7)
      {
        v8 = 0;
LABEL_7:
        LOBYTE(v5) = v8 | v5;
        v4 = v12;
        goto LABEL_8;
      }
    }

    else
    {
      LOBYTE(v5) = v5 & 0xFB;
    }

    v8 = 4;
    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 80) = v5 & 7;
  v9 = *(a1 + 8);
  if (v9 >= *(a1 + 12))
  {
    v10 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v9 + 1, 16);
    v4 = v10;
    LODWORD(v9) = *(a1 + 8);
  }

  *(*a1 + 16 * v9) = v4;
  ++*(a1 + 8);
}

uint64_t mlir::NamedAttrList::push_back(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  v15 = a3;
  v3 = *(result + 80);
  if ((v3 & 4) != 0)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = result;
      v6 = mlir::NamedAttribute::operator<((*result + 16 * v4 - 16), &v14);
      result = v5;
      v7 = *(v5 + 80) & 0xFFFFFFFFFFFFFFFBLL;
      if (!v6)
      {
        v8 = 0;
LABEL_7:
        LOBYTE(v3) = v8 | v7;
        a2 = v14;
        a3 = v15;
        goto LABEL_8;
      }
    }

    else
    {
      LOBYTE(v7) = v3 & 0xFB;
    }

    v8 = 4;
    goto LABEL_7;
  }

LABEL_8:
  *(result + 80) = v3 & 7;
  v9 = *(result + 8);
  if (v9 >= *(result + 12))
  {
    v11 = a2;
    v12 = a3;
    v13 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v9 + 1, 16);
    a2 = v11;
    a3 = v12;
    result = v13;
    LODWORD(v9) = *(v13 + 8);
  }

  v10 = (*result + 16 * v9);
  *v10 = a2;
  v10[1] = a3;
  ++*(result + 8);
  return result;
}

uint64_t mlir::NamedAttrList::get(uint64_t a1, const void *a2, size_t a3)
{
  v3 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(a1, a2, a3);
  if (v4)
  {
    return *(v3 + 1);
  }

  else
  {
    return 0;
  }
}

ZinCompressedFootprintInfo *mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(uint64_t a1, const void *a2, size_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if ((*(a1 + 80) & 4) != 0)
  {
    if (!v6)
    {
      return v5;
    }

    while (1)
    {
      v11 = v6 >> 1;
      v7 = (v5 + 16 * (v6 >> 1));
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v7);
      AttrData = mlir::OpaqueAttr::getAttrData(&CompressedBytes);
      v14 = v13;
      v15 = a3 >= v13 ? v13 : a3;
      if (v15)
      {
        v16 = memcmp(AttrData, a2, v15);
        if (v16)
        {
          break;
        }
      }

      if (v14 == a3)
      {
        return v7;
      }

      if (v14 < a3)
      {
        goto LABEL_11;
      }

LABEL_12:
      v6 = v11;
      if (v11 <= 0)
      {
        return v5;
      }
    }

    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v5 = (v7 + 16);
    v11 = v6 + ~v11;
    goto LABEL_12;
  }

  if (v6)
  {
    v7 = (v5 + 16 * v6);
    if (a3)
    {
      v8 = 16 * v6;
      while (1)
      {
        CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v5);
        v9 = mlir::OpaqueAttr::getAttrData(&CompressedBytes);
        if (v10 == a3 && !memcmp(v9, a2, a3))
        {
          break;
        }

        v5 = (v5 + 16);
        v8 -= 16;
        if (!v8)
        {
          return v7;
        }
      }
    }

    else
    {
      v17 = 16 * v6;
      while (1)
      {
        CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v5);
        mlir::OpaqueAttr::getAttrData(&CompressedBytes);
        if (!v18)
        {
          break;
        }

        v5 = (v5 + 16);
        v17 -= 16;
        if (!v17)
        {
          return v7;
        }
      }
    }
  }

  return v5;
}

uint64_t mlir::NamedAttrList::get(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if ((*(a1 + 80) & 4) != 0)
  {
    v3 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(*a1, (*a1 + 16 * v4), a2);
    v6 = v7;
  }

  else
  {
    if (!v4)
    {
      return 0;
    }

    v5 = 16 * v4;
    v6 = 1;
    while (ZinCompressedFootprintInfo::GetCompressedBytes(v3) != a2)
    {
      v3 = (v3 + 16);
      v5 -= 16;
      if (!v5)
      {
        return 0;
      }
    }
  }

  if (v6)
  {
    return *(v3 + 1);
  }

  return 0;
}

uint64_t mlir::NamedAttrList::set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v27 = a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = (*a1 + 16 * v7);
  if ((*(a1 + 80) & 4) != 0)
  {
    v6 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(*a1, v8, a2);
    v10 = v11;
  }

  else
  {
    if (!v7)
    {
LABEL_11:
      if ((*(a1 + 80) & 4) != 0)
      {
        AttrData = mlir::OpaqueAttr::getAttrData(&v27);
        v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(a1, AttrData, v14);
        v4 = v27;
      }

      ZinMirCacheTensors::ZinMirCacheTensors(&v26, v4, a3);
      v15 = v26;
      v16 = *a1;
      v17 = *(a1 + 8);
      v18 = *(a1 + 12);
      if ((*a1 + 16 * v17) == v6)
      {
        if (v17 >= v18)
        {
          v25 = v26;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v17 + 1, 16);
          v15 = v25;
          v17 = *(a1 + 8);
          v16 = *a1;
        }

        *(v16 + v17) = v15;
        ++*(a1 + 8);
      }

      else
      {
        v19 = v6 - v16;
        if (v17 >= v18)
        {
          v24 = v26;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v17 + 1, 16);
          v15 = v24;
          v16 = *a1;
          v17 = *(a1 + 8);
        }

        v20 = (v16 + v19);
        *(v16 + v17) = *(v16 + v17 - 1);
        v21 = *(a1 + 8);
        v22 = *a1 + 16 * v21 - 16;
        if (v22 != v20)
        {
          v23 = v15;
          memmove(v20 + 1, v20, v22 - v20);
          v15 = v23;
          LODWORD(v21) = *(a1 + 8);
        }

        *(a1 + 8) = v21 + 1;
        *v20 = v15;
      }

      result = 0;
      goto LABEL_23;
    }

    v9 = 16 * v7;
    v10 = 1;
    while (ZinCompressedFootprintInfo::GetCompressedBytes(v6) != v4)
    {
      v6 = (v6 + 16);
      v9 -= 16;
      if (!v9)
      {
        v6 = v8;
        goto LABEL_11;
      }
    }
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  result = *(v6 + 1);
  if (result == a3)
  {
    return result;
  }

  *(v6 + 1) = a3;
LABEL_23:
  *(a1 + 80) &= 7uLL;
  return result;
}

uint64_t mlir::NamedAttrList::set(uint64_t a1, size_t a2, size_t a3, uint64_t a4)
{
  v12 = a4;
  Context = mlir::Attribute::getContext(&v12);
  v11 = 261;
  v10[0] = a2;
  v10[1] = a3;
  v8 = mlir::StringAttr::get(Context, v10);
  return mlir::NamedAttrList::set(a1, v8, v12);
}

uint64_t mlir::NamedAttrList::erase(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if ((*(a1 + 80) & 4) != 0)
  {
    v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(*a1, (*a1 + 16 * v5), a2);
    v7 = v8;
  }

  else
  {
    if (!v5)
    {
      return 0;
    }

    v6 = 16 * v5;
    v7 = 1;
    while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != a2)
    {
      v4 = (v4 + 16);
      v6 -= 16;
      if (!v6)
      {
        return 0;
      }
    }
  }

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  result = *(v4 + 1);
  v10 = *(a1 + 8);
  v11 = *a1 + 16 * v10;
  if (v11 != (v4 + 16))
  {
    v12 = *(v4 + 1);
    memmove(v4, v4 + 16, v11 - (v4 + 16));
    result = v12;
    LODWORD(v10) = *(a1 + 8);
  }

  *(a1 + 8) = v10 - 1;
  *(a1 + 80) &= 7uLL;
  return result;
}

uint64_t mlir::NamedAttrList::erase(uint64_t a1, const void *a2, size_t a3)
{
  v4 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(a1, a2, a3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  result = *(v4 + 1);
  v8 = *(a1 + 8);
  v9 = *a1 + 16 * v8;
  if (v9 != (v6 + 16))
  {
    v10 = result;
    memmove(v6, v6 + 16, v9 - (v6 + 16));
    result = v10;
    LODWORD(v8) = *(a1 + 8);
  }

  *(a1 + 8) = v8 - 1;
  *(a1 + 80) &= 7uLL;
  return result;
}

void *mlir::OperationState::OperationState(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = a2;
  *a1 = a2;
  Context = mlir::Attribute::getContext(&v9);
  mlir::OperationName::OperationName(a1 + 1, a3, a4, Context);
  a1[2] = a1 + 4;
  a1[3] = 0x400000000;
  a1[8] = a1 + 10;
  a1[9] = 0x400000000;
  a1[14] = a1 + 16;
  a1[15] = 0x400000000;
  a1[24] = 4;
  a1[25] = a1 + 27;
  a1[26] = 0x100000000;
  a1[28] = a1 + 30;
  a1[29] = 0x100000000;
  a1[31] = 0;
  a1[32] = 0;
  a1[33] = &mlir::detail::TypeIDResolver<void,void>::id;
  a1[34] = 0;
  a1[36] = 0;
  return a1;
}

double mlir::OperationState::OperationState(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a1 + 4;
  a1[3] = 0x400000000;
  a1[8] = a1 + 10;
  a1[9] = 0x400000000;
  a1[14] = a1 + 16;
  a1[15] = 0x400000000;
  a1[24] = 4;
  a1[25] = a1 + 27;
  *&result = 0x100000000;
  a1[26] = 0x100000000;
  a1[28] = a1 + 30;
  a1[29] = 0x100000000;
  a1[31] = 0;
  a1[32] = 0;
  a1[33] = &mlir::detail::TypeIDResolver<void,void>::id;
  a1[34] = 0;
  a1[36] = 0;
  return result;
}

uint64_t mlir::OperationState::OperationState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13, uint64_t a14)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v19 = (a1 + 32);
  *(a1 + 16) = a1 + 32;
  v20 = a1 + 16;
  *(a1 + 24) = 0x400000000;
  if (a5 < 5)
  {
    if (!a5)
    {
      goto LABEL_32;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v20, v19, a5, 8);
    v19 = (*(a1 + 16) + 8 * *(a1 + 24));
  }

  v21 = a4 & 0xFFFFFFFFFFFFFFF8;
  if ((a4 & 6) == 0 && v21)
  {
    v22 = 0;
    if (a5 < 4 || v19 - v21 <= 0x1F)
    {
      v23 = v19;
    }

    else
    {
      v22 = a5 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = &v19[a5 & 0xFFFFFFFFFFFFFFFCLL];
      v24 = (v21 + 16);
      v25 = v19 + 2;
      v26 = a5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v27 = *v24;
        *(v25 - 1) = *(v24 - 1);
        *v25 = v27;
        v24 += 2;
        v25 += 2;
        v26 -= 4;
      }

      while (v26);
      if (a5 == v22)
      {
        goto LABEL_32;
      }
    }

    v30 = a5 - v22;
    v31 = (v21 + 8 * v22);
    do
    {
      v32 = *v31++;
      *v23++ = v32;
      --v30;
    }

    while (v30);
    goto LABEL_32;
  }

  if ((a4 & 6) == 2 && v21)
  {
    if (a5 > 0xA && (v19 >= v21 + 32 * a5 || v21 + 24 >= &v19[a5]))
    {
      v33 = a5 & 3;
      if ((a5 & 3) == 0)
      {
        v33 = 4;
      }

      v28 = a5 - v33;
      v34 = (v21 + 88);
      v35 = (v19 + 2);
      v36 = v28;
      do
      {
        v37 = v34 - 8;
        v38 = vld4q_f64(v37);
        v39 = vld4q_f64(v34);
        *(v35 - 1) = v38;
        *v35 = v39;
        v34 += 16;
        v35 += 2;
        v36 -= 4;
      }

      while (v36);
      v19 += v28;
    }

    else
    {
      v28 = 0;
    }

    v40 = a5 - v28;
    v41 = (v21 + 32 * v28 + 24);
    do
    {
      v42 = *v41;
      v41 += 4;
      *v19++ = v42;
      --v40;
    }

    while (v40);
  }

  else
  {
    v29 = 0;
    do
    {
      v19[v29] = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, v29);
      ++v29;
    }

    while (a5 != v29);
  }

LABEL_32:
  *(a1 + 64) = a1 + 80;
  *(a1 + 24) += a5;
  *(a1 + 72) = 0x400000000;
  if (a7 < 5)
  {
    if (!a7)
    {
      v46 = 0;
      goto LABEL_39;
    }

    v43 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 64, (a1 + 80), a7, 8);
    v43 = *(a1 + 72);
  }

  v44 = 0;
  v45 = *(a1 + 64) + 8 * v43;
  do
  {
    *(v45 + 8 * v44) = mlir::TypeRange::dereference_iterator(a6, v44);
    ++v44;
  }

  while (a7 != v44);
  v46 = *(a1 + 72);
LABEL_39:
  *(a1 + 72) = v46 + a7;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = 0x400000000;
  *(a1 + 192) = 0;
  mlir::DictionaryAttr::sort();
  *(a1 + 192) = 4;
  *(a1 + 200) = a1 + 216;
  *(a1 + 208) = 0x100000000;
  if (a12 < 2)
  {
    if (!a12)
    {
      v50 = 0;
      goto LABEL_46;
    }

    v47 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 200, (a1 + 216), a12, 8);
    v47 = *(a1 + 208);
  }

  v48 = 0;
  v49 = *(a1 + 200) + 8 * v47;
  do
  {
    *(v49 + 8 * v48) = mlir::BlockRange::dereference_iterator(a11, v48);
    ++v48;
  }

  while (a12 != v48);
  v50 = *(a1 + 208);
LABEL_46:
  v51 = a1 + 240;
  *(a1 + 224) = a1 + 240;
  v52 = (a1 + 224);
  *(a1 + 208) = v50 + a12;
  *(a1 + 232) = 0x100000000;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = &mlir::detail::TypeIDResolver<void,void>::id;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  if (a14)
  {
    v53 = 0;
    v54 = a13;
    v55 = 8 * a14;
    v56 = a13;
    do
    {
      if (v53 >= *(a1 + 236))
      {
        if (v51 <= v56 && v51 + 8 * v53 > v56)
        {
          llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(a1 + 224, v53 + 1);
          v57 = (v54 + *v52 - v51);
          v51 = *v52;
          goto LABEL_50;
        }

        llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(a1 + 224, v53 + 1);
        v51 = *v52;
      }

      v57 = v56;
LABEL_50:
      v58 = *(a1 + 232);
      v59 = *v57;
      *v57 = 0;
      *(v51 + 8 * v58) = v59;
      v53 = v58 + 1;
      *(a1 + 232) = v58 + 1;
      ++v56;
      ++v54;
      v55 -= 8;
    }

    while (v55);
  }

  return a1;
}

{
  return mlir::OperationState::OperationState(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t mlir::OperationState::OperationState(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13, uint64_t a14)
{
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  mlir::OperationName::OperationName(&v25, a3, a4, Context);
  return mlir::OperationState::OperationState(a1, a2, v25, a5, a6, a7, a8, v21, a9, a10, a11, a12, a13, a14);
}

void mlir::OperationState::~OperationState(mlir::OperationState *this)
{
  if (*(this + 32))
  {
    (*(this + 34))(*(this + 35));
  }

  v2 = *(this + 28);
  v3 = *(this + 58);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    do
    {
      v6 = *&v5[v4];
      *&v5[v4] = 0;
      if (v6)
      {
        mlir::Region::~Region(v6);
        MEMORY[0x1AC55A070]();
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *(this + 28);
  }

  if (v2 != this + 240)
  {
    free(v2);
  }

  v7 = *(this + 25);
  if (v7 != this + 216)
  {
    free(v7);
  }

  v8 = *(this + 14);
  if (v8 != this + 128)
  {
    free(v8);
  }

  v9 = *(this + 8);
  if (v9 != this + 80)
  {
    free(v9);
  }

  v10 = *(this + 2);
  if (v10 != this + 32)
  {
    free(v10);
  }
}

void mlir::OperationState::addOperands(uint64_t result, uint64_t a2, unint64_t a3)
{
  v6 = *(result + 24);
  v7 = a3 + v6;
  if (v7 > *(result + 28))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result + 16, (result + 32), v7, 8);
    v6 = *(result + 24);
  }

  if (a3)
  {
    v8 = *(result + 16);
    v9 = (v8 + 8 * v6);
    v10 = a2 & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 6) != 0 || !v10)
    {
      if ((a2 & 6) == 2 && v10)
      {
        if (a3 > 0xC && (v9 >= v10 + 32 * a3 || v10 + 24 >= v8 + 8 * (a3 + v6)))
        {
          v22 = a3 & 3;
          if ((a3 & 3) == 0)
          {
            v22 = 4;
          }

          v16 = a3 - v22;
          v23 = (v10 + 88);
          v24 = (v9 + 2);
          v25 = v16;
          do
          {
            v26 = v23 - 8;
            v27 = vld4q_f64(v26);
            v28 = vld4q_f64(v23);
            *(v24 - 1) = v27;
            *v24 = v28;
            v23 += 16;
            v24 += 2;
            v25 -= 4;
          }

          while (v25);
          v9 += v16;
        }

        else
        {
          v16 = 0;
        }

        v29 = a3 - v16;
        v30 = (v10 + 32 * v16 + 24);
        do
        {
          v31 = *v30;
          v30 += 4;
          *v9++ = v31;
          --v29;
        }

        while (v29);
      }

      else
      {
        v17 = 0;
        do
        {
          v9[v17] = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, v17);
          ++v17;
        }

        while (a3 != v17);
      }
    }

    else
    {
      if (a3 <= 7 || (v11 = 8 * v6 + v8, v11 - v10 < 0x20))
      {
        v12 = 0;
LABEL_9:
        v13 = a3 - v12;
        v14 = (v10 + 8 * v12);
        do
        {
          v15 = *v14++;
          *v9++ = v15;
          --v13;
        }

        while (v13);
        goto LABEL_32;
      }

      v12 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v9 += a3 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = (v10 + 16);
      v19 = (v11 + 16);
      v20 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      if (a3 != v12)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_32:
  *(result + 24) += a3;
}

void mlir::OperationState::addSuccessors(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = *(result + 208);
  v7 = a3 + v6;
  if (v7 > *(result + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result + 200, (result + 216), v7, 8);
    v6 = *(result + 208);
  }

  if (a3)
  {
    v8 = 0;
    v9 = *(result + 200) + 8 * v6;
    do
    {
      *(v9 + 8 * v8) = mlir::BlockRange::dereference_iterator(a2, v8);
      ++v8;
    }

    while (a3 != v8);
    LODWORD(v6) = *(result + 208);
  }

  *(result + 208) = v6 + a3;
}

uint64_t mlir::OperationState::addRegion(uint64_t result, char *a2)
{
  v3 = (result + 224);
  v2 = *(result + 224);
  v4 = *(result + 232);
  if (v4 >= *(result + 236))
  {
    v7 = result;
    v8 = a2;
    if (v2 <= a2 && v2 + 8 * v4 > a2)
    {
      v10 = &a2[-v2];
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(result + 224, v4 + 1);
      v2 = *v3;
      a2 = &v10[*v3];
      result = v7;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(result + 224, v4 + 1);
      v2 = *v3;
      result = v7;
      a2 = v8;
    }
  }

  v5 = *(result + 232);
  v6 = *a2;
  *a2 = 0;
  *(v2 + 8 * v5) = v6;
  *(result + 232) = v5 + 1;
  return result;
}

uint64_t mlir::OperationState::addRegions(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = (result + 224);
    v3 = *(result + 224);
    v5 = *(result + 232);
    v6 = 8 * a3;
    v7 = a2;
    do
    {
      if (v5 >= *(result + 236))
      {
        v11 = result;
        v12 = a2;
        if (v3 <= v7 && v3 + 8 * v5 > v7)
        {
          v13 = v3;
          llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(v4, v5 + 1);
          v3 = *v4;
          a2 = v12;
          v8 = (v12 + *v4 - v13);
        }

        else
        {
          llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(v4, v5 + 1);
          v3 = *v4;
          v8 = v7;
          a2 = v12;
        }

        result = v11;
      }

      else
      {
        v8 = v7;
      }

      v9 = *(result + 232);
      v10 = *v8;
      *v8 = 0;
      *(v3 + 8 * v9) = v10;
      v5 = v9 + 1;
      *(result + 232) = v9 + 1;
      ++v7;
      ++a2;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t mlir::detail::OperandStorage::OperandStorage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a1 + 8) = a3;
  *a1 = a5 & 0x7FFFFFFF;
  *(a1 + 4) = a5 & 0x7FFFFFFF;
  if ((a5 & 0x7FFFFFFF) != 0)
  {
    v7 = a4 & 0xFFFFFFFFFFFFFFF8;
    if ((a4 & 6) != 0 || !v7)
    {
      if ((a4 & 6) == 2 && v7)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = (*(a1 + 8) + v13);
          v16 = *(v7 + 24 + v13);
          v15[2] = a2;
          v15[3] = v16;
          *v15 = 0;
          v15[1] = v16;
          v17 = *v16;
          *v15 = *v16;
          if (v17)
          {
            *(v17 + 8) = v15;
          }

          *v16 = v15;
          ++v14;
          v13 += 32;
        }

        while (v14 < *(a1 + 4));
      }

      else
      {
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = (*(a1 + 8) + v18);
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, v19);
          v20[2] = a2;
          v20[3] = NextResultAtOffset;
          *v20 = 0;
          v20[1] = NextResultAtOffset;
          v22 = *NextResultAtOffset;
          *v20 = *NextResultAtOffset;
          if (v22)
          {
            *(v22 + 8) = v20;
          }

          *NextResultAtOffset = v20;
          ++v19;
          v18 += 32;
        }

        while (v19 < *(a1 + 4));
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = (*(a1 + 8) + v8);
        v11 = *(v7 + 8 * v9);
        v10[2] = a2;
        v10[3] = v11;
        *v10 = 0;
        v10[1] = v11;
        v12 = *v11;
        *v10 = *v11;
        if (v12)
        {
          *(v12 + 8) = v10;
        }

        *v11 = v10;
        ++v9;
        v8 += 32;
      }

      while (v9 < *(a1 + 4));
    }
  }

  return a1;
}

void mlir::detail::OperandStorage::~OperandStorage(mlir::detail::OperandStorage *this)
{
  v1 = *(this + 1);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = 32 * v2;
    v4 = v1 + 1;
    do
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = *(v4 - 1);
        *v5 = v6;
        if (v6)
        {
          *(v6 + 8) = v5;
        }
      }

      v4 += 4;
      v3 -= 32;
    }

    while (v3);
  }

  if ((*this & 0x80000000) != 0)
  {
    free(v1);
  }
}

uint64_t *mlir::detail::OperandStorage::setOperands(mlir::detail::OperandStorage *a1, mlir::Operation *a2, uint64_t a3, unsigned int a4)
{
  result = mlir::detail::OperandStorage::resize(a1, a2, a4);
  if (a4)
  {
    v7 = result;
    v8 = (a3 & 0xFFFFFFFFFFFFFFF8);
    v9 = a3 & 6;
    if ((a3 & 6) != 0 || !v8)
    {
      v16 = a4;
      if (v9 == 2 && v8)
      {
        v17 = v8 + 3;
        do
        {
          v18 = *v17;
          v19 = v7[1];
          if (v19)
          {
            v20 = *v7;
            *v19 = *v7;
            if (v20)
            {
              *(v20 + 8) = v19;
            }
          }

          v7[3] = v18;
          v21 = *v18;
          *v7 = *v18;
          v7[1] = v18;
          if (v21)
          {
            *(v21 + 8) = v7;
          }

          *v18 = v7;
          v7 += 4;
          v17 += 4;
          --v16;
        }

        while (v16);
      }

      else
      {
        for (i = 0; i != v16; ++i)
        {
          result = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i);
          v23 = v7[1];
          if (v23)
          {
            v24 = *v7;
            *v23 = *v7;
            if (v24)
            {
              *(v24 + 8) = v23;
            }
          }

          v7[3] = result;
          v25 = *result;
          *v7 = *result;
          v7[1] = result;
          if (v25)
          {
            *(v25 + 8) = v7;
          }

          *result = v7;
          v7 += 4;
        }
      }
    }

    else
    {
      v10 = a4;
      do
      {
        v12 = *v8++;
        v11 = v12;
        v13 = v7[1];
        if (v13)
        {
          v14 = *v7;
          *v13 = *v7;
          if (v14)
          {
            *(v14 + 8) = v13;
          }
        }

        v7[3] = v11;
        v15 = *v11;
        *v7 = *v11;
        v7[1] = v11;
        if (v15)
        {
          *(v15 + 8) = v7;
        }

        *v11 = v7;
        v7 += 4;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t *mlir::detail::OperandStorage::resize(mlir::detail::OperandStorage *this, mlir::Operation *a2, unsigned int a3)
{
  v4 = *(this + 1);
  result = v4;
  v6 = *(this + 1);
  if (v6 >= a3)
  {
    if (v6 != a3)
    {
      v27 = a3;
      do
      {
        v28 = &v4[4 * v27];
        v29 = v28[1];
        if (v29)
        {
          v30 = *v28;
          *v29 = v30;
          if (v30)
          {
            *(v30 + 8) = v29;
          }
        }

        ++v27;
      }

      while (v6 != v27);
    }

    *(this + 1) = a3;
  }

  else
  {
    v7 = *this & 0x7FFFFFFF;
    if (v7 >= a3)
    {
      do
      {
        v20 = &v4[4 * v6];
        *v20 = 0;
        v20[1] = 0;
        v20[2] = a2;
        v20[3] = 0;
        LODWORD(v6) = *(this + 1) + 1;
        *(this + 1) = v6;
      }

      while (v6 != a3);
    }

    else
    {
      v8 = (v7 + 2) | ((v7 + 2) >> 1) | (((v7 + 2) | ((v7 + 2) >> 1)) >> 2);
      v9 = v8 | (v8 >> 4) | ((v8 | (v8 >> 4)) >> 8);
      v10 = (v9 >> 16) | v9;
      if (v10 + 1 > a3)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = a3;
      }

      v13 = this;
      result = malloc_type_malloc(32 * v12, 0xE004003D73A93uLL);
      v15 = v13;
      if (v6)
      {
        v16 = v4 + 3;
        v17 = 32 * v6;
        v18 = 32 * v6;
        v19 = result;
        do
        {
          *v19 = 0;
          v19[1] = 0;
          v21 = *(v16 - 2);
          v19[2] = *(v16 - 1);
          if (v21)
          {
            v22 = *(v16 - 3);
            *v21 = v22;
            if (v22)
            {
              *(v22 + 8) = v21;
            }
          }

          *(v16 - 2) = 0;
          *v19 = 0;
          v19[1] = 0;
          v19[3] = 0;
          v23 = *(v16 - 2);
          if (v23)
          {
            v24 = *(v16 - 3);
            *v23 = v24;
            if (v24)
            {
              *(v24 + 8) = v23;
            }
          }

          *(v16 - 2) = 0;
          *v19 = 0;
          v19[1] = 0;
          v19[3] = *v16;
          *v16 = 0;
          v25 = v19[3];
          if (v25)
          {
            v26 = *v25;
            *v19 = *v25;
            v19[1] = v25;
            if (v26)
            {
              *(v26 + 8) = v19;
            }

            *v25 = v19;
          }

          v19 += 4;
          v16 += 4;
          v18 -= 32;
        }

        while (v18);
        v31 = (v4 + 1);
        do
        {
          v32 = *v31;
          if (*v31)
          {
            v33 = *(v31 - 1);
            *v32 = v33;
            if (v33)
            {
              *(v33 + 8) = v32;
            }
          }

          v31 += 4;
          v17 -= 32;
        }

        while (v17);
      }

      for (i = *(v13 + 1); i != a3; *(v13 + 1) = i)
      {
        v35 = &result[4 * i];
        *v35 = 0;
        v35[1] = 0;
        v35[2] = a2;
        v35[3] = 0;
        i = *(v13 + 1) + 1;
      }

      if ((*v13 & 0x80000000) != 0)
      {
        v36 = result;
        free(*(v13 + 1));
        result = v36;
        v15 = v13;
      }

      *(v15 + 1) = result;
      *v15 = v12 | 0x80000000;
    }
  }

  return result;
}

uint64_t *mlir::detail::OperandStorage::setOperands(uint64_t *result, mlir::Operation *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v6 = a6;
  v8 = a3;
  v9 = result;
  v10 = a6 - a4;
  if (a6 == a4)
  {
    v6 = a4;
    if (!a4)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (a6 < a4)
  {
    result = mlir::detail::OperandStorage::eraseOperands(result, a6 + a3, a4 - a6);
    if (!v6)
    {
      return result;
    }

LABEL_6:
    v11 = 0;
    v12 = v9[1];
    v13 = (a5 & 6) != 0;
    v14 = (a5 & 6) != 2;
    v15 = a5 & 0xFFFFFFFFFFFFFFF8;
    if (v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = 1;
    }

    if (v15)
    {
      v17 = v14;
    }

    else
    {
      v17 = 1;
    }

    for (i = 24; ; i += 32)
    {
      if (v16)
      {
        if (v17)
        {
          result = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, v11);
          v19 = (v12 + 32 * (v8 + v11));
          v20 = v19[1];
          if (v20)
          {
            goto LABEL_21;
          }
        }

        else
        {
          result = *(v15 + i);
          v19 = (v12 + 32 * (v8 + v11));
          v20 = v19[1];
          if (v20)
          {
LABEL_21:
            v21 = *v19;
            *v20 = *v19;
            if (v21)
            {
              *(v21 + 8) = v20;
            }
          }
        }
      }

      else
      {
        result = *(v15 + 8 * v11);
        v19 = (v12 + 32 * (v8 + v11));
        v20 = v19[1];
        if (v20)
        {
          goto LABEL_21;
        }
      }

      v19[3] = result;
      v22 = *result;
      *v19 = *result;
      v19[1] = result;
      if (v22)
      {
        *(v22 + 8) = v19;
      }

      *result = v19;
      if (v6 == ++v11)
      {
        return result;
      }
    }
  }

  result = mlir::detail::OperandStorage::resize(result, a2, *(result + 1) + v10);
  v25 = result;
  v26 = 32 * v10;
  v27 = 32 * (v24 - (a4 + v8));
  if (v26 != v27)
  {
    v28 = &result[4 * v24];
    v29 = &v28[v26 / 0xFFFFFFFFFFFFFFF8];
    v30 = &v28[v27 / 0xFFFFFFFFFFFFFFF8];
    v31 = v28 - 4;
    v32 = &v28[v26 / 0xFFFFFFFFFFFFFFF8 - 4];
    for (result = std::swap[abi:nn200100]<mlir::OpOperand>(v28 - 4, v32); v32 != v30; result = std::swap[abi:nn200100]<mlir::OpOperand>(v31, v32))
    {
      if (v31 == v29)
      {
        v29 = v32;
      }

      v31 -= 4;
      v32 -= 4;
    }

    if (v31 != v29)
    {
      v33 = v29;
      while (1)
      {
        v33 -= 4;
        result = std::swap[abi:nn200100]<mlir::OpOperand>(v31 - 4, v33);
        v34 = v31 - 4 == v29;
        if (v33 == v30)
        {
          if (v31 - 4 == v29)
          {
            break;
          }

          v33 = v29 - 4;
          v31 -= 8;
          while (1)
          {
            result = std::swap[abi:nn200100]<mlir::OpOperand>(v31, v29 - 4);
            v34 = v31 == v29;
            if (v33 != v30)
            {
              break;
            }

            v35 = v31 == v29;
            v31 -= 4;
            if (v35)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          v31 -= 4;
        }

        if (v34)
        {
          v29 = v33;
        }
      }
    }
  }

LABEL_42:
  if (v6)
  {
    v36 = v6;
    v37 = (a5 & 0xFFFFFFFFFFFFFFF8);
    v38 = (a5 & 0xFFFFFFFFFFFFFFF8) == 0 || (a5 & 6) != 2;
    if ((a5 & 6) != 0 || !v37)
    {
      v39 = 0;
      for (j = 3; ; j += 4)
      {
        if (v38)
        {
          result = mlir::detail::OpResultImpl::getNextResultAtOffset(v37, v39);
          v41 = &v25[4 * v8 + 4 * v39];
          v42 = v41[1];
          if (v42)
          {
            goto LABEL_54;
          }
        }

        else
        {
          result = v37[j];
          v41 = &v25[4 * v8 + 4 * v39];
          v42 = v41[1];
          if (v42)
          {
LABEL_54:
            v43 = *v41;
            *v42 = *v41;
            if (v43)
            {
              *(v43 + 8) = v42;
            }
          }
        }

        v41[3] = result;
        v44 = *result;
        *v41 = *result;
        v41[1] = result;
        if (v44)
        {
          *(v44 + 8) = v41;
        }

        *result = v41;
        if (v36 == ++v39)
        {
          return result;
        }
      }
    }

    do
    {
      v45 = &v25[4 * v8];
      v47 = *v37++;
      v46 = v47;
      v48 = v45[1];
      if (v48)
      {
        v49 = *v45;
        *v48 = *v45;
        if (v49)
        {
          *(v49 + 8) = v48;
        }
      }

      v45[3] = v46;
      v50 = *v46;
      *v45 = *v46;
      v45[1] = v46;
      if (v50)
      {
        *(v50 + 8) = v45;
      }

      *v46 = v45;
      ++v8;
      --v36;
    }

    while (v36);
  }

  return result;
}

uint64_t *mlir::detail::OperandStorage::eraseOperands(uint64_t *this, unsigned int a2, unsigned int a3)
{
  v4 = this;
  v5 = this[1];
  v6 = *(this + 1);
  *(this + 1) = v6 - a3;
  v7 = a2;
  v8 = v5 + 32 * a2;
  v9 = a3;
  v10 = (v8 + 32 * a3);
  v11 = (v5 + 32 * v6);
  v12 = v6 - a3 == a2 || a3 == 0;
  if (!v12 && v10 != v11)
  {
    this = std::swap[abi:nn200100]<mlir::OpOperand>((v5 + 32 * a2), (v8 + 32 * a3));
    v18 = (v8 + 32);
    v19 = v10 + 4;
    if (v10 + 4 != v11)
    {
      v20 = 32 * v6 - 32 * v7 - 32 * v9 - 32;
      do
      {
        if (v18 == v10)
        {
          v10 = v19;
        }

        this = std::swap[abi:nn200100]<mlir::OpOperand>(v18, v19);
        v18 += 4;
        v19 += 4;
        v20 -= 32;
      }

      while (v20);
    }

    if (v18 != v10)
    {
      v21 = v10;
      while (1)
      {
        this = std::swap[abi:nn200100]<mlir::OpOperand>(v18, v10);
        v10 += 4;
        v22 = v18 + 4 == v21;
        if (v10 == v11)
        {
          if (v18 + 4 == v21)
          {
            break;
          }

          v10 = v21 + 4;
          v18 += 8;
          while (1)
          {
            this = std::swap[abi:nn200100]<mlir::OpOperand>(v18 - 4, v21);
            v22 = v18 == v21;
            if (v10 != v11)
            {
              break;
            }

            v12 = v18 == v21;
            v18 += 4;
            if (v12)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
          v18 += 4;
        }

        if (v22)
        {
          v21 = v10;
        }
      }
    }
  }

LABEL_9:
  if (a3)
  {
    v14 = *(v4 + 1);
    do
    {
      v15 = (v5 + 32 * v14);
      v16 = v15[1];
      if (v16)
      {
        v17 = *v15;
        *v16 = v17;
        if (v17)
        {
          *(v17 + 8) = v16;
        }
      }

      ++v14;
      --v9;
    }

    while (v9);
  }

  return this;
}

uint64_t mlir::MutableOperandRange::MutableOperandRange(uint64_t a1, uint64_t a2, int a3, int a4, const void *a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  v9 = (a1 + 32);
  *(a1 + 16) = a1 + 32;
  v10 = a1 + 16;
  *(a1 + 24) = 0x100000000;
  v11 = 3 * a6;
  v12 = (24 * a6) >> 3;
  v13 = -1431655765 * v12;
  if (0xAAAAAAAAAAAAAAABLL * v12 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v10, v9, 0xAAAAAAAAAAAAAAABLL * v12, 24);
    v14 = *(a1 + 24);
    if (!a6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = 0;
  if (a6)
  {
LABEL_5:
    memcpy((*(a1 + 16) + 24 * v14), a5, 8 * v11);
    v14 = *(a1 + 24);
  }

LABEL_6:
  *(a1 + 24) = v14 + v13;
  return a1;
}

mlir::MutableOperandRange *mlir::MutableOperandRange::MutableOperandRange(mlir::MutableOperandRange *this, mlir::OpOperand *a2)
{
  v3 = *(a2 + 2);
  OperandNumber = mlir::OpOperand::getOperandNumber(a2);
  *this = v3;
  *(this + 2) = OperandNumber;
  *(this + 3) = 1;
  *(this + 2) = this + 32;
  *(this + 3) = 0x100000000;
  return this;
}

void mlir::MutableOperandRange::append(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    mlir::Operation::insertOperands(*result, *(result + 12) + *(result + 8), a2, a3);
    v5 = *(result + 12) + v3;

    mlir::MutableOperandRange::updateLength(result, v5);
  }
}

void mlir::MutableOperandRange::updateLength(mlir::MutableOperandRange *this, int a2)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  *(this + 3) = a2;
  v3 = *(this + 6);
  if (v3)
  {
    v5 = a2 - v2;
    v6 = (*(this + 2) + 8);
    v7 = 24 * v3;
    while (1)
    {
      v18 = v6[1];
      v9 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v18);
      v10 = v8;
      v19 = v21;
      v20 = 0x800000000;
      v11 = (4 * v8) >> 2;
      if (v11 < 9)
      {
        break;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v11, 4);
      v12 = v20;
      v13 = v19;
      v14 = 4 * v10;
      if (v10)
      {
        goto LABEL_6;
      }

LABEL_7:
      LODWORD(v20) = v12 + (v14 >> 2);
      *(v13 + *(v6 - 2)) += v5;
      Context = mlir::Attribute::getContext(&v18);
      v6[1] = mlir::detail::DenseArrayAttrImpl<int>::get(Context, v19, v20);
      v16 = *this;
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v6);
      mlir::Operation::setAttr(v16, CompressedBytes, v6[1]);
      if (v19 != v21)
      {
        free(v19);
      }

      v6 += 3;
      v7 -= 24;
      if (!v7)
      {
        return;
      }
    }

    v12 = 0;
    v13 = v21;
    v14 = 4 * v8;
    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_6:
    memcpy(v13 + 4 * v12, v9, v14);
    v12 = v20;
    v13 = v19;
    goto LABEL_7;
  }
}

void mlir::MutableOperandRange::assign(mlir::MutableOperandRange *a1, uint64_t a2, uint64_t a3)
{
  mlir::Operation::setOperands(*a1, *(a1 + 2), *(a1 + 3), a2, a3);
  if (a3 != *(a1 + 3))
  {

    mlir::MutableOperandRange::updateLength(a1, a3);
  }
}

void mlir::MutableOperandRange::erase(mlir::MutableOperandRange *this, int a2, unsigned int a3)
{
  if (*(this + 3))
  {
    mlir::detail::OperandStorage::eraseOperands((*this + 64), *(this + 2) + a2, a3);
    v5 = *(this + 3) - a3;

    mlir::MutableOperandRange::updateLength(this, v5);
  }
}

void mlir::MutableOperandRange::clear(mlir::MutableOperandRange *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    mlir::detail::OperandStorage::eraseOperands((*this + 64), *(this + 2), v1);

    mlir::MutableOperandRange::updateLength(this, 0);
  }
}

uint64_t *mlir::ResultRange::use_begin@<X0>(uint64_t *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = *this;
  v3 = this[1];
  *a2 = *this;
  a2[1] = 0;
  a2[2] = v2;
  a2[3] = v3;
  a2[4] = 0;
  if (v3)
  {
    v5 = 0;
    while (1)
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, v5);
      if (*this)
      {
        break;
      }

      if (v3 == ++v5)
      {
        v6 = 0;
        a2[1] = v3;
        goto LABEL_9;
      }
    }

    a2[1] = v5;
    if (v3 == v5)
    {
      v6 = 0;
    }

    else
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, v5);
      v6 = *this;
    }

LABEL_9:
    a2[4] = v6;
  }

  return this;
}

__n128 mlir::ResultRange::use_end@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = *this;
  *a2 = *this;
  a2[1] = result;
  a2[2].n128_u64[0] = 0;
  return result;
}

uint64_t *mlir::ResultRange::UseIterator::operator++(uint64_t *a1)
{
  mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, a1[1]);
  v2 = a1[4];
  if (v2)
  {
    a1[4] = *v2;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, a1[1]);
  if (a1[4])
  {
    return a1;
  }

  v4 = a1[1] + 1;
  a1[1] = v4;
  if (v4 == a1[3])
  {
    a1[4] = 0;
    return a1;
  }

  else
  {
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, v4);
      v6 = a1[1];
      v7 = a1[3];
      if (*NextResultAtOffset)
      {
        break;
      }

      v4 = v6 + 1;
      a1[1] = v4;
      if (v4 == v7)
      {
        a1[4] = 0;
        return a1;
      }
    }

    if (v6 == v7)
    {
      a1[4] = 0;
    }

    else
    {
      a1[4] = *mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, v6);
    }

    return a1;
  }
}

uint64_t *mlir::ResultRange::replaceAllUsesWith(uint64_t *this, mlir::Operation *a2)
{
  v2 = *(a2 + 9);
  if (v2)
  {
    v3 = a2 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = this[1];
  if (v4)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = 0;
    v7 = *this;
    do
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, v6);
      for (this = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, v6); ; *this = v9)
      {
        v9 = *NextResultAtOffset;
        if (!*NextResultAtOffset)
        {
          break;
        }

        v10 = v9[1];
        if (v10)
        {
          v11 = *v9;
          *v10 = *v9;
          if (v11)
          {
            *(v11 + 8) = v10;
          }
        }

        v9[3] = this;
        v12 = *this;
        *v9 = *this;
        v9[1] = this;
        if (v12)
        {
          *(v12 + 8) = v9;
        }
      }

      ++v6;
    }

    while (v6 != v4 && v6 != v2);
  }

  return this;
}

unint64_t *mlir::ValueRange::ValueRange(unint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2 & 0xFFFFFFFFFFFFFFF9;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 2;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 4;
  result[1] = a3;
  return result;
}

unint64_t mlir::ValueRange::offset_base(void *a1, uint64_t a2)
{
  v2 = *a1 & 6;
  v3 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    return v3 + 8 * a2;
  }

  if (v2 != 2 || v3 == 0)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, a2) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    return (v3 + 32 * a2) | 2;
  }
}

uint64_t mlir::ValueRange::dereference_iterator(void *a1, uint64_t a2)
{
  v2 = *a1 & 6;
  v3 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    return *(v3 + 8 * a2);
  }

  if (v2 != 2 || v3 == 0)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, a2);
  }

  else
  {
    return *(v3 + 32 * a2 + 24);
  }
}

uint64_t mlir::Operation::hasTrait<mlir::OpTrait::IsCommutative>(uint64_t a1)
{
  {
    v3 = a1;
    mlir::Operation::hasTrait<mlir::OpTrait::IsCommutative>();
    a1 = v3;
  }

  v1 = *(**(a1 + 48) + 32);

  return v1();
}

void mlir::OperationEquivalence::isRegionEquivalentTo(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, unint64_t, uint64_t), uint64_t a6, unsigned int a7, uint64_t a8, uint64_t (*a9)(uint64_t, unint64_t, uint64_t, unint64_t, void), uint64_t a10)
{
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v10 = a1;
  v11 = a2;
  v64 = a1;
  v65 = a2;
  while (1)
  {
    v12 = *(v11 + 8);
    v10 = *(v10 + 8);
    v13 = v10 == a1 || v12 == a2;
    if (v13)
    {
      goto LABEL_94;
    }

    v14 = v10 ? (v10 - 8) : 0;
    v15 = v12 ? (v12 - 8) : 0;
    if (((v14[7] - v14[6]) >> 3) != ((v15[7] - v15[6]) >> 3))
    {
      goto LABEL_94;
    }

    v66 = v12;
    v79 = v14;
    v80 = v15;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::try_emplace<mlir::Block *>(&v74, &v79, &v80, v78);
    if (*(v78[0] + 8) != v15)
    {
      goto LABEL_94;
    }

    v16 = v14[6];
    v17 = v14[7];
    v18 = v15[6];
    v19 = v15[7];
    if (v16 != v17 && v18 != v19)
    {
      if (a5)
      {
        v54 = v18 + 8;
        v55 = v16 + 8;
        while (1)
        {
          v56 = *(v55 - 8);
          v79 = v56;
          v57 = *(v54 - 8);
          v77 = v57;
          if ((*(v57 + 8) ^ *(v56 + 8)) > 7)
          {
            break;
          }

          if ((a7 & 1) == 0)
          {
            Loc = mlir::Value::getLoc(&v79);
            if (Loc != mlir::Value::getLoc(&v77))
            {
              break;
            }

            v56 = v79;
            v57 = v77;
          }

          a5(a6, v56, v57);
          if (v55 != v17)
          {
            v55 += 8;
            v13 = v54 == v19;
            v54 += 8;
            if (!v13)
            {
              continue;
            }
          }

          goto LABEL_19;
        }
      }

      else if (a7)
      {
        v62 = v18 + 8;
        v63 = v16 + 8;
        while (1)
        {
          v79 = *(v63 - 8);
          if ((*(*(v62 - 8) + 8) ^ v79[1]) > 7)
          {
            break;
          }

          if (v63 != v17)
          {
            v63 += 8;
            v13 = v62 == v19;
            v62 += 8;
            if (!v13)
            {
              continue;
            }
          }

          goto LABEL_19;
        }
      }

      else
      {
        v59 = v18 + 8;
        v60 = v16 + 8;
        while (1)
        {
          v79 = *(v60 - 8);
          v77 = *(v59 - 8);
          if ((*(v77 + 8) ^ v79[1]) > 7)
          {
            break;
          }

          v61 = mlir::Value::getLoc(&v79);
          if (v61 != mlir::Value::getLoc(&v77))
          {
            break;
          }

          if (v60 != v17)
          {
            v60 += 8;
            v13 = v59 == v19;
            v59 += 8;
            if (!v13)
            {
              continue;
            }
          }

          goto LABEL_19;
        }
      }

LABEL_94:
      llvm::deallocate_buffer(v74, (16 * v76));
    }

LABEL_19:
    v21 = (v15 + 4);
    v22 = v15[5];
    v23 = v14[5];
    v68 = (v14 + 4);
    if (v23 != (v14 + 4))
    {
      break;
    }

LABEL_78:
    a1 = v64;
    a2 = v65;
    v11 = v66;
    if (v22 != v21)
    {
      goto LABEL_94;
    }
  }

  v67 = (v15 + 4);
  while (1)
  {
    if (v22 == v21)
    {
      goto LABEL_94;
    }

    ZinIrHalH13g::~ZinIrHalH13g(v23);
    v25 = v24;
    ZinIrHalH13g::~ZinIrHalH13g(v22);
    v27 = v26;
    if (!mlir::OperationEquivalence::isEquivalentTo(v25, v26, a3, a4, a5, a6, a7, v28, a9, a10))
    {
      goto LABEL_94;
    }

    v29 = mlir::SuccessorRange::SuccessorRange(&v79, v25);
    v30 = v79;
    v31 = v80;
    mlir::SuccessorRange::SuccessorRange(v29, v27);
    if (v31)
    {
      v32 = v80;
      if (v80)
      {
        break;
      }
    }

LABEL_21:
    v22 = *(v22 + 1);
    v23 = *(v23 + 1);
    v21 = v67;
    if (v23 == v68)
    {
      goto LABEL_78;
    }
  }

  v33 = 0;
  v34 = v79;
  v35 = v74;
  v36 = v76;
  while (1)
  {
    v37 = *(v30 + 32 * v33 + 24);
    v38 = *(v34 + 32 * v33 + 24);
    if (!v36)
    {
      goto LABEL_50;
    }

    v39 = v36 - 1;
    v40 = ((v37 >> 4) ^ (v37 >> 9)) & (v36 - 1);
    v41 = v35 + 16 * v40;
    v42 = *v41;
    if (v37 != *v41)
    {
      break;
    }

LABEL_43:
    if (*(v41 + 1) != v38)
    {
      goto LABEL_94;
    }

    if (++v33 == v31 || v33 == v32)
    {
      goto LABEL_21;
    }
  }

  v43 = 0;
  v44 = 1;
  while (v42 != -4096)
  {
    if (v43)
    {
      v45 = 0;
    }

    else
    {
      v45 = v42 == -8192;
    }

    if (v45)
    {
      v43 = v41;
    }

    v46 = v40 + v44++;
    v40 = v46 & v39;
    v41 = v35 + 16 * (v46 & v39);
    v42 = *v41;
    if (v37 == *v41)
    {
      goto LABEL_43;
    }
  }

  if (v43)
  {
    v41 = v43;
  }

  if (4 * v75 + 4 < 3 * v36)
  {
    if (v36 + ~v75 - HIDWORD(v75) > v36 >> 3)
    {
      LODWORD(v75) = v75 + 1;
      if (*v41 == -4096)
      {
LABEL_42:
        *v41 = v37;
        *(v41 + 1) = v38;
        goto LABEL_43;
      }

LABEL_41:
      --HIDWORD(v75);
      goto LABEL_42;
    }
  }

  else
  {
LABEL_50:
    v36 *= 2;
  }

  llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::grow(&v74, v36);
  v35 = v74;
  v36 = v76;
  if (v76)
  {
    v47 = v76 - 1;
    v48 = (v76 - 1) & ((v37 >> 4) ^ (v37 >> 9));
    v41 = v74 + 16 * v48;
    v49 = *v41;
    if (v37 != *v41)
    {
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
          v50 = v41;
        }

        v53 = v48 + v51++;
        v48 = v53 & v47;
        v41 = v74 + 16 * (v53 & v47);
        v49 = *v41;
        if (v37 == *v41)
        {
          goto LABEL_63;
        }
      }

      if (v50)
      {
        v41 = v50;
      }
    }
  }

  else
  {
    v41 = 0;
  }

LABEL_63:
  LODWORD(v75) = v75 + 1;
  if (*v41 == -4096)
  {
    goto LABEL_42;
  }

  goto LABEL_41;
}

uint64_t mlir::OperationEquivalence::isEquivalentTo(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, unint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, unint64_t, uint64_t, unint64_t, void), uint64_t a10)
{
  if (a1 == a2)
  {
    return 1;
  }

  v11 = *(a1 + 48);
  if (v11 != *(a2 + 48))
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v12 = *(a1 + 44);
  v13 = *(a2 + 44);
  if (((v13 ^ v12) & 0x7FFFFF) != 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if ((v12 & 0x800000) != 0)
  {
    v14 = *(a1 + 68);
    if ((v13 & 0x800000) != 0)
    {
      goto LABEL_8;
    }

LABEL_68:
    if (v14)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v14 = 0;
  if ((v13 & 0x800000) == 0)
  {
    goto LABEL_68;
  }

LABEL_8:
  if (v14 != *(a2 + 68))
  {
    return 0;
  }

LABEL_9:
  if (*(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  v65 = a7;
  v17 = a1;
  v18 = a1 + 64;
  v19 = a1 + 64 + 16 * ((v12 >> 23) & 1);
  if (!BYTE3(v12))
  {
    v19 = 0;
  }

  v21 = a2 + 64;
  if (HIBYTE(*(a2 + 44)))
  {
    v22 = a2 + 64 + 16 * ((v13 >> 23) & 1);
  }

  else
  {
    v22 = 0;
  }

  result = (*(*v11 + 168))(v11, v19, v22, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  v25 = a2;
  v26 = v17;
  if ((v65 & 1) == 0 && *(v17 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v64 = v18;
  if (!a9 || (v27 = mlir::Operation::hasTrait<mlir::OpTrait::IsCommutative>(v17), v25 = a2, v26 = v17, !v27))
  {
    if ((*(v26 + 46) & 0x80) != 0)
    {
      v31 = *(v26 + 72);
      v32 = *(v26 + 68);
      v33 = a4;
      if ((*(v25 + 46) & 0x80) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v31 = 0;
      v32 = 0;
      v33 = a4;
      if ((*(v25 + 46) & 0x80) == 0)
      {
        goto LABEL_39;
      }
    }

    if (v32)
    {
      v34 = *(v25 + 68);
      if (v34)
      {
        v35 = v31 + 24;
        v36 = *(v25 + 72) + 24;
        v37 = v32 - 1;
        v38 = v34 - 1;
        while (1)
        {
          if (*v35 != *v36)
          {
            if ((*(*v36 + 8) ^ *(*v35 + 8)) > 7)
            {
              return 0;
            }

            v39 = a3(v33);
            v25 = a2;
            v33 = a4;
            v26 = v17;
            if ((v39 & 1) == 0)
            {
              return 0;
            }
          }

          v40 = v38-- != 0;
          v41 = v40;
          v40 = v37-- != 0;
          if (v40)
          {
            v35 += 32;
            v36 += 32;
            if (v41)
            {
              continue;
            }
          }

          goto LABEL_39;
        }
      }
    }

    goto LABEL_39;
  }

  if ((*(v17 + 46) & 0x80) != 0)
  {
    v28 = *(v17 + 68);
    v29 = *(v17 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    if ((*(a2 + 46) & 0x80) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v28 = 0;
    v29 = 2;
    if ((*(a2 + 46) & 0x80) != 0)
    {
LABEL_22:
      v30 = a9(a10, v29, v28, *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2, *(a2 + 68));
      v25 = a2;
      v26 = v17;
      if ((v30 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_39;
    }
  }

  v61 = a9(a10, v29, v28, 2uLL, 0);
  v25 = a2;
  v26 = v17;
  if ((v61 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  v63 = v21;
  v42 = *(v26 + 36);
  v43 = v26 - 16;
  v44 = *(v25 + 36);
  v45 = v25 - 16;
  if (v42)
  {
    v46 = v43;
  }

  else
  {
    v46 = 0;
  }

  if (v44)
  {
    v47 = v45;
  }

  else
  {
    v47 = 0;
  }

  if (v42 && v44)
  {
    v48 = 0;
    if (a5)
    {
      v49 = v42 - 1;
      v50 = v44 - 1;
      while (1)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v46, v48);
        v52 = mlir::detail::OpResultImpl::getNextResultAtOffset(v47, v48);
        if ((*(v52 + 8) ^ *(NextResultAtOffset + 8)) > 7)
        {
          break;
        }

        a5(a6, NextResultAtOffset, v52);
        if (v49 != v48)
        {
          v53 = v50 == v48++;
          if (!v53)
          {
            continue;
          }
        }

        goto LABEL_59;
      }
    }

    else
    {
      v54 = v42 - 1;
      v55 = v44 - 1;
      while (1)
      {
        v56 = mlir::detail::OpResultImpl::getNextResultAtOffset(v46, v48);
        if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v47, v48) + 8) ^ *(v56 + 8)) > 7)
        {
          break;
        }

        if (v54 != v48)
        {
          v53 = v55 == v48++;
          if (!v53)
          {
            continue;
          }
        }

        goto LABEL_59;
      }
    }

    return 0;
  }

LABEL_59:
  v57 = *(v17 + 44);
  v58 = v57 & 0x7FFFFF;
  if ((v57 & 0x7FFFFF) != 0)
  {
    v59 = ((v64 + 16 * ((v57 >> 23) & 1) + ((v57 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v17 + 40);
  }

  else
  {
    v59 = 0;
    v58 = 0;
  }

  v60 = *(a2 + 44);
  if ((v60 & 0x7FFFFF) != 0)
  {
    if (v58)
    {
      mlir::OperationEquivalence::isRegionEquivalentTo(v59, ((v63 + 16 * ((v60 >> 23) & 1) + ((v60 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), a3, a4, a5, a6, v65, v24, 0, v62);
    }
  }

  return 1;
}

void mlir::OperationEquivalence::isEquivalentTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v9 = v11;
  v10 = v11;
  v8 = v11;
  mlir::OperationEquivalence::isEquivalentTo(a1, a2, llvm::function_ref<llvm::LogicalResult ()(mlir::Value,mlir::Value)>::callback_fn<mlir::OperationEquivalence::isEquivalentTo(mlir::Operation *,mlir::Operation *,mlir::OperationEquivalence::Flags)::$_0>, &v10, llvm::function_ref<void ()(mlir::Value,mlir::Value)>::callback_fn<mlir::OperationEquivalence::isEquivalentTo(mlir::Operation *,mlir::Operation *,mlir::OperationEquivalence::Flags)::$_1>, &v9, a3, a8, llvm::function_ref<llvm::LogicalResult ()(mlir::ValueRange,mlir::ValueRange)>::callback_fn<mlir::OperationEquivalence::isEquivalentTo(mlir::Operation *,mlir::Operation *,mlir::OperationEquivalence::Flags)::$_2>, &v8);
  llvm::deallocate_buffer(v11[0], (16 * v12));
}

ZinCompressedFootprintInfo *mlir::impl::findAttrSorted<mlir::NamedAttribute *>(ZinCompressedFootprintInfo *this, ZinCompressedFootprintInfo *a2, uint64_t a3)
{
  v3 = this;
  v17 = a3;
  v4 = (a2 - this) >> 4;
  if (v4 >= 17)
  {
    AttrData = mlir::OpaqueAttr::getAttrData(&v17);
    v7 = v6;
    while (1)
    {
      v8 = v4 >> 1;
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes((v3 + 16 * (v4 >> 1)));
      v9 = mlir::OpaqueAttr::getAttrData(&CompressedBytes);
      v11 = v10;
      v12 = v7 >= v10 ? v10 : v7;
      if (v12)
      {
        v13 = memcmp(v9, AttrData, v12);
        if (v13)
        {
          break;
        }
      }

      if (v11 == v7)
      {
        return (v3 + 16 * (v4 >> 1));
      }

      if (v11 < v7)
      {
        goto LABEL_3;
      }

LABEL_4:
      v4 = v8;
      if (v8 <= 0)
      {
        return v3;
      }
    }

    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v3 = (v3 + 16 * (v4 >> 1) + 16);
    v8 = v4 + ~v8;
    goto LABEL_4;
  }

  if (this == a2)
  {
    return a2;
  }

  while (ZinCompressedFootprintInfo::GetCompressedBytes(v3) != a3)
  {
    v3 = (v3 + 16);
    if (v3 == a2)
    {
      return a2;
    }
  }

  return v3;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::ValueTypeRange<mlir::ResultRange>,llvm::hash_code>(char *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17 = a2;
  NextResultAtOffset = *a5;
  v11 = a5[1];
  v12 = a5[3];
  if (v11)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, a5[1]);
  }

  mlir::TypeRange::TypeRange(v18, NextResultAtOffset & 0xFFFFFFFFFFFFFFF9 | 4, v12 - v11);
  v13 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(v18[0], 0, v18[0], v18[1]);
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, a3, a4, v13);
  v18[0] = v17;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, v18, v14, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v18[0], v15, a4);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::try_emplace<mlir::Block *>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
  v9 = (*result + 16 * v8);
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
      v9 = (v6 + 16 * (v16 & v7));
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
    llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v17, a2, &v20);
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
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

BOOL ValueEquivalenceCache::checkCommutativeEquivalent(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v97[6] = *MEMORY[0x1E69E9840];
  if (a3 != a5)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 0;
  v88 = a2;
  v89 = a4;
  v8 = a2 & 0xFFFFFFFFFFFFFFF8;
  v9 = (a2 & 0xFFFFFFFFFFFFFFF8) == 0 || (a2 & 6) != 0;
  v10 = (a2 & 0xFFFFFFFFFFFFFFF8) == 0 || (a2 & 6) != 2;
  v11 = (a4 & 6) != 2;
  v12 = a4 & 0xFFFFFFFFFFFFFFF8;
  v13 = (a4 & 0xFFFFFFFFFFFFFFF8) == 0 || (a4 & 6) != 0;
  if ((a4 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    v11 = 1;
  }

  v90 = v11;
  for (i = a3; ; --i)
  {
    if (v9)
    {
      if (v10)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, v7);
        if (!v13)
        {
          goto LABEL_26;
        }
      }

      else
      {
        NextResultAtOffset = *(v8 + 32 * v7 + 24);
        if (!v13)
        {
LABEL_26:
          v16 = *(v12 + 8 * v7);
          if (NextResultAtOffset == v16)
          {
            goto LABEL_32;
          }

          goto LABEL_29;
        }
      }
    }

    else
    {
      NextResultAtOffset = *(v8 + 8 * v7);
      if (!v13)
      {
        goto LABEL_26;
      }
    }

    if (v90)
    {
      v16 = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, v7);
      if (NextResultAtOffset == v16)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v16 = *(v12 + 32 * v7 + 24);
      if (NextResultAtOffset == v16)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v17 = *(a1 + 4);
    if (!v17)
    {
      goto LABEL_15;
    }

    v18 = *a1;
    v19 = 0x9DDFEA08EB382D69 * ((8 * NextResultAtOffset - 0xAE502812AA7333) ^ HIDWORD(NextResultAtOffset));
    v20 = 0x9DDFEA08EB382D69 * (HIDWORD(NextResultAtOffset) ^ (v19 >> 47) ^ v19);
    LODWORD(v19) = -348639895 * ((v20 >> 47) ^ v20);
    v21 = v17 - 1;
    v22 = (v17 - 1) & v19;
    v23 = *(*a1 + 16 * v22);
    if (v23 == NextResultAtOffset)
    {
      break;
    }

    v24 = 1;
    while (v23 != -4096)
    {
      v25 = v22 + v24++;
      v22 = v25 & v21;
      v23 = *(v18 + 16 * v22);
      if (v23 == NextResultAtOffset)
      {
        goto LABEL_31;
      }
    }

LABEL_15:
    if (v16)
    {
      goto LABEL_39;
    }

LABEL_32:
    if (++v7 == a3)
    {
      return 1;
    }
  }

LABEL_31:
  if (*(v18 + 16 * v22 + 8) == v16)
  {
    goto LABEL_32;
  }

LABEL_39:
  v27 = a3 - v7;
  if (a3 == v7)
  {
    return 1;
  }

  if (v7)
  {
    if (v9)
    {
      if (v10)
      {
        v28 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, v7) & 0xFFFFFFFFFFFFFFF9 | 4;
      }

      else
      {
        v28 = (v8 + 32 * v7) | 2;
      }
    }

    else
    {
      v28 = v8 + 8 * v7;
    }

    v88 = v28;
  }

  v95 = v97;
  v96 = 0x600000000;
  if (v27 < 7)
  {
    v29 = v97;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v97, a3 - v7, 8);
    v29 = v95 + 8 * v96;
  }

  v30 = v88 & 0xFFFFFFFFFFFFFFF8;
  if ((v88 & 6) != 0 || !v30)
  {
    if ((v88 & 6) == 2 && v30)
    {
      if (v27 > 0x10 && (v29 >= v30 + 32 * v27 || v30 + 24 >= &v29[v27]))
      {
        if ((v27 & 3) != 0)
        {
          v39 = v27 & 3;
        }

        else
        {
          v39 = 4;
        }

        v37 = v27 - v39;
        v40 = &v29[v27 - v39];
        v41 = (v30 + 88);
        v42 = (v29 + 2);
        v43 = i - v39;
        do
        {
          v44 = v41 - 8;
          v45 = vld4q_f64(v44);
          v46 = vld4q_f64(v41);
          *(v42 - 1) = v45;
          *v42 = v46;
          v41 += 16;
          v42 += 2;
          v43 -= 4;
        }

        while (v43);
        v29 = v40;
      }

      else
      {
        v37 = 0;
      }

      v47 = i - v37;
      v48 = (v30 + 32 * v37 + 24);
      do
      {
        v49 = *v48;
        v48 += 4;
        *v29++ = v49;
        --v47;
      }

      while (v47);
    }

    else
    {
      v38 = 0;
      do
      {
        v29[v38] = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, v38);
        ++v38;
      }

      while (i != v38);
    }
  }

  else
  {
    v31 = 0;
    if (v27 < 4 || v29 - v30 <= 0x1F)
    {
      v32 = v29;
    }

    else
    {
      v31 = v27 & 0xFFFFFFFFFFFFFFFCLL;
      v32 = &v29[v27 & 0xFFFFFFFFFFFFFFFCLL];
      v33 = (v30 + 16);
      v34 = v29 + 2;
      v35 = i & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v36 = *v33;
        *(v34 - 1) = *(v33 - 1);
        *v34 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 4;
      }

      while (v35);
      if (v27 == v31)
      {
        goto LABEL_80;
      }
    }

    do
    {
      *v32++ = *(v30 + 8 * v31++);
    }

    while (i != v31);
  }

LABEL_80:
  v50 = (v96 + v27);
  v85 = v96 + v27 == 0;
  LODWORD(v96) = v50;
  v51 = (v95 + 8 * v50);
  v52 = 126 - 2 * __clz(v50);
  if (v85)
  {
    v53 = 0;
  }

  else
  {
    v53 = v52;
  }

  std::__introsort<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(v95, v51, &v92, v53, 1);
  if (v7)
  {
    if (v13)
    {
      if (v90)
      {
        v54 = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, v7) & 0xFFFFFFFFFFFFFFF9 | 4;
      }

      else
      {
        v54 = (v12 + 32 * v7) | 2;
      }
    }

    else
    {
      v54 = v12 + 8 * v7;
    }

    v89 = v54;
  }

  v92 = v94;
  v93 = 0x600000000;
  if (v27 < 7)
  {
    v55 = v94;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v94, a3 - v7, 8);
    v55 = v92 + 8 * v93;
  }

  v56 = v89 & 0xFFFFFFFFFFFFFFF8;
  if ((v89 & 6) != 0 || !v56)
  {
    if ((v89 & 6) == 2 && v56)
    {
      if (v27 > 0x10 && (v55 >= v56 + 32 * v27 || v56 + 24 >= &v55[8 * v27]))
      {
        if ((v27 & 3) != 0)
        {
          v66 = v27 & 3;
        }

        else
        {
          v66 = 4;
        }

        v63 = v27 - v66;
        v67 = &v55[8 * (v27 - v66)];
        v68 = (v56 + 88);
        v69 = (v55 + 16);
        v70 = i - v66;
        do
        {
          v71 = v68 - 8;
          v72 = vld4q_f64(v71);
          v73 = vld4q_f64(v68);
          *(v69 - 1) = v72;
          *v69 = v73;
          v68 += 16;
          v69 += 2;
          v70 -= 4;
        }

        while (v70);
        v55 = v67;
      }

      else
      {
        v63 = 0;
      }

      v74 = i - v63;
      v75 = (v56 + 32 * v63 + 24);
      do
      {
        v76 = *v75;
        v75 += 4;
        *v55 = v76;
        v55 += 8;
        --v74;
      }

      while (v74);
    }

    else
    {
      v64 = 0;
      v65 = v7 - a3;
      do
      {
        *&v55[8 * v64] = mlir::detail::OpResultImpl::getNextResultAtOffset(v56, v64);
        ++v64;
      }

      while (v65 + v64);
    }
  }

  else
  {
    v57 = 0;
    if (v27 < 4 || &v55[-v56] <= 0x1F)
    {
      v58 = v55;
    }

    else
    {
      v57 = v27 & 0xFFFFFFFFFFFFFFFCLL;
      v58 = &v55[8 * (v27 & 0xFFFFFFFFFFFFFFFCLL)];
      v59 = (v56 + 16);
      v60 = v55 + 16;
      v61 = i & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v62 = *v59;
        *(v60 - 1) = *(v59 - 1);
        *v60 = v62;
        v59 += 2;
        v60 += 2;
        v61 -= 4;
      }

      while (v61);
      if (v27 == v57)
      {
        goto LABEL_121;
      }
    }

    do
    {
      *v58 = *(v56 + 8 * v57);
      v58 += 8;
      ++v57;
    }

    while (i != v57);
  }

LABEL_121:
  v77 = (v93 + v27);
  v85 = v93 + v27 == 0;
  LODWORD(v93) = v77;
  v78 = (v92 + 8 * v77);
  v79 = 126 - 2 * __clz(v77);
  if (v85)
  {
    v80 = 0;
  }

  else
  {
    v80 = v79;
  }

  std::__introsort<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(v92, v78, &v91, v80, 1);
  if (v96 != v93)
  {
    result = 0;
    v81 = v92;
    goto LABEL_134;
  }

  v81 = v92;
  if (v96)
  {
    v82 = 0;
    do
    {
      v83 = *(v95 + v82);
      v84 = *(v92 + v82);
      result = v83 == v84;
      v85 = v83 != v84 || 8 * v96 - 8 == v82;
      v82 += 8;
    }

    while (!v85);
LABEL_134:
    if (v81 != v94)
    {
LABEL_135:
      v86 = result;
      free(v81);
      result = v86;
    }
  }

  else
  {
    result = 1;
    if (v92 != v94)
    {
      goto LABEL_135;
    }
  }

  if (v95 != v97)
  {
    v87 = result;
    free(v95);
    return v87;
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v71 = *(a2 - 1);
      v72 = *v10;
      if (v71 < *v10)
      {
        *v10 = v71;
        *(a2 - 1) = v72;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v81 = v10 + 1;
      v83 = v10 == a2 || v81 == a2;
      if (a5)
      {
        if (!v83)
        {
          v84 = 0;
          v85 = v10;
          do
          {
            v88 = *v85;
            v87 = v85[1];
            v85 = v81;
            if (v87 < v88)
            {
              v89 = v84;
              do
              {
                *(v10 + v89 + 8) = v88;
                if (!v89)
                {
                  v86 = v10;
                  goto LABEL_125;
                }

                v88 = *(v10 + v89 - 8);
                v89 -= 8;
              }

              while (v87 < v88);
              v86 = (v10 + v89 + 8);
LABEL_125:
              *v86 = v87;
            }

            v81 = v85 + 1;
            v84 += 8;
          }

          while (v85 + 1 != a2);
        }
      }

      else if (!v83)
      {
        do
        {
          v94 = *v9;
          v93 = v9[1];
          v9 = v81;
          if (v93 < v94)
          {
            do
            {
              *v81 = v94;
              v94 = *(v81 - 2);
              --v81;
            }

            while (v93 < v94);
            *v81 = v93;
          }

          v81 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,mlir::Value*>(v10, a2, a2);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v16 = *v10;
      v17 = v10[v12];
      if (*v10 < v17)
      {
        if (v13 < v16)
        {
          v10[v12] = v13;
          goto LABEL_37;
        }

        v10[v12] = v16;
        *v10 = v17;
        v29 = *(a2 - 1);
        if (v29 < v17)
        {
          *v10 = v29;
LABEL_37:
          *(a2 - 1) = v17;
        }

LABEL_38:
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v13 >= v16)
      {
        goto LABEL_38;
      }

      *v10 = v13;
      *(a2 - 1) = v16;
      v20 = v10[v12];
      if (*v10 >= v20)
      {
        goto LABEL_38;
      }

      v10[v12] = *v10;
      *v10 = v20;
      --a4;
      v21 = v20;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) < v21)
      {
        goto LABEL_62;
      }

      if (v21 >= *(a2 - 1))
      {
        v56 = (v10 + 1);
        do
        {
          v10 = v56;
          if (v56 >= a2)
          {
            break;
          }

          v56 += 8;
        }

        while (v21 >= *v10);
      }

      else
      {
        do
        {
          v55 = v10[1];
          ++v10;
        }

        while (v21 >= v55);
      }

      v57 = a2;
      if (v10 < a2)
      {
        v57 = a2;
        do
        {
          v58 = *--v57;
        }

        while (v21 < v58);
      }

      if (v10 < v57)
      {
        v59 = *v10;
        v60 = *v57;
        do
        {
          *v10 = v60;
          *v57 = v59;
          do
          {
            v61 = v10[1];
            ++v10;
            v59 = v61;
          }

          while (v21 >= v61);
          do
          {
            v62 = *--v57;
            v60 = v62;
          }

          while (v21 < v62);
        }

        while (v10 < v57);
      }

      v63 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v63;
      }

      a5 = 0;
      *v63 = v21;
    }

    else
    {
      v14 = v10[v12];
      v15 = *v10;
      if (v14 >= *v10)
      {
        if (v13 < v14)
        {
          v10[v12] = v13;
          *(a2 - 1) = v14;
          v18 = v10[v12];
          v19 = *v10;
          if (v18 < *v10)
          {
            *v10 = v18;
            v10[v12] = v19;
          }
        }
      }

      else
      {
        if (v13 >= v14)
        {
          *v10 = v14;
          v10[v12] = v15;
          v22 = *(a2 - 1);
          if (v22 >= v15)
          {
            goto LABEL_29;
          }

          v10[v12] = v22;
        }

        else
        {
          *v10 = v13;
        }

        *(a2 - 1) = v15;
      }

LABEL_29:
      v23 = v12 - 1;
      v24 = v10[v12 - 1];
      v25 = v10[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          v10[v23] = v26;
          *(a2 - 2) = v24;
          v27 = v10[v23];
          v28 = v10[1];
          if (v27 < v28)
          {
            v10[1] = v27;
            v10[v23] = v28;
          }
        }
      }

      else
      {
        if (v26 >= v24)
        {
          v10[1] = v24;
          v10[v23] = v25;
          v30 = *(a2 - 2);
          if (v30 >= v25)
          {
            goto LABEL_43;
          }

          v10[v23] = v30;
        }

        else
        {
          v10[1] = v26;
        }

        *(a2 - 2) = v25;
      }

LABEL_43:
      v31 = v12 + 1;
      v32 = v10[v12 + 1];
      v33 = v10[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v32)
        {
          v10[v31] = v34;
          *(a2 - 3) = v32;
          v35 = v10[v31];
          v36 = v10[2];
          if (v35 < v36)
          {
            v10[2] = v35;
            v10[v31] = v36;
          }
        }
      }

      else
      {
        if (v34 >= v32)
        {
          v10[2] = v32;
          v10[v31] = v33;
          v37 = *(a2 - 3);
          if (v37 >= v33)
          {
            goto LABEL_52;
          }

          v10[v31] = v37;
        }

        else
        {
          v10[2] = v34;
        }

        *(a2 - 3) = v33;
      }

LABEL_52:
      v38 = v10[v12];
      v39 = v10[v23];
      v40 = v10[v31];
      if (v38 >= v39)
      {
        if (v40 < v38)
        {
          v10[v12] = v40;
          v10[v31] = v38;
          v38 = v40;
          if (v40 < v39)
          {
            v10[v23] = v40;
            v10[v12] = v39;
            v38 = v39;
          }
        }
      }

      else if (v40 >= v38)
      {
        v10[v23] = v38;
        v10[v12] = v39;
        v38 = v39;
        if (v40 < v39)
        {
          v10[v12] = v40;
          v10[v31] = v39;
          v38 = v40;
        }
      }

      else
      {
        v10[v23] = v40;
        v10[v31] = v39;
      }

      v41 = *v10;
      *v10 = v38;
      v10[v12] = v41;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v42 = 0;
      do
      {
        v43 = v10[++v42];
      }

      while (v43 < v21);
      v44 = &v10[v42];
      v45 = a2;
      if (v42 == 1)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *--v45;
        }

        while (v47 >= v21);
      }

      else
      {
        do
        {
          v46 = *--v45;
        }

        while (v46 >= v21);
      }

      if (v44 >= v45)
      {
        v53 = v44 - 1;
        if (v44 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v53;
        goto LABEL_80;
      }

      v48 = *v45;
      v49 = &v10[v42];
      v50 = v45;
      do
      {
        *v49 = v48;
        *v50 = v43;
        do
        {
          v51 = v49[1];
          ++v49;
          v43 = v51;
        }

        while (v51 < v21);
        do
        {
          v52 = *--v50;
          v48 = v52;
        }

        while (v52 >= v21);
      }

      while (v49 < v50);
      v53 = v49 - 1;
      if (v49 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v53 = v21;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*>(v10, v53);
      v10 = v53 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*>(v53 + 1, a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(v9, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v53 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v76 = v10 + 1;
      v77 = v10[1];
      v78 = v10 + 2;
      v79 = v10[2];
      v80 = *v10;
      if (v77 >= *v10)
      {
        if (v79 < v77)
        {
          *v76 = v79;
          *v78 = v77;
          if (v79 < v80)
          {
            *v10 = v79;
            v92 = v10 + 1;
            goto LABEL_171;
          }

LABEL_172:
          v79 = v77;
        }
      }

      else
      {
        if (v79 < v77)
        {
          *v10 = v79;
          goto LABEL_170;
        }

        *v10 = v77;
        v10[1] = v80;
        if (v79 < v80)
        {
          *v76 = v79;
LABEL_170:
          v92 = v10 + 2;
          v77 = v80;
LABEL_171:
          *v92 = v80;
          goto LABEL_172;
        }
      }

      v100 = *(a2 - 1);
      if (v100 < v79)
      {
        *v78 = v100;
        *(a2 - 1) = v79;
        v101 = *v78;
        v102 = *v76;
        if (v101 < v102)
        {
          v10[1] = v101;
          v10[2] = v102;
          v103 = *v10;
          if (v101 < *v10)
          {
            *v10 = v101;
            v10[1] = v103;
          }
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v64 = v10 + 1;
      v65 = v10[1];
      v67 = v10 + 2;
      v66 = v10[2];
      v68 = *v10;
      if (v65 >= *v10)
      {
        if (v66 >= v65)
        {
          v70 = *v10;
          v68 = v10[1];
          v95 = v10[3];
          if (v95 < v66)
          {
            goto LABEL_155;
          }

          goto LABEL_159;
        }

        *v64 = v66;
        *v67 = v65;
        if (v66 < v68)
        {
          *v10 = v66;
          v69 = v10 + 1;
          v70 = v66;
          v66 = v68;
          goto LABEL_154;
        }

        v70 = v68;
        v68 = v66;
        v66 = v65;
        v95 = v10[3];
        if (v95 >= v66)
        {
          goto LABEL_159;
        }

LABEL_155:
        v10[2] = v95;
        v10[3] = v66;
        if (v95 < v68)
        {
          *v64 = v95;
          *v67 = v68;
          if (v95 < v70)
          {
            *v10 = v95;
            v10[1] = v70;
          }
        }
      }

      else
      {
        if (v66 < v65)
        {
          *v10 = v66;
          v69 = v10 + 2;
          v70 = v66;
          v66 = v65;
          goto LABEL_153;
        }

        *v10 = v65;
        v10[1] = v68;
        if (v66 >= v68)
        {
          v70 = v65;
          v95 = v10[3];
          if (v95 < v66)
          {
            goto LABEL_155;
          }
        }

        else
        {
          *v64 = v66;
          v69 = v10 + 2;
          v70 = v65;
LABEL_153:
          v65 = v68;
LABEL_154:
          *v69 = v68;
          v68 = v66;
          v66 = v65;
          v95 = v10[3];
          if (v95 < v66)
          {
            goto LABEL_155;
          }
        }

LABEL_159:
        v66 = v95;
      }

      v96 = *(a2 - 1);
      if (v96 >= v66)
      {
        return result;
      }

      v10[3] = v96;
      *(a2 - 1) = v66;
      v97 = v10[2];
      v90 = v10[3];
      if (v90 >= v97)
      {
        return result;
      }

      v10[2] = v90;
      v10[3] = v97;
      v98 = v10[1];
      if (v90 >= v98)
      {
        return result;
      }

      v10[1] = v90;
      v10[2] = v98;
      v91 = *v10;
      if (v90 >= *v10)
      {
        return result;
      }

LABEL_164:
      *v10 = v90;
      v10[1] = v91;
      return result;
    }

    goto LABEL_10;
  }

  v73 = *v10;
  v74 = v10[1];
  v75 = *(a2 - 1);
  if (v74 < *v10)
  {
    if (v75 >= v74)
    {
      *v10 = v74;
      v10[1] = v73;
      v99 = *(a2 - 1);
      if (v99 >= v73)
      {
        return result;
      }

      v10[1] = v99;
    }

    else
    {
      *v10 = v75;
    }

    *(a2 - 1) = v73;
    return result;
  }

  if (v75 < v74)
  {
    v10[1] = v75;
    *(a2 - 1) = v74;
    v91 = *v10;
    v90 = v10[1];
    if (v90 < *v10)
    {
      goto LABEL_164;
    }
  }

  return result;
}